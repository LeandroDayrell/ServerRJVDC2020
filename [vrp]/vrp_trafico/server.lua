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

	[7] = { ['re'] = nil, ['reqtd'] = nil, ['item'] = "carbono", ['itemqtd'] = 80 },
	[8] = { ['re'] = "carbono", ['reqtd'] = 80, ['item'] = "ferro", ['itemqtd'] = 40 },
	[9] = { ['re'] = "ferro", ['reqtd'] = 80, ['item'] = "aco", ['itemqtd'] = 80 },
	
	[10] = { ['re'] = nil, ['reqtd'] = nil, ['item'] = "carbono", ['itemqtd'] = 80 },
	[11] = { ['re'] = "carbono", ['reqtd'] = 80, ['item'] = "ferro", ['itemqtd'] = 80 },
	[12] = { ['re'] = "ferro", ['reqtd'] = 80, ['item'] = "aco", ['itemqtd'] = 80 },
	
	-- [13] = { ['re'] = nil, ['reqtd'] = nil, ['item'] = "capsula", ['itemqtd'] = 40 },
	-- [14] = { ['re'] = "capsula", ['reqtd'] = 40, ['item'] = "polvora", ['itemqtd'] = 40 },
--	[15] = { ['re'] = "po", ['reqtd'] = 2, ['item'] = "cocaina", ['itemqtd'] = 4 },
	
    [16] = { ['re'] = nil, ['reqtd'] = nil, ['item'] = "carbono", ['itemqtd'] = 80 },
	[17] = { ['re'] = "carbono", ['reqtd'] = 80, ['item'] = "ferro", ['itemqtd'] = 80 },
	[18] = { ['re'] = "ferro", ['reqtd'] = 80, ['item'] = "aco", ['itemqtd'] = 80 },
	
	[19] = { ['re'] = nil, ['reqtd'] = nil, ['item'] = "carbono", ['itemqtd'] = 80 },
	[20] = { ['re'] = "carbono", ['reqtd'] = 80, ['item'] = "ferro", ['itemqtd'] = 80 },
	[21] = { ['re'] = "ferro", ['reqtd'] = 80, ['item'] = "aco", ['itemqtd'] = 80 },
	
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
	
	-- [16] = { ['re'] = "polvora", ['reqtd'] = 40, ['item'] = "wammo|WEAPON_PISTOL_MK2", ['itemqtd'] = 50 },
	-- [17] = { ['re'] = "polvora", ['reqtd'] = 40, ['item'] = "wammo|WEAPON_SAWNOFFSHOTGUN", ['itemqtd'] = 50 },
	-- [18] = { ['re'] = "polvora", ['reqtd'] = 40, ['item'] = "wammo|WEAPON_ASSAULTRIFLE", ['itemqtd'] = 50 },
	-- [19] = { ['re'] = "polvora", ['reqtd'] = 40, ['item'] = "wammo|WEAPON_MACHINEPISTOL", ['itemqtd'] = 50 },
	-- [20] = { ['re'] = "polvora", ['reqtd'] = 40, ['item'] = "wammo|WEAPON_GUSENBERG", ['itemqtd'] = 50 },
	-- [21] = { ['re'] = "polvora", ['reqtd'] = 40, ['item'] = "wammo|WEAPON_ASSAULTSMG", ['itemqtd'] = 50 },
	
	-- [22] = { ['re'] = nil, ['reqtd'] = nil, ['item'] = "capsula", ['itemqtd'] = 40 },
	-- [23] = { ['re'] = "capsula", ['reqtd'] = 40, ['item'] = "polvora", ['itemqtd'] = 40 },
	-- [24] = { ['re'] = "ferro", ['reqtd'] = 40, ['item'] = "aco", ['itemqtd'] = 40 },
	
	-- [25] = { ['re'] = "aco", ['reqtd'] = 3000, ['item'] = "wbody|WEAPON_PISTOL_MK2", ['itemqtd'] = 1 },
	-- [26] = { ['re'] = "aco", ['reqtd'] = 20000, ['item'] = "wbody|WEAPON_SAWNOFFSHOTGUN", ['itemqtd'] = 1 },
	-- [27] = { ['re'] = "aco", ['reqtd'] = 12000, ['item'] = "wbody|WEAPON_ASSAULTSMG", ['itemqtd'] = 1 },
	-- [28] = { ['re'] = "aco", ['reqtd'] = 21000, ['item'] = "wbody|WEAPON_ASSAULTRIFLE", ['itemqtd'] = 1 },
	-- [29] = { ['re'] = "aco", ['reqtd'] = 10000, ['item'] = "wbody|WEAPON_MACHINEPISTOL", ['itemqtd'] = 1 },
	-- [30] = { ['re'] = "aco", ['reqtd'] = 15000, ['item'] = "wbody|WEAPON_GUSENBERG", ['itemqtd'] = 1 },
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