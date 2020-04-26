local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
emP = Tunnel.getInterface("nav_milicia")
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
	if data == "armamentos-comprar-hkp7m10" then
		TriggerServerEvent("milicia-comprar","wbody|WEAPON_PISTOL_MK2")
	elseif data == "armamentos-comprar-uzi" then
		TriggerServerEvent("milicia-comprar","wbody|WEAPON_MICROSMG")
	elseif data == "armamentos-comprar-ak103" then
		TriggerServerEvent("milicia-comprar","wbody|WEAPON_ASSAULTRIFLE")
	 elseif data == "armamentos-comprar-pumpshotgun" then
		TriggerServerEvent("milicia-comprar","wbody|WEAPON_PUMPSHOTGUN_MK2")
	-- elseif data == "armamentos-comprar-thompson" then
		-- TriggerServerEvent("milicia-comprar","wbody|WEAPON_GUSENBERG")

	elseif data == "armamentos-vender-hkp7m10" then
		TriggerServerEvent("milicia-vender","wbody|WEAPON_PISTOL_MK2")
	elseif data == "armamentos-vender-uzi" then
		TriggerServerEvent("milicia-vender","wbody|WEAPON_MICROSMG")
	elseif data == "armamentos-vender-ak103" then
		TriggerServerEvent("milicia-vender","wbody|WEAPON_ASSAULTRIFLE")
    elseif data == "armamentos-vender-pumpshotgun" then
	    TriggerServerEvent("milicia-vender","wbody|WEAPON_PUMPSHOTGUN_MK2")
	-- elseif data == "armamentos-vender-thompson" then
		-- TriggerServerEvent("milicia-vender","wbody|WEAPON_GUSENBERG")


	elseif data == "municoes-comprar-hkp7m10" then
		TriggerServerEvent("milicia-comprar","wammo|WEAPON_PISTOL_MK2")
	elseif data == "municoes-comprar-uzi" then
		TriggerServerEvent("milicia-comprar","wammo|WEAPON_MICROSMG")
	elseif data == "municoes-comprar-ak103" then
		TriggerServerEvent("milicia-comprar","wammo|WEAPON_ASSAULTRIFLE")
	elseif data == "municoes-comprar-pumpshotgun" then
		TriggerServerEvent("milicia-comprar","wammo|WEAPON_PUMPSHOTGUN_MK2")
	-- elseif data == "municoes-comprar-thompson" then
		-- TriggerServerEvent("milicia-comprar","wammo|WEAPON_GUSENBERG")

	elseif data == "municoes-vender-hkp7m10" then
		TriggerServerEvent("milicia-vender","wammo|WEAPON_PISTOL_MK2")
	elseif data == "municoes-vender-uzi" then
		TriggerServerEvent("milicia-vender","wammo|WEAPON_MICROSMG")
	elseif data == "municoes-vender-ak103" then
		TriggerServerEvent("milicia-vender","wammo|WEAPON_ASSAULTRIFLE")
	elseif data == "municoes-vender-pumpshotgun" then
		TriggerServerEvent("milicia-vender","wammo|WEAPON_PUMPSHOTGUN_MK2")
	-- elseif data == "municoes-vender-thompson" then
		-- TriggerServerEvent("milicia-vender","wammo|WEAPON_GUSENBERG")

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
		local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()),856.04931640625,3053.2658691406,42.065105438232,true)
		if distance <= 30 then
			DrawMarker(23,-2679.37,1332.54,140.88-0.97,0,0,0,0,0,0,1.0,1.0,0.5,240,200,80,50,0,0,0,0)
			if distance <= 1.1 then
				if IsControlJustPressed(0,38) and emP.checkPermission() then
					ToggleActionMenu()
				end
			end
		end
	end
end)