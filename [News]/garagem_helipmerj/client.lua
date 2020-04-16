local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local cfg = module("garagem_helipmerj", "cfg/garagem")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
SVjob = Tunnel.getInterface("garagem_helipmerj")

local dp = cfg.helipmerjdelegacia
local display = false

local users = {}
local blips = {}
local myteams = {}

RegisterNetEvent('Policia:InserirUsuario')
AddEventHandler('Policia:InserirUsuario', function(user_id, source)
	users[user_id] = GetPlayerFromServerId(source)
end)

RegisterNetEvent('Policia:RemoverUsuario')
AddEventHandler('Policia:RemoverUsuario', function(user_id)
	users[user_id] = nil
end)

RegisterNetEvent('Policia:InserirBlip')
AddEventHandler('Policia:InserirBlip', function(user_id,source,group,btypes)
    blips[user_id] = {id = user_id, player = GetPlayerFromServerId(source), job = group, teams = btypes}
    if GetPlayerPed(blips[user_id].player) == PlayerPedId() then
      myteams = btypes
    end
end)

RegisterNetEvent('Policia:RemoverBlip')
AddEventHandler('Policia:RemoverBlip', function(user_id)
	if blips[user_id] then
        local ped = GetPlayerPed(blips[user_id].player)
        local blip = GetBlipFromEntity(ped)
        RemoveBlip(blip)
        blips[user_id] = {player = nil, job = nil, teams = nil}
        if ped == PlayerPedId() then
          myteams = nil
        end
    end
end)

RegisterNetEvent('Policia:Receberhelipmerj')
AddEventHandler('Policia:Receberhelipmerj', function(veiculos)
    TransitionToBlurred(1000)
	SetNuiFocus(true, true)
	SendNUIMessage({
        show = true,
		veiculos = veiculos
	})
end)

function UpdateBlip(id, blip, sprite, colour, alpha)
	local blipSprite = GetBlipSprite( blip )
	ShowNumberOnBlip(blip, id)
	if (blipSprite ~= sprite) then
	  SetBlipSprite(blip, sprite)
	  Citizen.InvokeNative(0x5FBCA48327B914DF, blip, true)
	end
	SetBlipAsFriendly(blip, true)
	SetBlipScale(blip, 0.85)
	SetBlipColour(blip, colour)
	SetBlipAlpha(blip, alpha)
end

function getJobOnSameTeam(blip, myteams)
    if blip.teams and myteams then
        for index, value in pairs(blip.teams) do
	    	for index2, value2 in pairs(myteams) do
	    		if value == value2 then
	    			return blip.job
	    		end
	    	end
        end
    end
  return false
end

function tickDisplay()
    if SVjob.Permissao() then
        display = true
    else
        display = false
    end
end

function criarMarkers()
    for k, v in pairs(dp) do
        local garagem = dp[k].garagem
        local item = garagem.acessar
        DrawMarker(23, item.x, item.y, item.z-0.94, 0, 0, 0, 0, 0, 0, 2.0001,2.0001,2.0001, 0, 232, 255, 155, 0, 0, 0, 0, 0, 0, 0)
    end
end

function SpawnGaragem(vtype)
	  local mhash = GetHashKey(vtype)
	  local i = 0
	  while not HasModelLoaded(mhash) and i < 10000 do
		RequestModel(mhash)
		Citizen.Wait(10)
		i = i+1
	  end

	  if HasModelLoaded(mhash) then
        for k,v in pairs(dp) do
            local garagem = dp[k].garagem
			local item = garagem.spawn
            local pos = item[math.random(1, #item)]
			local nveh = CreateVehicle(mhash, pos.x, pos.y, pos.z, pos.h, true, false)
			SetVehicleOnGroundProperly(nveh)
			SetEntityInvincible(nveh,false)
			SetVehicleNumberPlateText(nveh, "R-helipmerj")
			Citizen.InvokeNative(0xAD738C3085FE7E11, nveh, true, true) 
			SetVehicleHasBeenOwnedByPlayer(nveh,true)
			SetModelAsNoLongerNeeded(mhash)
			return true
		end
	  end
	return false
end

function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    
    SetTextScale(0.28, 0.28)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.005+ factor, 0.03, 41, 11, 41, 68)
end


Citizen.CreateThread(function()
    while true do
        tickDisplay()
        Wait(1000)
    end
end)

Citizen.CreateThread(function ()
	while true do
		criarMarkers()
		Citizen.Wait(1)
	end
end)

Citizen.CreateThread(function()
    while true do
        for k,v in pairs(blips) do
            local id = v.player
            if id ~= nil then
                local ped = GetPlayerPed(id)
                if (NetworkIsPlayerActive(id) and ped ~= PlayerPedId()) then
                    local blip = GetBlipFromEntity(ped)
                    x1, y1, z1 = table.unpack(GetEntityCoords(PlayerPedId(), true))
                    x2, y2, z2 = table.unpack(GetEntityCoords(ped, true))
                    distance = math.floor(GetDistanceBetweenCoords(x1,  y1,  z1,  x2,  y2,  z2,  true))
                    local job = getJobOnSameTeam(v, myteams)
                    if job then
                        if cfg.blips[job] then
                            if distance < cfg.blips[job].distance then
                                local alpha = 255 - (255*(distance/cfg.blips[job].distance))
                                if not DoesBlipExist(blip) then
                                    blip = AddBlipForEntity(ped)
                                    UpdateBlip(v.id, blip, cfg.blips[job].sprite, cfg.blips[job].colour, alpha)
                                else
                                    UpdateBlip(v.id, blip, cfg.blips[job].sprite, cfg.blips[job].colour, alpha)
                                end
                            else
                                if DoesBlipExist(blip) then
                                    RemoveBlip(blip)
                                end
                            end
                        end
                    end
                end
            end
        end
        Citizen.Wait(0)
    end
end)

Citizen.CreateThread(function() 
    while true do
        for k,v in pairs(dp) do     
            item = dp[k].garagem
            local garagem = item.acessar
            if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), garagem.x, garagem.y, garagem.z, true ) <= 1 and display then
                DrawText3D(garagem.x, garagem.y, garagem.z, "Aperte [~g~E~w~] para acessar a garagem de helicopteros da pmerj")
                if IsControlJustReleased(1, 51) then
                    TriggerServerEvent('Policia:Enviarhelipmerj')
                end
            end
        end
        Wait(1)
    end
end)

RegisterNUICallback('retirar', function(data, cb)
    TransitionFromBlurred(1000)
	SetNuiFocus(false)
    local veh = data.id
    SpawnGaragem(veh)
    TriggerServerEvent('Policia:AtualizarEstoque', veh)
end)

RegisterNUICallback('fechar', function(data, cb)
	TransitionFromBlurred(1000)
	SetNuiFocus(false)
  	cb('ok')
end)

AddEventHandler('onResourceStop', function(resource)
    if resource == GetCurrentResourceName() then
        SetNuiFocus(false, false)
    end
end)