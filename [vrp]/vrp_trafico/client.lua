local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
func = Tunnel.getInterface("vrp_trafico")
-----------------------------------------------------------------------------------------------------------------------------------------
-- TELEPORT
-----------------------------------------------------------------------------------------------------------------------------------------
local Teleport = {
	["TRAFICO01"] = { -- Bunker
		positionFrom = { ['x'] = -3033.40, ['y'] = 3333.93, ['z'] = 10.27, ['perm'] = "entrada.permissao" },
		positionTo = { ['x'] = 894.49, ['y'] = -3245.88, ['z'] = -98.25, ['perm'] = "entrada.permissao" },
	},

	["TRAFICO02"] = { -- Bunker
		positionFrom = { ['x'] = -3043.1281738281, ['y'] = 3332.1940917969, ['z'] = 11.807974815369, ['perm'] = "yakuzaentrada.permissao" }, 
		positionTo = { ['x'] = 911.04437255859, ['y'] = -3213.6423339844, ['z'] = -98.231483459473, ['perm'] = "yakuzaentrada.permissao" }
	},
	["TRAFICO03"] = { -- Bunker
		positionFrom = { ['x'] = -3169.3679199219, ['y'] = 1375.1413574219, ['z'] = 18.555246353149, ['perm'] = "miliciaentrada.permissao" },
		positionTo = { ['x'] = 1003.95, ['y'] = -2997.73, ['z'] = -39.64, ['perm'] = "miliciaentrada.permissao" },
	},
	["TRAFICO04"] = { -- Bunker
		positionFrom = { ['x'] = -923.83, ['y'] = -1508.83, ['z'] = 5.17, ['perm'] = "yakuzaliderentrada.permissao" }, 
		positionTo = { ['x'] = 1137.69, ['y'] = -3194.23, ['z'] = -40.39, ['perm'] = "yakuzaliderentrada.permissao" }
	},
	["TRAFICO05"] = { -- Bunker
		positionFrom = { ['x'] = 904.55, ['y'] = -2110.6, ['z'] = 30.762, ['perm'] = "motoclubliderentrada.permissao" }, 
		positionTo = { ['x'] = 1123.71, ['y'] = -3196.79, ['z'] = -40.39, ['perm'] = "motoclubliderentrada.permissao" }
	},
}

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
--	{ ['id'] = 1, ['x'] = -1873.12, ['y'] = 2100.75, ['z'] = 138.58, ['text'] = "ADUBO", ['perm'] = "roxos.permissao" }, -- trafico 904.04, -3201.62, -97.18
--	{ ['id'] = 2, ['x'] = 1060.37, ['y'] = -3197.21, ['z'] = -39.16, ['text'] = "FERTILIZANTE", ['perm'] = "roxos.permissao" }, -- trafico
--	{ ['id'] = 3, ['x'] = 1035.93, ['y'] = -3204.02, ['z'] = -38.17, ['text'] = "MACONHA", ['perm'] = "roxos.permissao" }, -- trafico 908.17, -3203.21, -97.18

	-- { ['id'] = 4, ['x'] = 1110.08, ['y'] = -2007.81, ['z'] = 31.04, ['text'] = "CAPSULA", ['perm'] = "motoclub.permissao" }, -- motoclub
	-- { ['id'] = 5, ['x'] = 1088.10, ['y'] = -2002.08, ['z'] = 30.88, ['text'] = "POLVORA", ['perm'] = "motoclub.permissao" }, -- motoclub
    -- MC
	{ ['id'] = 34, ['x'] = 1397.6040039063, ['y'] = 3602.501953125, ['z'] = 38.941890716553, ['text'] = "Reagentes", ['perm'] = "mcfarm.permissao" }, 
	{ ['id'] = 35, ['x'] = 1392.2895507813, ['y'] = 3606.3125, ['z'] = 38.941890716553, ['text'] = "Processamento", ['perm'] = "mcfarm.permissao" }, 
	{ ['id'] = 36, ['x'] = 1389.5310058594, ['y'] = 3603.8933105469, ['z'] = 38.941890716553, ['text'] = "Produto Final", ['perm'] = "mcfarm.permissao" },
		
	-- MILICIA
	{ ['id'] = 37, ['x'] = 993.17462158203, ['y'] = -3020.9677734375, ['z'] = -39.646953582764, ['text'] = "Reagentes", ['perm'] = "miliciafarm.permissao" }, 
	{ ['id'] = 38, ['x'] = 980.38238525391, ['y'] = -3030.0056152344, ['z'] = -39.646953582764, ['text'] = "Processamento", ['perm'] = "milicia.permissao" }, 
	{ ['id'] = 39, ['x'] = 962.98211669922, ['y'] = -3016.5417480469, ['z'] = -39.646953582764, ['text'] = "Produto Final", ['perm'] = "milicia.permissao" },
	
	--YAKUZA
	{ ['id'] = 40, ['x'] = 905.96, ['y'] = -3230.74, ['z'] = -98.29, ['text'] = "Reagentes", ['perm'] = "yakuza.permissao" }, 
	{ ['id'] = 41, ['x'] = 896.55, ['y'] = -3217.45, ['z'] = -98.22, ['text'] = "Processamento", ['perm'] = "yakuza.permissao" }, 
	{ ['id'] = 42, ['x'] = 884.78, ['y'] = -3199.77, ['z'] = -98.19, ['text'] = "Produto Final", ['perm'] = "yakuza.permissao" },
	
	--MARFIA
	{ ['id'] = 43, ['x'] = 1944.3961181641, ['y'] = 5025.7705078125, ['z'] = 42.284278869629, ['text'] = "Reagentes", ['perm'] = "mafia.permissao" }, 
	{ ['id'] = 44, ['x'] = 1959.6571044922, ['y'] = 5047.6948242188, ['z'] = 41.358818054199, ['text'] = "Processamento", ['perm'] = "mafia.permissao" }, 
	{ ['id'] = 45, ['x'] = 2013.3995361328, ['y'] = 4989.0385742188, ['z'] = 41.207672119141, ['text'] = "Produto Final", ['perm'] = "mafia.permissao" },
	
	
	
	--------------
	
	
	
	-- FACÇÃO 
	-- C.V
	{ ['id'] = 22, ['x'] = -1108.7979736328, ['y'] = 4952.0249023438, ['z'] = 218.64978027344, ['text'] = "Reagentes", ['perm'] = "cvfarm.permissao" }, 
	{ ['id'] = 23, ['x'] = -1106.1357421875, ['y'] = 4946.7099609375, ['z'] = 218.64979553223, ['text'] = "Processamento", ['perm'] = "cvfarm.permissao" }, 
	{ ['id'] = 24, ['x'] = -1111.8142089844, ['y'] = 4942.3784179688, ['z'] = 218.64979553223, ['text'] = "Produto Final", ['perm'] = "cvfarm.permissao" },
	
	--T.C.P
	{ ['id'] = 25, ['x'] = 1505.5209960938, ['y'] = 6392.111328125, ['z'] = 20.783918380737, ['text'] = "Reagentes", ['perm'] = "tcpfarm.permissao" }, 
	{ ['id'] = 26, ['x'] = 1493.416015625, ['y'] = 6390.2421875, ['z'] = 21.257762908936, ['text'] = "Processamento", ['perm'] = "tcpfarm.permissao" }, 
	{ ['id'] = 27, ['x'] = 1502.8494873047, ['y'] = 6393.55859375, ['z'] = 20.783916473389, ['text'] = "Produto Final", ['perm'] = "tcpfarm.permissao" },
	
	--A.D.A
	{ ['id'] = 28, ['x'] = 104.21949768066, ['y'] = 6337.7036132813, ['z'] = 31.500224685669, ['text'] = "Reagentes", ['perm'] = "adafarm.permissao" }, 
	{ ['id'] = 29, ['x'] = 99.263763427734, ['y'] = 6346.849609375, ['z'] = 31.375881195068, ['text'] = "Processamento", ['perm'] = "adafarm.permissao" }, 
	{ ['id'] = 30, ['x'] = 113.23827362061, ['y'] = 6360.431640625, ['z'] = 32.407746887207, ['text'] = "Produto Final", ['perm'] = "adafarm.permissao" },
	
	--P.C.C
	{ ['id'] = 31, ['x'] = -88.932647705078, ['y'] = 1909.8745117188, ['z'] = 196.78979492188, ['text'] = "Reagentes", ['perm'] = "pccfarm.permissao" }, 
	{ ['id'] = 32, ['x'] = -52.841339111328, ['y'] = 1913.4663085938, ['z'] = 195.36131286621, ['text'] = "Processamento", ['perm'] = "pccfarm.permissao" }, 
	{ ['id'] = 33, ['x'] = -55.041149139404, ['y'] = 1895.5422363281, ['z'] = 195.36166381836, ['text'] = "Produto Final", ['perm'] = "pccfarm.permissao" },
	
	------------------------------------
	------------------------------------
	
	
	-- FACÇÃO 
	--A.D.A
	{ ['id'] = 48, ['x'] = 1606.9685058594,['y'] = -1717.8978271484,['z'] = 88.118766784668, ['text'] = "FN Five Seven", ['perm'] = "adafarm.permissao" }, 
	{ ['id'] = 49, ['x'] = 1604.1119384766,['y'] = -1713.8809814453,['z'] = 88.123954772949, ['text'] = "MUNICAO FN Five Seven", ['perm'] = "adafarm.permissao" }, 
	{ ['id'] = 50, ['x'] = 1601.298828125,['y'] = -1708.1070556641,['z'] = 88.127281188965, ['text'] = "UZI", ['perm'] = "adafarm.permissao" },
	{ ['id'] = 51, ['x'] = 1597.4085693359,['y'] = -1700.7512207031,['z'] = 88.11580657959, ['text'] = "MUNIÇÃO UZI", ['perm'] = "adafarm.permissao" },
	
	--T.C.P
	{ ['id'] = 52, ['x'] = 794.68243408203,['y'] = 1142.4956054688,['z'] = 320.63186645508, ['text'] = "FN Five Seven", ['perm'] = "tcpfarm.permissao" }, 
	{ ['id'] = 53, ['x'] = 796.85357666016,['y'] = 1143.7322998047,['z'] = 320.63186645508, ['text'] = "MUNICAO FN Five Seven", ['perm'] = "tcpfarm.permissao" }, 
	{ ['id'] = 54, ['x'] = 800.68798828125,['y'] = 1144.8857421875,['z'] = 320.62759399414, ['text'] = "UZI", ['perm'] = "tcpfarm.permissao" },
	{ ['id'] = 55, ['x'] = 803.98004150391,['y'] = 1144.9389648438,['z'] = 320.62396240234, ['text'] = "MUNIÇÃO UZI", ['perm'] = "tcpfarm.permissao" },
	
	-- C.V
	{ ['id'] = 56, ['x'] = -836.21325683594,['y'] = 529.06225585938,['z'] = 94.61775970459, ['text'] = "FN Five Seven", ['perm'] = "cvfarm.permissao" }, 
	{ ['id'] = 57, ['x'] = -835.35522460938,['y'] = 525.65826416016,['z'] = 94.617721557617, ['text'] = "MUNICAO FN Five Seven", ['perm'] = "cvfarm.permissao" }, 
	{ ['id'] = 58, ['x'] = -833.89154052734,['y'] = 521.16040039063,['z'] = 94.617553710938, ['text'] = "UZI", ['perm'] = "cvfarm.permissao" },
	{ ['id'] = 59, ['x'] = -832.45910644531,['y'] = 516.42779541016,['z'] = 94.617362976074, ['text'] = "MUNIÇÃO UZI", ['perm'] = "cvfarm.permissao" },
	
	--P.C.C
	{ ['id'] = 60, ['x'] = 28.144828796387,['y'] = 3735.6994628906,['z'] = 43.217807769775, ['text'] = "FN Five Seven", ['perm'] = "pccfarm.permissao" }, 
	{ ['id'] = 61, ['x'] = 29.909864425659,['y'] = 3733.2731933594,['z'] = 43.217807769775, ['text'] = "MUNICAO FN Five Seven", ['perm'] = "pccfarm.permissao" }, 
	{ ['id'] = 62, ['x'] = 28.389930725098,['y'] = 3739.9829101563,['z'] = 47.163021087646, ['text'] = "UZI", ['perm'] = "pccfarm.permissao" },
	{ ['id'] = 63, ['x'] = 25.993011474609,['y'] = 3741.974609375,['z'] = 46.920963287354, ['text'] = "MUNIÇÃO UZI", ['perm'] = "pccfarm.permissao" },
	
	
	----------------
	    -- MC
	{ ['id'] = 64, ['x'] = 878.05200195313,['y'] = -2102.4616699219,['z'] = 30.761903762817, ['text'] = "FN Five Seven", ['perm'] = "mcfarm.permissao" }, 
	{ ['id'] = 65, ['x'] = 878.12481689453,['y'] = -2099.1267089844,['z'] = 30.761903762817, ['text'] = "MUNICAO FN Five Seven", ['perm'] = "mcfarm.permissao" }, 
	{ ['id'] = 66, ['x'] = 881.43762207031,['y'] = -2097.5148925781,['z'] = 30.761903762817, ['text'] = "MTAR-21", ['perm'] = "mcfarm.permissao" },
	{ ['id'] = 67, ['x'] = 884.77532958984,['y'] = -2097.7575683594,['z'] = 30.761957168579, ['text'] = "MUNIÇÃO MTAR-21", ['perm'] = "mcfarm.permissao" },
	{ ['id'] = 68, ['x'] = 885.12445068359,['y'] = -2099.9621582031,['z'] = 35.591953277588, ['text'] = "Colete", ['perm'] = "mcfarm.permissao" },
		
		
	--YAKUZA
	{ ['id'] = 69, ['x'] = 907.96563720703,['y'] = -3211.9970703125,['z'] = -98.222206115723, ['text'] = "FN Five Seven", ['perm'] = "yakuza.permissao" }, 
	{ ['id'] = 70, ['x'] = 898.41949462891,['y'] = -3221.390625,['z'] = -98.24723815918, ['text'] = "MUNICAO FN Five Seven", ['perm'] = "yakuza.permissao" }, 
	{ ['id'] = 71, ['x'] = 899.50915527344,['y'] = -3224.16796875,['z'] = -98.266632080078, ['text'] = "MTAR-21", ['perm'] = "yakuza.permissao" },
	{ ['id'] = 72, ['x'] = 909.56512451172,['y'] = -3222.28515625,['z'] = -98.26554107666, ['text'] = "MUNIÇÃO MTAR-21", ['perm'] = "yakuza.permissao" },
	{ ['id'] = 73, ['x'] = 902.22155761719,['y'] = -3207.33984375,['z'] = -97.187957763672, ['text'] = "Pumpshotgun_mk", ['perm'] = "yakuza.permissao" },
	{ ['id'] = 74, ['x'] = 892.46557617188,['y'] = -3204.0002441406,['z'] = -98.196220397949, ['text'] = "Pumpshotgun_mk municao", ['perm'] = "yakuza.permissao" },
	
	--MAFIA
	{ ['id'] = 75, ['x'] = -2676.755859375,['y'] = 1325.6988525391,['z'] = 144.25762939453, ['text'] = "FN Five Seven", ['perm'] = "mafia.permissao" }, 
	{ ['id'] = 76, ['x'] = -2679.0773925781,['y'] = 1327.8542480469,['z'] = 144.25762939453, ['text'] = "MUNICAO FN Five Seven", ['perm'] = "mafia.permissao" }, 
	{ ['id'] = 77, ['x'] = -2675.4692382813,['y'] = 1327.1612548828,['z'] = 140.88143920898, ['text'] = "THOMPSON", ['perm'] = "mafia.permissao" },
	{ ['id'] = 78, ['x'] = -2678.33984375,['y'] = 1330.5987548828,['z'] = 140.88143920898, ['text'] = "MUNIÇÃO THOMPSON", ['perm'] = "mafia.permissao" },

	-- MILICIA
	{ ['id'] = 79, ['x'] = 993.73187255859,['y'] = -2988.6284179688,['z'] = -39.646961212158, ['text'] = "FN Five Seven", ['perm'] = "miliciafarm.permissao" }, 
	{ ['id'] = 80, ['x'] = 977.77374267578,['y'] = -2988.6369628906,['z'] = -39.646961212158, ['text'] = "MUNICAO FN Five Seven", ['perm'] = "milicia.permissao" }, 
	{ ['id'] = 81, ['x'] = 966.80920410156,['y'] = -2992.3771972656,['z'] = -39.646961212158, ['text'] = "AK-103", ['perm'] = "milicia.permissao" },
	{ ['id'] = 82, ['x'] = 968.62371826172,['y'] = -3002.0817871094,['z'] = -39.646957397461, ['text'] = "MUNICAO AK-103", ['perm'] = "milicia.permissao" },
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
				drawTxt("PRESSIONE  ~b~E~w~  PARA COLETAR "..v.text,4,0.5,0.93,0.50,255,255,255,180)
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
end)
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