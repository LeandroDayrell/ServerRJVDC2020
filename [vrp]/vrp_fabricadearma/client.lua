local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
func = Tunnel.getInterface("vrp_trafico")
-----------------------------------------------------------------------------------------------------------------------------------------
-- TELEPORT
-----------------------------------------------------------------------------------------------------------------------------------------

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		for k,v in pairs(Teleport) do
			local ped = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(ped))
			local bowz,cdz = GetGroundZFor_3dCoord(v.positionFrom.x,v.positionFrom.y,v.positionFrom.z)
			local distance = GetDistanceBetweenCoords(v.positionFrom.x,v.positionFrom.y,cdz,x,y,z,true)
			local bowz,cdz2 = GetGroundZFor_3dCoord(v.positionTo.x,v.positionTo.y,v.positionTo.z)
			local distance2 = GetDistanceBetweenCoords(v.positionTo.x,v.positionTo.y,cdz2,x,y,z,true)

			if distance <= 10 then
				DrawMarker(1,v.positionFrom.x,v.positionFrom.y,v.positionFrom.z-1,0,0,0,0,0,0,1.0,1.0,1.0,255,255,255,50,0,0,0,0)
				if distance <= 1.5 then
					if IsControlJustPressed(0,38) and func.checkPermission(v.positionTo.perm) then
						SetEntityCoords(PlayerPedId(),v.positionTo.x,v.positionTo.y,v.positionTo.z-0.50)
					end
				end
			end

			if distance2 <= 10 then
				DrawMarker(1,v.positionTo.x,v.positionTo.y,v.positionTo.z-1,0,0,0,0,0,0,1.0,1.0,1.0,255,255,255,50,0,0,0,0)
				if distance2 <= 1.5 then
					if IsControlJustPressed(0,38) and func.checkPermission(v.positionFrom.perm) then
						SetEntityCoords(PlayerPedId(),v.positionFrom.x,v.positionFrom.y,v.positionFrom.z-0.50)
					end
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
local processo = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCAIS
-----------------------------------------------------------------------------------------------------------------------------------------
local locais = {
	-- ADA
	 { ['id'] = 1, ['x'] =  1508.53039550, ['y'] = -1699.92712402, ['z'] = 90.9923019409, ['text'] = "PISTOLA", ['perm'] = "motoclub.permissao" },
	 { ['id'] = 2, ['x'] = 1506.83752441, ['y'] = -1702.26867675, ['z'] = 90.9922866821, ['text'] = "MUNIÇÃO PISTOLA", ['perm'] = "motoclub.permissao" }, -- 
	 --1506.8375244141,-1702.2686767578,90.992286682129
	 { ['id'] = 3, ['x'] = 1511.0263671875, ['y'] = -1701.9822998047, ['z'] = 90.992286682129, ['text'] = "ARMA ALTO CALIBRE", ['perm'] = "motoclub.permissao" }, -- 
	 --1511.0263671875,-1701.9822998047,90.992286682129
	 { ['id'] = 4, ['x'] = 1508.91247558, ['y'] = -1704.97412109, ['z'] = 90.9922866821, ['text'] = "MUNIÇÃO de SHOTGUN", ['perm'] = "motoclub.permissao" }, -- 
	 --1508.9124755859,-1704.9741210938,90.992286682129
	 
	 -- TCP
	 { ['id'] = 5, ['x'] = 583.29, ['y'] = -3108.25, ['z'] = 6.06, ['text'] = "PISTOLA de FIVE-SEVEN", ['perm'] = "motoclub.permissao" }, -- 
	 { ['id'] = 6, ['x'] = 583.41, ['y'] = -3110.24, ['z'] = 6.06, ['text'] = "MUNIÇÃO PISTOLA", ['perm'] = "motoclub.permissao" }, -- 
	 { ['id'] = 7, ['x'] = 583.41, ['y'] = -3110.24, ['z'] = 6.06, ['text'] = "MUNIÇÃO de SHOTGUN", ['perm'] = "motoclub.permissao" }, -- 
	 { ['id'] = 8, ['x'] = 583.41, ['y'] = -3110.24, ['z'] = 6.06, ['text'] = "MUNIÇÃO de SHOTGUN", ['perm'] = "motoclub.permissao" }, -- 
	 
	 -- CV
	 { ['id'] = 9, ['x'] = 585.81, ['y'] = -3118.78, ['z'] = 6.06, ['text'] = "PISTOLA de THOMPSON", ['perm'] = "motoclub.permissao" }, -- 
	 { ['id'] = 10, ['x'] = 583.45, ['y'] = -3116.78, ['z'] = 6.06, ['text'] = "MUNIÇÃO PISTOLA", ['perm'] = "motoclub.permissao" }, -- 
	  { ['id'] = 11, ['x'] = 585.81, ['y'] = -3118.78, ['z'] = 6.06, ['text'] = "MUNIÇÃO de THOMPSON", ['perm'] = "motoclub.permissao" }, -- 
	 { ['id'] = 12, ['x'] = 583.45, ['y'] = -3116.78, ['z'] = 6.06, ['text'] = "MUNIÇÃO de SMG de ASSALTO", ['perm'] = "motoclub.permissao" }, --
	 
	 -- PCC
	 { ['id'] = 13, ['x'] = 1737.60, ['y'] = 3325.96, ['z'] = 41.22, ['text'] = "PISTOLA", ['perm'] = "mafia.permissao" }, 
	 { ['id'] = 14, ['x'] = 1688.18, ['y'] = 3285.84, ['z'] = 41.14, ['text'] = "MUNIÇÃO PISTOLA", ['perm'] = "mafia.permissao" }, 
	 { ['id'] = 15, ['x'] = 1737.60, ['y'] = 3325.96, ['z'] = 41.22, ['text'] = "CAPSULA", ['perm'] = "mafia.permissao" },
	 { ['id'] = 16, ['x'] = 1688.18, ['y'] = 3285.84, ['z'] = 41.14, ['text'] = "POLVORA", ['perm'] = "mafia.permissao" },
	 
	 -- MC
	 { ['id'] = 17, ['x'] = 2135.39, ['y'] = 4772.33, ['z'] = 40.97, ['text'] = "PISTOLA", ['perm'] = "merryweather.permissao" }, -- liberty
	 { ['id'] = 18, ['x'] = -588.97, ['y'] = -1617.54, ['z'] = 33.01, ['text'] = "MUNIÇÃO PISTOLA", ['perm'] = "merryweather.permissao" }, -- 
	 { ['id'] = 19, ['x'] = 2135.39, ['y'] = 4772.33, ['z'] = 40.97, ['text'] = "AÇO", ['perm'] = "merryweather.permissao" }, -- liberty
	 { ['id'] = 20, ['x'] = -588.97, ['y'] = -1617.54, ['z'] = 33.01, ['text'] = "Armamento FiveSeven", ['perm'] = "merryweather.permissao" }, --
	 
	 -- YAKUZA
	 { ['id'] = 21, ['x'] = -590.50, ['y'] = -1617.54, ['z'] = 33.01, ['text'] = "PISTOLA", ['perm'] = "merryweather.permissao" }, -- 
	 { ['id'] = 22, ['x'] = -592.97, ['y'] = -1617.54, ['z'] = 33.01, ['text'] = "MUNIÇÃO PISTOLA", ['perm'] = "merryweather.permissao" }, -- ]
	 { ['id'] = 23, ['x'] = -590.50, ['y'] = -1617.54, ['z'] = 33.01, ['text'] = "Armamento Shotgun", ['perm'] = "merryweather.permissao" }, -- 
	 { ['id'] = 24, ['x'] = -592.97, ['y'] = -1617.54, ['z'] = 33.01, ['text'] = "Armamento MTAR-21", ['perm'] = "merryweather.permissao" }, -- 
	
	-- MAFIA
	 { ['id'] = 25, ['x'] = -593.97, ['y'] = -1617.54, ['z'] = 33.01, ['text'] = "PISTOLA", ['perm'] = "merryweather.permissao" }, -- 
	 { ['id'] = 26, ['x'] = -595.97, ['y'] = -1616.54, ['z'] = 33.01, ['text'] = "MUNIÇÃO PISTOLA", ['perm'] = "merryweather.permissao" }, -- 
	 { ['id'] = 27, ['x'] = -593.97, ['y'] = -1617.54, ['z'] = 33.01, ['text'] = "Armamento AK103", ['perm'] = "merryweather.permissao" }, -- 
	 { ['id'] = 28, ['x'] = -595.97, ['y'] = -1616.54, ['z'] = 33.01, ['text'] = "Armamento TEC9", ['perm'] = "merryweather.permissao" }, -- 
	 
	 -- MILICIA
	 { ['id'] = 29, ['x'] = -600.28, ['y'] = -1618.69, ['z'] = 33.01, ['text'] = "PISTOLA", ['perm'] = "merryweather.permissao" }, --
	 { ['id'] = 30, ['x'] = -600.28, ['y'] = -1618.69, ['z'] = 33.01, ['text'] = "MUNIÇÃO PISTOLA", ['perm'] = "merryweather.permissao" }, --
	 { ['id'] = 31, ['x'] = -600.28, ['y'] = -1618.69, ['z'] = 33.01, ['text'] = "Armamento THOMPSON", ['perm'] = "merryweather.permissao" }, --
	 { ['id'] = 32, ['x'] = -600.28, ['y'] = -1618.69, ['z'] = 33.01, ['text'] = "Armamento THOMPSON", ['perm'] = "merryweather.permissao" }, --
}

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		for k,v in pairs(locais) do
			local ped = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(ped))
			local bowz,cdz = GetGroundZFor_3dCoord(v.x,v.y,v.z)
			local distance = GetDistanceBetweenCoords(v.x,v.y,cdz,x,y,z,true)
			if distance <= 1.5 and not processo then
				drawTxt("APERTE ESSA BUÇANGA > ~b~E~w~  PRA FABRICAR A MALDITA ARMA "..v.text,4,0.5,0.93,0.50,255,255,255,180)
				DrawMarker(23, 865.92126464844,2168.958984375,52.286632537842-0.9701, 0, 0, 0, 0, 0, 0, 3.0, 3.0, 3.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
				DrawMarker(23, 851.53741455078,2167.9020996094,52.280456542969-0.9701, 0, 0, 0, 0, 0, 0, 3.0, 3.0, 3.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
				DrawMarker(23, 840.32495117188,2161.5939941406,52.306324005127-0.9701, 0, 0, 0, 0, 0, 0, 3.0, 3.0, 3.0, 13, 232, 255, 155, 0, 0, 2, 0, 0, 0, 0)
				if IsControlJustPressed(0,38) and func.checkPermission(v.perm) then
					if func.checkPayment(v.id) then
						processo = true
						TriggerEvent('cancelando',true)
						TriggerEvent("progress",10000,"produzindo")
						SetTimeout(10000,function()
							processo = false
							TriggerEvent('cancelando',false)
						end)
					end
				end
			end
		end
	end
end)  APERTE ESSA BUÇANGA > ~b~E~w~  PRA FABRICAR A MALDITA ARMA
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÕES
-----------------------------------------------------------------------------------------------------------------------------------------
function drawTxt(text,font,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end