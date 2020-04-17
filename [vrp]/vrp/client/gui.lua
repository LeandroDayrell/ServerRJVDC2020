
-- pause
AddEventHandler("vRP:pauseChange", function(paused)
  SendNUIMessage({act="pause_change", paused=paused})
end)

-- MENU

local menu_state = {}

function tvRP.openMenuData(menudata)
  SendNUIMessage({act="open_menu", menudata = menudata})
end

function tvRP.closeMenu()
  SendNUIMessage({act="close_menu"})
end

-- return menu state
--- opened: boolean
function tvRP.getMenuState()
  return menu_state
end

-- PROMPT

function tvRP.prompt(title,default_text)
  SendNUIMessage({act="prompt",title=title,text=tostring(default_text)})
  SetNuiFocus(true)
end

-- REQUEST

function tvRP.request(id,text,time)
  SendNUIMessage({act="request",id=id,text=tostring(text),time = time})
  tvRP.playSound("HUD_MINI_GAME_SOUNDSET","5_SEC_WARNING")
end

-- gui menu events
RegisterNUICallback("menu",function(data,cb)
  if data.act == "close" then
    vRPserver._closeMenu(data.id)
  elseif data.act == "valid" then
    vRPserver._validMenuChoice(data.id,data.choice,data.mod)
  end
end)

RegisterNUICallback("menu_state",function(data,cb)
  menu_state = data
end)

-- gui prompt event
RegisterNUICallback("prompt",function(data,cb)
  if data.act == "close" then
    SetNuiFocus(false)
    SetNuiFocus(false)
    vRPserver._promptResult(data.result)
  end
end)

-- gui request event
RegisterNUICallback("request",function(data,cb)
  if data.act == "response" then
    vRPserver._requestResult(data.id,data.ok)
  end
end)

-- ANNOUNCE

-- add an announce to the queue
-- background: image url (800x150)
-- content: announce html content
function tvRP.announce(background,content)
  SendNUIMessage({act="announce",background=background,content=content})
end

-- init
RegisterNUICallback("init",function(data,cb) -- NUI initialized
  SendNUIMessage({act="cfg",cfg=cfg.gui}) -- send cfg
  TriggerEvent("vRP:NUIready")
end)

-- PROGRESS BAR

-- create/update a progress bar
function tvRP.setProgressBar(name,anchor,text,r,g,b,value)
  local pbar = {name=name,anchor=anchor,text=text,r=r,g=g,b=b,value=value}

  -- default values
  if pbar.value == nil then pbar.value = 0 end

  SendNUIMessage({act="set_pbar",pbar = pbar})
end

-- set progress bar value in percent
function tvRP.setProgressBarValue(name,value)
  SendNUIMessage({act="set_pbar_val", name = name, value = value})
end

-- set progress bar text
function tvRP.setProgressBarText(name,text)
  SendNUIMessage({act="set_pbar_text", name = name, text = text})
end

-- remove a progress bar
function tvRP.removeProgressBar(name)
  SendNUIMessage({act="remove_pbar", name = name})
end

-- DIV

-- set a div
-- css: plain global css, the div class is "div_name"
-- content: html content of the div
function tvRP.setDiv(name,css,content)
  SendNUIMessage({act="set_div", name = name, css = css, content = content})
end

-- set the div css
function tvRP.setDivCss(name,css)
  SendNUIMessage({act="set_div_css", name = name, css = css})
end

-- set the div content
function tvRP.setDivContent(name,content)
  SendNUIMessage({act="set_div_content", name = name, content = content})
end

-- execute js for the div
-- js variables: this is the div
function tvRP.divExecuteJS(name,js)
  SendNUIMessage({act="div_execjs", name = name, js = js})
end

-- remove the div
function tvRP.removeDiv(name)
  SendNUIMessage({act="remove_div", name = name})
end

-- AUDIO

-- play audio source (once)
--- url: valid audio HTML url (ex: .ogg/.wav/direct ogg-stream url)
--- volume: 0-1 
--- x,y,z: position (omit for unspatialized)
--- max_dist  (omit for unspatialized)
function tvRP.playAudioSource(url, volume, x, y, z, max_dist)
  SendNUIMessage({act="play_audio_source", url = url, x = x, y = y, z = z, volume = volume, max_dist = max_dist})
end

-- set named audio source (looping)
--- name: source name
--- url: valid audio HTML url (ex: .ogg/.wav/direct ogg-stream url)
--- volume: 0-1 
--- x,y,z: position (omit for unspatialized)
--- max_dist  (omit for unspatialized)
function tvRP.setAudioSource(name, url, volume, x, y, z, max_dist)
  SendNUIMessage({act="set_audio_source", name = name, url = url, x = x, y = y, z = z, volume = volume, max_dist = max_dist})
end

-- remove named audio source
function tvRP.removeAudioSource(name)
  SendNUIMessage({act="remove_audio_source", name = name})
end

local listener_wait = math.ceil(1/cfg.audio_listener_rate*1000)

Citizen.CreateThread(function()
  while true do
    Citizen.Wait(listener_wait)


    local x,y,z
    if cfg.audio_listener_on_player then
      local ped = GetPlayerPed(PlayerId())
      x,y,z = table.unpack(GetPedBoneCoords(ped, 31086, 0,0,0)) -- head pos
    else
      x,y,z = table.unpack(GetGameplayCamCoord())
    end

    local fx,fy,fz = tvRP.getCamDirection()
    SendNUIMessage({act="audio_listener", x = x, y = y, z = z, fx = fx, fy = fy, fz = fz})
  end
end)

-- VoIP

local channel_callbacks = {}
local voice_channels = {}

function tvRP.setPeerConfiguration(config)
  SendNUIMessage({act="set_peer_configuration", config=config})
end

-- request connection to another player for a specific channel
function tvRP.connectVoice(channel, player)
  -- register channel/player
  local _channel = voice_channels[channel]
  if not _channel then
    _channel = {}
    voice_channels[channel] = _channel
  end

  if _channel[player] == nil then -- check if not already connecting/connected
    SendNUIMessage({act="connect_voice", channel=channel, player=player})
  end
end

-- disconnect from another player for a specific channel
-- player: nil to disconnect from all players
function tvRP.disconnectVoice(channel, player)
  SendNUIMessage({act="disconnect_voice", channel=channel, player=player})
end

-- register callbacks for a specific channel
--- on_offer(player): should return true to accept the connection
--- on_connect(player, is_origin): is_origin is true if it's the local peer (not an answer)
--- on_disconnect(player)
function tvRP.registerVoiceCallbacks(channel, on_offer, on_connect, on_disconnect)
  if not channel_callbacks[channel] then
    channel_callbacks[channel] = {on_offer, on_connect, on_disconnect}
  else
    print("[vRP] VoIP channel callbacks for <"..channel.."> already registered.")
  end
end

-- check if there is an active connection
function tvRP.isVoiceConnected(channel, player)
  local channel = voice_channels[channel]
  if channel then
    return channel[player] == 1
  end
end

-- check if there is a pending connection
function tvRP.isVoiceConnecting(channel, player)
  local channel = voice_channels[channel]
  if channel then
    return channel[player] == 0
  end
end

-- return connections (map of channel => map of player => state (0-1))
function tvRP.getVoiceChannels()
  return voice_channels
end

-- enable/disable speaking
--- player: nil to affect all channel peers
--- active: true/false 
function tvRP.setVoiceState(channel, player, active)
  SendNUIMessage({act="set_voice_state", channel=channel, player=player, active=active})
end

-- configure channel (can only be called once per channel)
--- config:
---- effects: map of name => true/options
----- spatialization => { max_dist: ..., rolloff: ..., dist_model: ... } (per peer effect)
----- biquad => { frequency: ..., Q: ..., type: ..., detune: ..., gain: ...} see WebAudioAPI BiquadFilter
------ freq = 1700, Q = 3, type = "bandpass" (idea for radio effect)
----- gain => { gain: ... }
function tvRP.configureVoice(channel, config)
  SendNUIMessage({act="configure_voice", channel=channel, config=config})
end

RegisterNUICallback("audio",function(data,cb)
  if data.act == "voice_connected" then
    -- register channel/player
    local channel = voice_channels[data.channel]
    if not channel then
      channel = {}
      voice_channels[data.channel] = channel
    end
    channel[data.player] = 1 -- connected

    -- callback
    local cbs = channel_callbacks[data.channel]
    if cbs then
      local cb = cbs[2]
      if cb then cb(data.player, data.origin) end
    end
  elseif data.act == "voice_disconnected" then
    -- unregister channel/player
    local channel = voice_channels[data.channel]
    if channel then
      channel[data.player] = nil
    end

    -- callback
    local cbs = channel_callbacks[data.channel]
    if cbs then
      local cb = cbs[3]
      if cb then cb(data.player) end
    end
  elseif data.act == "voice_peer_signal" then
    vRPserver._signalVoicePeer(data.player, data.data)
  end
end)

-- receive voice peer signal
function tvRP.signalVoicePeer(player, data)
  if data.sdp_offer then -- check offer
    -- register channel/player
    local channel = voice_channels[data.channel]
    if not channel then
      channel = {}
      voice_channels[data.channel] = channel
    end

    if channel[player] == nil then -- check if not already connecting
      local cbs = channel_callbacks[data.channel]
      if cbs then
        local cb = cbs[1]
        if cb and cb(player) then
          channel[player] = 0 -- wait connection
          SendNUIMessage({act="voice_peer_signal", player=player, data=data})
        end
      end
    end
  else -- other signal
    SendNUIMessage({act="voice_peer_signal", player=player, data=data})
  end
end

local speaking = false
function tvRP.isSpeaking()
  return speaking
end

if cfg.vrp_voip then -- setup voip world channel
  -- world channel behavior
  tvRP.registerVoiceCallbacks("world", function(player)
    print("(vRPvoice-world) requested by "..player)

    -- check connection distance

    local pid = PlayerId()
    local px,py,pz = tvRP.getPosition()

    local cplayer = GetPlayerFromServerId(player)

    if NetworkIsPlayerConnected(cplayer) then
      local oped = GetPlayerPed(cplayer)
      local x,y,z = table.unpack(GetEntityCoords(oped,true))

      local distance = GetDistanceBetweenCoords(x,y,z,px,py,pz,true)
      return (distance <= cfg.voip_proximity*1.5) -- valid connection
    end
  end,
  function(player, is_origin)
    print("(vRPvoice-world) connected to "..player)
    tvRP.setVoiceState("world", nil, speaking)
  end,
  function(player)
    print("(vRPvoice-world) disconnected from "..player)
  end)

  AddEventHandler("vRP:NUIready", function()
    -- world channel config
    tvRP.configureVoice("world", cfg.world_voice_config)
  end)
end



-- detect players near, give positions to AudioEngine
Citizen.CreateThread(function()
  local n = 0
  local ns = math.ceil(cfg.voip_interval/listener_wait) -- connect/disconnect every x milliseconds

  while true do
    Citizen.Wait(listener_wait)

    n = n+1
    local voip_check = (n >= ns)
    if voip_check then n = 0 end

    local pid = PlayerId()
    local spid = GetPlayerServerId(pid)
    local px,py,pz = tvRP.getPosition()

    local positions = {}

    local players = tvRP.getPlayers()
    for k,v in pairs(players) do
      local player = GetPlayerFromServerId(k)

      if player ~= pid and NetworkIsPlayerConnected(player) then
        local oped = GetPlayerPed(player)
        local x,y,z = table.unpack(GetPedBoneCoords(oped, 31086, 0,0,0)) -- head pos
        positions[k] = {x,y,z} -- add position

        if cfg.vrp_voip and voip_check then -- vRP voip detection/connection
          local distance = GetDistanceBetweenCoords(x,y,z,px,py,pz,true)
          local in_radius = (distance <= cfg.voip_proximity)
          local linked = tvRP.isVoiceConnected("world", k)
          local initiator = (spid < k)
          if in_radius and not linked and initiator then -- join radius
            tvRP.connectVoice("world", k)
          elseif not in_radius and linked then -- leave radius
            tvRP.disconnectVoice("world", k)
          end
        end
      end
    end

    positions._ = true -- prevent JS array type
    SendNUIMessage({act="set_player_positions", positions=positions})
  end
end)

-- CONTROLS/GUI

local paused = false

function tvRP.isPaused()
  return paused
end

-- gui controls (from cellphone)
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
    -- menu controls
    if IsControlJustPressed(table.unpack(cfg.controls.phone.up)) then SendNUIMessage({act="event",event="UP"}) end
    if IsControlJustPressed(table.unpack(cfg.controls.phone.down)) then SendNUIMessage({act="event",event="DOWN"}) end
    if IsControlJustPressed(table.unpack(cfg.controls.phone.left)) then SendNUIMessage({act="event",event="LEFT"}) end
    if IsControlJustPressed(table.unpack(cfg.controls.phone.right)) then SendNUIMessage({act="event",event="RIGHT"}) end
    if IsControlJustPressed(table.unpack(cfg.controls.phone.select)) then SendNUIMessage({act="event",event="SELECT"}) end
    if IsControlJustPressed(table.unpack(cfg.controls.phone.cancel)) then SendNUIMessage({act="event",event="CANCEL"}) end

    -- open general menu
    if IsControlJustPressed(table.unpack(cfg.controls.phone.open)) and (not tvRP.isInComa() or not cfg.coma_disable_menu) and (not tvRP.isHandcuffed() or not cfg.handcuff_disable_menu) and not menu_state.opened then vRPserver._openMainMenu() end

    -- F5,F6 (default: control michael, control franklin)
    if IsControlJustPressed(table.unpack(cfg.controls.request.yes)) then SendNUIMessage({act="event",event="F5"}) end
    if IsControlJustPressed(table.unpack(cfg.controls.request.no)) then SendNUIMessage({act="event",event="F6"}) end

    -- pause events
    local pause_menu = IsPauseMenuActive()
    if pause_menu and not paused then
      paused = true
      TriggerEvent("vRP:pauseChange", paused)
    elseif not pause_menu and paused then
      paused = false
      TriggerEvent("vRP:pauseChange", paused)
    end

    -- voip/speaking
    local old_speaking = speaking
    speaking = IsControlPressed(1,249)

    -- voip
    if cfg.vrp_voip then
      if old_speaking ~= speaking then
        tvRP.setVoiceState("world", nil, speaking)
      end
    end
  end
end)



-------------------


local apontar = false
local object = nil

function tvRP.loadAnimSet(dict)
	RequestAnimSet(dict)
	while not HasAnimSetLoaded(dict) do
		Citizen.Wait(10)
	end
	SetPedMovementClipset(PlayerPedId(),dict,0.25)
end

function tvRP.CarregarAnim(dict)
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(10)
	end
end

function tvRP.CarregarObjeto(dict,anim,prop,flag,mao,altura,pos1,pos2,pos3)
	local ped = PlayerPedId()

	RequestModel(GetHashKey(prop))
	while not HasModelLoaded(GetHashKey(prop)) do
		Citizen.Wait(10)
	end

	if altura then
		local coords = GetOffsetFromEntityInWorldCoords(ped,0.0,0.0,-5.0)
		object = CreateObject(GetHashKey(prop),coords.x,coords.y,coords.z,true,true,true)
		SetEntityCollision(object,false,false)
		AttachEntityToEntity(object,ped,GetPedBoneIndex(ped,mao),altura,pos1,pos2,pos3,260.0,60.0,true,true,false,true,1,true)
	else
		tvRP.CarregarAnim(dict)
		TaskPlayAnim(ped,dict,anim,3.0,3.0,-1,flag,0,0,0,0)
		local coords = GetOffsetFromEntityInWorldCoords(ped,0.0,0.0,-5.0)
		object = CreateObject(GetHashKey(prop),coords.x,coords.y,coords.z,true,true,true)
		SetEntityCollision(object,false,false)
		AttachEntityToEntity(object,ped,GetPedBoneIndex(ped,mao),0.0,0.0,0.0,0.0,0.0,0.0,false,false,false,false,2,true)
	end
	SetEntityAsMissionEntity(object,true,true)
end

function tvRP.DeletarObjeto()
	tvRP.stopAnim(true)
	TriggerEvent("binoculos")
	if DoesEntityExist(object) then
		DetachEntity(object,false,false)
		TriggerServerEvent("trydeleteobj",ObjToNet(object))
		object = nil
	end
end



Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		local ped = PlayerPedId()
		if menu_state.opened then
			DisableControlAction(0,75)
		end
		if IsControlJustPressed(0,172) then SendNUIMessage({ act = "event", event = "UP" }) if menu_state.opened then tvRP.playSound("NAV_UP_DOWN","HUD_FRONTEND_DEFAULT_SOUNDSET") end end
		if IsControlJustPressed(0,173) then SendNUIMessage({ act = "event", event = "DOWN" }) if menu_state.opened then tvRP.playSound("NAV_UP_DOWN","HUD_FRONTEND_DEFAULT_SOUNDSET") end end
		if IsControlJustPressed(0,174) then SendNUIMessage({ act = "event", event = "LEFT" }) if menu_state.opened then tvRP.playSound("NAV_LEFT_RIGHT","HUD_FRONTEND_DEFAULT_SOUNDSET") end end
		if IsControlJustPressed(0,175) then SendNUIMessage({ act = "event", event = "RIGHT" }) if menu_state.opened then tvRP.playSound("NAV_LEFT_RIGHT","HUD_FRONTEND_DEFAULT_SOUNDSET") end end
		if IsControlJustPressed(0,176) then SendNUIMessage({ act = "event", event = "SELECT" }) if menu_state.opened then tvRP.playSound("SELECT","HUD_FRONTEND_DEFAULT_SOUNDSET") end end
		if IsControlJustPressed(0,177) then SendNUIMessage({ act = "event", event = "CANCEL" }) end
		if IsControlJustPressed(0,246) then SendNUIMessage({ act = "event", event = "Y" }) end
		if IsControlJustPressed(0,303) then SendNUIMessage({ act = "event", event = "U" }) end

		-- AGUARDAR (F1)
		if IsControlJustPressed(0,288) then
			if not IsPedInAnyVehicle(ped) and GetEntityHealth(ped) > 100 and not menu_state.opened and not menu_celular then
				if IsEntityPlayingAnim(ped,"anim@heists@heist_corona@single_team","single_team_loop_boss",3) then
					tvRP.DeletarObjeto()
				else
					tvRP.playAnim(true,{{"anim@heists@heist_corona@single_team","single_team_loop_boss"}},true)
				end
        	end
		end

		-- DEDO DO MEIO (F3)
		--if IsControlJustPressed(0,170) then
		--	if not IsPedInAnyVehicle(ped) and GetEntityHealth(ped) > 100 and not menu_state.opened and not menu_celular then
		--		if IsEntityPlayingAnim(ped,"anim@mp_player_intupperfinger","idle_a_fp",3) then
		--			tvRP.DeletarObjeto()
		--		else
		--			tvRP.playAnim(true,{{"anim@mp_player_intupperfinger","idle_a_fp"}},true)
		--		end
        --	end
		--end

		-- FALAR NO RADINHO (F5)
		if IsControlJustPressed(0,166) then
			if not IsPedInAnyVehicle(ped) and GetEntityHealth(ped) > 100 and not menu_state.opened and not menu_celular then
				if IsEntityPlayingAnim(ped,"random@arrests","generic_radio_enter",3) then
					tvRP.DeletarObjeto()
				else
					tvRP.CarregarAnim("random@arrests")
					TaskPlayAnim(ped,"random@arrests","generic_radio_enter",3.0,3.0,-1,50,5.0,0,0,0)
				end
        	end
		end

		-- ASSOBIAR (ARROW DOWN)
		if IsControlJustPressed(0,187) then
			if not IsPedInAnyVehicle(ped) and GetEntityHealth(ped) > 100 and not menu_state.opened and not menu_celular then
				tvRP.playAnim(true,{{"rcmnigel1c","hailing_whistle_waive_a"}},false)
        	end
		end

		-- JOIA (ARROW LEFT)
		if IsControlJustPressed(0,189) then
			if not IsPedInAnyVehicle(ped) and GetEntityHealth(ped) > 100 and not menu_state.opened and not menu_celular then
				tvRP.playAnim(true,{{"anim@mp_player_intupperthumbs_up","enter"}},false)
        	end
		end

		-- FACEPALM (ARROW RIGHT)
		if IsControlJustPressed(0,190) then
			if not IsPedInAnyVehicle(ped) and GetEntityHealth(ped) > 100 and not menu_state.opened and not menu_celular then
				tvRP.playAnim(true,{{"anim@mp_player_intcelebrationmale@face_palm","face_palm"}},false)
        	end
		end

		-- SAUDACAO (ARROW UP)
		if IsControlJustPressed(0,188) then
			if not IsPedInAnyVehicle(ped) and GetEntityHealth(ped) > 100 and not menu_state.opened and not menu_celular then
				tvRP.playAnim(true,{{"anim@mp_player_intcelebrationmale@salute","salute"}},false)
        	end
		end

		-- MÃOS NA CABEÇA (F10)
		if IsControlJustPressed(0,57) then
			if not IsPedInAnyVehicle(ped) and GetEntityHealth(ped) > 100 and not menu_state.opened and not menu_celular then
				if IsEntityPlayingAnim(ped,"random@arrests@busted","idle_a",3) then
					tvRP.DeletarObjeto()
				else
					tvRP.DeletarObjeto()
					tvRP.playAnim(true,{{"random@arrests@busted","idle_a"}},true)
				end
        	end
		end

		-- LEVANTAR A MAO (X)
		if IsControlJustPressed(0,73) then
			if not IsPedInAnyVehicle(ped) and GetEntityHealth(ped) > 100 and not menu_celular then
				SetCurrentPedWeapon(ped,GetHashKey("WEAPON_UNARMED"),true)
				if IsEntityPlayingAnim(ped,"random@mugging3","handsup_standing_base",3) then
					tvRP.DeletarObjeto()
				else
					tvRP.playAnim(true,{{"random@mugging3","handsup_standing_base"}},true)
				end
        	end
		end

		-- PARA TODAS AS ANIMAÇÕES (F6)
		if IsControlJustPressed(0,167) then
			if GetEntityHealth(ped) > 100 then
				if not menu_state.opened then
					tvRP.DeletarObjeto()
					ClearPedTasks(ped)
				end
			end
		end

		-- LIGAR O MOTOR (Z)
		if IsControlJustPressed(0,20) then
			if IsPedInAnyVehicle(ped) then
				local vehicle = GetVehiclePedIsIn(ped,false)
				if GetPedInVehicleSeat(vehicle,-1) == ped then
					tvRP.DeletarObjeto()
					local running = Citizen.InvokeNative(0xAE31E7DF9B5B132E,vehicle)
					SetVehicleEngineOn(vehicle,not running,true,true)
					if running then
						SetVehicleUndriveable(vehicle,true)
					else
						SetVehicleUndriveable(vehicle,false)
					end
				end
			end
		end

		-- APONTAR O DEDO (B)
		if IsControlJustPressed(0,29) then
			if not IsPedInAnyVehicle(ped) and GetEntityHealth(ped) > 100 and not menu_celular then
				tvRP.CarregarAnim("anim@mp_point")
				if not apontar then
					SetPedCurrentWeaponVisible(ped,0,1,1,1)
					SetPedConfigFlag(ped,36,1)
					Citizen.InvokeNative(0x2D537BA194896636,ped,"task_mp_pointing",0.5,0,"anim@mp_point",24)
                	apontar = true
            	else
            		Citizen.InvokeNative(0xD01015C7316AE176,ped,"Stop")
					if not IsPedInjured(ped) then
						ClearPedSecondaryTask(ped)
					end
					if not IsPedInAnyVehicle(ped) then
						SetPedCurrentWeaponVisible(ped,1,1,1,1)
					end
					SetPedConfigFlag(ped,36,0)
					ClearPedSecondaryTask(ped)
                	apontar = false
            	end
        	end
		end

	end
end)

local anims = {
	{ dict = "random@mugging3","handsup_standing_base", anim = "handsup_standing_base" },
	{ dict = "random@arrests@busted", anim = "idle_a" },
	{ dict = "anim@heists@heist_corona@single_team", anim = "single_team_loop_boss" },
	{ dict = "mini@strip_club@idles@bouncer@base", anim = "base" },
	{ dict = "anim@mp_player_intupperfinger", anim = "idle_a_fp" },
	{ dict = "random@arrests", anim = "generic_radio_enter" },
	{ dict = "mp_player_int_upperpeace_sign", anim = "mp_player_int_peace_sign" }
}

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		for _,block in pairs(anims) do
			if IsEntityPlayingAnim(PlayerPedId(),block.dict,block.anim,3) or object then
				DisableControlAction(0,16,true)
				DisableControlAction(0,17,true)
				DisableControlAction(0,24,true)
				DisableControlAction(0,25,true)
				DisableControlAction(0,257,true)
				BlockWeaponWheelThisFrame()
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÃO DO APONTAR
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		local ped = PlayerPedId()
		if apontar then
			local camPitch = GetGameplayCamRelativePitch()
			if camPitch < -70.0 then
				camPitch = -70.0
			elseif camPitch > 42.0 then
				camPitch = 42.0
			end
			camPitch = (camPitch + 70.0) / 112.0

			local camHeading = GetGameplayCamRelativeHeading()
			local cosCamHeading = Cos(camHeading)
			local sinCamHeading = Sin(camHeading)
			if camHeading < -180.0 then
				camHeading = -180.0
			elseif camHeading > 180.0 then
				camHeading = 180.0
			end
			camHeading = (camHeading + 180.0) / 360.0

			local blocked = 0
			local nn = 0
			local coords = GetOffsetFromEntityInWorldCoords(ped,(cosCamHeading*-0.2)-(sinCamHeading*(0.4*camHeading+0.3)),(sinCamHeading*-0.2)+(cosCamHeading*(0.4*camHeading+0.3)),0.6)
			local ray = Cast_3dRayPointToPoint(coords.x,coords.y,coords.z-0.2,coords.x,coords.y,coords.z+0.2,0.4,95,ped,7);
			nn,blocked,coords,coords = GetRaycastResult(ray)

			Citizen.InvokeNative(0xD5BB4025AE449A4E,ped,"Pitch",camPitch)
			Citizen.InvokeNative(0xD5BB4025AE449A4E,ped,"Heading",camHeading*-1.0+1.0)
			Citizen.InvokeNative(0xB0A6CFD2C69C1088,ped,"isBlocked",blocked)
			Citizen.InvokeNative(0xB0A6CFD2C69C1088,ped,"isFirstPerson",Citizen.InvokeNative(0xEE778F8C7E1142E2,Citizen.InvokeNative(0x19CAFA3C87F7C2FF))==4)
		end
	end
end)

