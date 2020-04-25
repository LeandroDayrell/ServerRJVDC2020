local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

local veiculos = {}

Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), -752.3095703125,-2585.1254882813,13.949339866638, true )
		if distance <= 15 then
			DrawMarker(36,-752.3095703125,-2585.1254882813,13.949339866638,0,0,0,0,0,0,1.0,1.0,1.0,199,0,0,50,1,30,30,30)
			DrawMarker(27,-752.3095703125,-2585.1254882813,13.949339866638-0.98,0,0,0,0,180.0,130.0,2.0,2.0,1.0,255,0,0,50,0,30,30,30)
		end
		if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), -752.3095703125,-2585.1254882813,13.949339866638, true ) < 1 then
		 	if (IsControlJustReleased(1, 51)) then
            	TriggerServerEvent('get:caminhao')
		 	end
		end
	end
end)

RegisterNetEvent('send:caminhao')
AddEventHandler('send:caminhao', function(veiculos, identidade)
    IsInShopMenu = true
	SetNuiFocus(true, true)
	SendNUIMessage({
        show = true,
		veiculos = veiculos,
		identidade = identidade
	})
end)

RegisterNUICallback('comprar', function(data, cb)
	IsInShopMenu = false
	SetNuiFocus(false, false)
	local veh = data.id + 1
	TriggerServerEvent('comprar:caminhao', veh)	
end)

RegisterNUICallback('fechar', function()
    IsInShopMenu = false
    SetNuiFocus(false, false)
end)