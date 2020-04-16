local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

-- LOCAL DAS ANIMAÇÃO
local animacoes = {
{ nome = "trotar" , dict = "amb@world_human_jog_standing@male@fitidle_a" , anim = "idle_a" , andar = false , loop = true },
	end }
}

-- INICIAL
RegisterNetEvent('emotes')
AddEventHandler('emotes',function(nome)
	local ped = PlayerPedId()
	if GetEntityHealth(ped) > 100 then
		vRP.DeletarObjeto()
		for _,emote in pairs(animacoes) do
			if not IsPedInAnyVehicle(ped) and not emote.carros then
				if nome == emote.nome then
					if emote.extra then emote.extra() end
					if emote.altura then
						vRP.CarregarObjeto("","",emote.prop,emote.flag,emote.mao,emote.altura,emote.pos1,emote.pos2,emote.pos3)
					elseif emote.prop then
						vRP.CarregarObjeto(emote.dict,emote.anim,emote.prop,emote.flag,emote.mao)
					elseif emote.dict then
						vRP._playAnim(emote.andar,{{emote.dict,emote.anim}},emote.loop)
					else
						vRP._playAnim(false,{task=emote.anim},false)
					end
				end
			else
				if IsPedInAnyVehicle(ped) and emote.carros then
					local vehicle = GetVehiclePedIsIn(ped,false)
					if nome == emote.nome then
						if (GetPedInVehicleSeat(vehicle,-1) == ped or GetPedInVehicleSeat(vehicle,1) == ped) and emote.nome == "sexo4" then
							vRP._playAnim(emote.andar,{{emote.dict,emote.anim}},emote.loop)
						elseif (GetPedInVehicleSeat(vehicle,0) == ped or GetPedInVehicleSeat(vehicle,2) == ped) and (emote.nome == "sexo5" or emote.nome == "sexo6") then
							vRP._playAnim(emote.andar,{{emote.dict,emote.anim}},emote.loop)
						end
					end
				end
			end
		end
	end
end)


Citizen.CreateThread(function()
    local dict = "amb@world_human_jog_standing@male@fitidle_a"
    
	RequestAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		Citizen.Wait(100)
	end
    local handsup = false
	while true do
		Citizen.Wait(0)
		if IsControlJustPressed(1, 167) then
            if not handsup then
                TaskPlayAnim(GetPlayerPed(-1), dict, "idle_a", 8.0, 8.0, -1, 50, 0, false, false, false)
                handsup = true
            else
                handsup = false
                ClearPedTasks(GetPlayerPed(-1))
            end
        end
    end
end)
	