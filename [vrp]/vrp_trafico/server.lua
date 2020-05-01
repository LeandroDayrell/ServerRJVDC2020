local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
func = {}
Tunnel.bindInterface("vrp_trafico",func)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÕES
-----------------------------------------------------------------------------------------------------------------------------------------
function func.checkPermission(perm)
	local source = source
	local user_id = vRP.getUserId(source)
	return vRP.hasPermission(user_id,perm)
end

local src = {
--	[1] = { ['re'] = nil, ['reqtd'] = nil, ['item'] = "adubo", ['itemqtd'] = 2 },
--	[2] = { ['re'] = "adubo", ['reqtd'] = 2, ['item'] = "fertilizante", ['itemqtd'] = 2 },
--	[3] = { ['re'] = "fertilizante", ['reqtd'] = 2, ['item'] = "maconha", ['itemqtd'] = 4 },

	-- [4] = { ['re'] = nil, ['reqtd'] = nil, ['item'] = "capsula", ['itemqtd'] = 40 },
	-- [5] = { ['re'] = "capsula", ['reqtd'] = 40, ['item'] = "polvora", ['itemqtd'] = 40 },
    
	
	-- ORGANIZAÇÃO
	
	-- MOTOCLUB
	[34] = { ['re'] = nil, ['reqtd'] = nil, ['item'] = "hidrazida", ['itemqtd'] = 1 },
	[35] = { ['re'] = "hidrazida", ['reqtd'] = 1, ['item'] = "eter", ['itemqtd'] = 1 },
	[36] = { ['re'] = "eter", ['reqtd'] = 1, ['item'] = "lsd", ['itemqtd'] = 1 },
	
	
	-- MILICIA
	[37] = { ['re'] = nil, ['reqtd'] = nil, ['item'] = "pecacacaniquel", ['itemqtd'] = 1 },
	[38] = { ['re'] = "pecacacaniquel", ['reqtd'] = 1, ['item'] = "placamae", ['itemqtd'] = 1 },
	[39] = { ['re'] = "placamae", ['reqtd'] = 1, ['item'] = "maquinacacaniquel", ['itemqtd'] = 1 },
	
	--YAKUZA
	[40] = { ['re'] = nil, ['reqtd'] = nil, ['item'] = "metil", ['itemqtd'] = 1 },
	[41] = { ['re'] = "metil", ['reqtd'] = 1, ['item'] = "cafeina", ['itemqtd'] = 1 },
	[42] = { ['re'] = "cafeina", ['reqtd'] = 1, ['item'] = "ecstasy", ['itemqtd'] = 1 },
	
	--MARFIA
	[43] = { ['re'] = nil, ['reqtd'] = nil, ['item'] = "leitedepapoula", ['itemqtd'] = 1 },
	[44] = { ['re'] = "leitedepapoula", ['reqtd'] = 1, ['item'] = "alcaloide", ['itemqtd'] = 1 },
	[45] = { ['re'] = "alcaloide", ['reqtd'] = 1, ['item'] = "morfina", ['itemqtd'] = 1 },
	
	
	
	
	
	-- FACÇÃO
	
	-- CV
	[22] = { ['re'] = nil, ['reqtd'] = nil, ['item'] = "acetofenetidina", "benzoilecgonina", "cloridratoecgonina", ['itemqtd'] = 1 },
	[23] = { ['re'] = "acetofenetidina", "benzoilecgonina", "cloridratoecgonina", ['reqtd'] = 3, ['item'] = "pastadecoca", ['itemqtd'] = 2 },
	[24] = { ['re'] = "pastadecoca", ['reqtd'] = 2, ['item'] = "cocaina", ['itemqtd'] = 3 },
	
	--TCP
	[25] = { ['re'] = nil, ['reqtd'] = nil, ['item'] = "anfetamina", ['itemqtd'] = 1 },
	[26] = { ['re'] = "anfetamina", ['reqtd'] = 1, ['item'] = "metasuja", ['itemqtd'] = 2 },
	[27] = { ['re'] = "metasuja", ['reqtd'] = 2, ['item'] = "metanfetamina", ['itemqtd'] = 3 },
	
	--ADA
	[28] = { ['re'] = nil, ['reqtd'] = nil, ['item'] = "adubo", ['itemqtd'] = 1 },
	[29] = { ['re'] = "adubo", ['reqtd'] = 1, ['item'] = "cannabis", ['itemqtd'] = 2 },
	[30] = { ['re'] = "cannabis", ['reqtd'] = 2, ['item'] = "maconha", ['itemqtd'] = 3 },
	
	--PCC
	[31] = { ['re'] = nil, ['reqtd'] = nil, ['item'] = "adubo", ['itemqtd'] = 1 },
	[32] = { ['re'] = "adubo", ['reqtd'] = 1, ['item'] = "pastadecrack", ['itemqtd'] = 2 },
	[33] = { ['re'] = "pastadecrack", ['reqtd'] = 2, ['item'] = "pedradecrack", ['itemqtd'] = 3 },
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	-- ADA
	[48] = { ['re'] = "fivesevenpack", ['reqtd'] = 1, ['item'] = "wbody|WEAPON_PISTOL_MK2", ['itemqtd'] = 1 },
	[49] = { ['re'] = "municaopistolpack", ['reqtd'] = 1, ['item'] = "wammo|WEAPON_PISTOL_MK2", ['itemqtd'] = 50 },
	[50] = { ['re'] = "uzipack", ['reqtd'] = 2, ['item'] = "wbody|WEAPON_MICROSMG", ['itemqtd'] = 1 },
	[51] = { ['re'] = "municaouzipack", ['reqtd'] = 1, ['item'] = "wammo|WEAPON_MICROSMG", ['itemqtd'] = 50 },

	-- TCP
	[52] = { ['re'] = "fivesevenpack", ['reqtd'] = 1, ['item'] = "wbody|WEAPON_PISTOL_MK2", ['itemqtd'] = 1 },
	[53] = { ['re'] = "municaopistolpack", ['reqtd'] = 1, ['item'] = "wammo|WEAPON_PISTOL_MK2", ['itemqtd'] = 50 },
	[54] = { ['re'] = "uzipack", ['reqtd'] = 2, ['item'] = "wbody|WEAPON_MICROSMG", ['itemqtd'] = 1 },
	[55] = { ['re'] = "municaouzipack", ['reqtd'] = 1, ['item'] = "wammo|WEAPON_MACHINEPISTOL", ['itemqtd'] = 50 },

	-- CV
	[56] = { ['re'] = "fivesevenpack", ['reqtd'] = 1, ['item'] = "wbody|WEAPON_PISTOL_MK2", ['itemqtd'] = 1 },
	[57] = { ['re'] = "municaopistolpack", ['reqtd'] = 1, ['item'] = "wammo|WEAPON_PISTOL_MK2", ['itemqtd'] = 50 },
	[5] = { ['re'] = "uzipack", ['reqtd'] = 2, ['item'] = "wbody|WEAPON_MICROSMG", ['itemqtd'] = 1 },
	[59] = { ['re'] = "municaouzipack", ['reqtd'] = 1, ['item'] = "wammo|WEAPON_MICROSMG", ['itemqtd'] = 50 },


	--PCC
	[60] = { ['re'] = "fivesevenpack", ['reqtd'] = 1, ['item'] = "wbody|WEAPON_PISTOL_MK2", ['itemqtd'] = 1 },
	[61] = { ['re'] = "municaopistolpack", ['reqtd'] = 1, ['item'] = "wammo|WEAPON_PISTOL_MK2", ['itemqtd'] = 50 },
	[62] = { ['re'] = "uzipack", ['reqtd'] = 2, ['item'] = "wbody|WEAPON_MICROSMG", ['itemqtd'] = 1 },
	[63] = { ['re'] = "municaouzipack", ['reqtd'] = 1, ['item'] = "wammo|WEAPON_MICROSMG", ['itemqtd'] = 50 },



	-------------------------------------
	-- MC
	[64] = { ['re'] = "fivesevenpack", ['reqtd'] = 1, ['item'] = "wbody|WEAPON_PISTOL_MK2", ['itemqtd'] = 1 },
	[65] = { ['re'] = "municaopistolpack", ['reqtd'] = 1, ['item'] = "wammo|WEAPON_PISTOL_MK2", ['itemqtd'] = 50 },
	[66] = { ['re'] = "mtarpack", ['reqtd'] = 1, ['item'] = "wbody|WEAPON_ASSAULTSMG", ['itemqtd'] = 1 },
	[67] = { ['re'] = "municaofamaspack", ['reqtd'] = 1, ['item'] = "wammo|WEAPON_ASSAULTSMG", ['itemqtd'] = 50 },
	[68] = { ['re'] = "coletepack", ['reqtd'] = 1, ['item'] = "body_armor", ['itemqtd'] = 1 },


	-- YAKUZA
	[69] = { ['re'] = "fivesevenpack", ['reqtd'] = 1, ['item'] = "wbody|WEAPON_PISTOL_MK2", ['itemqtd'] = 1 },
	[70] = { ['re'] = "municaopistolpack", ['reqtd'] = 1, ['item'] = "wammo|WEAPON_PISTOL_MK2", ['itemqtd'] = 50 },
	[71] = { ['re'] = "mtarpack", ['reqtd'] = 1, ['item'] = "wbody|WEAPON_ASSAULTSMG", ['itemqtd'] = 1 },
	[72] = { ['re'] = "municaofamaspack", ['reqtd'] = 1, ['item'] = "wammo|WEAPON_ASSAULTSMG", ['itemqtd'] = 50 },
	[73] = { ['re'] = "pumpshotgunpack", ['reqtd'] = 1, ['item'] = "wbody|WEAPON_PUMPSHOTGUN_MK2", ['itemqtd'] = 1 },
	[74] = { ['re'] = "municaopumppack", ['reqtd'] = 1, ['item'] = "wammo|WEAPON_PUMPSHOTGUN_MK2", ['itemqtd'] = 50 },

	-- MAFIA
	[75] = { ['re'] = "fivesevenpack", ['reqtd'] = 1, ['item'] = "wbody|WEAPON_PISTOL_MK2", ['itemqtd'] = 1 },
	[76] = { ['re'] = "municaopistolpack", "polvora", ['reqtd'] = 1, ['item'] = "wammo|WEAPON_PISTOL_MK2", ['itemqtd'] = 50 },
	[77] = { ['re'] = "thompsonpack", ['reqtd'] = 1, ['item'] = "wbody|WEAPON_GUSENBERG", ['itemqtd'] = 1 },
	[78] = { ['re'] = "municaothompsonpack", ['reqtd'] = 1, ['item'] = "wammo|WEAPON_GUSENBERG", ['itemqtd'] = 50 },

	-- MILICIA
	[79] = { ['re'] = "fivesevenpack", ['reqtd'] = 1, ['item'] = "wbody|WEAPON_PISTOL_MK2", ['itemqtd'] = 1 },
	[80] = { ['re'] = "municaopistolpack", ['reqtd'] = 1, ['item'] = "wammo|WEAPON_PISTOL_MK2", ['itemqtd'] = 50 },
	[81] = { ['re'] = "ak103pack", ['reqtd'] = 1, ['item'] = "wbody|WEAPON_ASSAULTRIFLE", ['itemqtd'] = 1 },
	[82] = { ['re'] = "municaoakpack", ['reqtd'] = 1, ['item'] = "wammo|WEAPON_ASSAULTRIFLE", ['itemqtd'] = 50 },


}

function func.checkPayment(id)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if src[id].re ~= nil then
			if vRP.getInventoryWeight(user_id)+vRP.getItemWeight(src[id].item)*src[id].itemqtd <= vRP.getInventoryMaxWeight(user_id) then
				if vRP.tryGetInventoryItem(user_id,src[id].re,src[id].reqtd,false) then
					vRP.giveInventoryItem(user_id,src[id].item,src[id].itemqtd,false)
					return true
				end
			end
		else
			if vRP.getInventoryWeight(user_id)+vRP.getItemWeight(src[id].item)*src[id].itemqtd <= vRP.getInventoryMaxWeight(user_id) then
				vRP.giveInventoryItem(user_id,src[id].item,src[id].itemqtd,false)
				return true
			end
		end
	end
end