local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
emP = Tunnel.getInterface("nav_mercadonegro")
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTION
-----------------------------------------------------------------------------------------------------------------------------------------
local menuactive = false
function ToggleActionMenu()
	menuactive = not menuactive
	if menuactive then
		SetNuiFocus(true,true)
		SendNUIMessage({ showmenu = true })
	else
		SetNuiFocus(false)
		SendNUIMessage({ hidemenu = true })
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- BUTTON
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("ButtonClick",function(data,cb)
	if data == "mercadonegro-comprar-cano_parts" then
		TriggerServerEvent("Cano Partes","cano_parts")
	elseif data == "mercadonegro-comprar-carregador_parts" then
		TriggerServerEvent("Carregador Partes","carregador_parts")
	elseif data == "mercadonegro-comprar-ferrolho_parts" then
		TriggerServerEvent("Ferrolho Partes","ferrolho_parts")
	elseif data == "mercadonegro-comprar-canoestendido_parts" then
		TriggerServerEvent("Cano Estendido Partes","canoestendido_parts")

	elseif data == "fechar" then
		ToggleActionMenu()
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCAIS
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	SetNuiFocus(false,false)
	while true do
		Citizen.Wait(1)
		local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),734.16357421875,2523.4360351563,73.224716186523,true)
		if distance <= 30 then
			DrawMarker(23,734.16357421875,2523.4360351563,73.224716186523-0.97,0,0,0,0,0,0,1.0,1.0,0.5,240,200,80,50,0,0,0,0)
			if distance <= 1.1 then
				if IsControlJustPressed(0,38) and emP.checkPermission() then
					ToggleActionMenu()
				end
			end
		end
	end
end)