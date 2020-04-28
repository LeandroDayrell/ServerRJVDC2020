local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_anticheat")

---------------------------------ZEUS V3.0------------------------------------------------------------
RegisterServerEvent("Zeus_AntiCheat:Weapon")
AddEventHandler("Zeus_AntiCheat:Weapon", function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local name = GetPlayerName(source)
	TriggerClientEvent('chatMessage', -1, '^3[AntiCheat]', {255, 0, 0}, "^1" ..name.. "^3[ID:" ..user_id.. "]^1 KICK RECEBIDO ^3(razão: ARMA BLACKLIST)!" )
end)

RegisterServerEvent("Zeus_AntiCheat:object")
AddEventHandler("Zeus_AntiCheat:object", function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local name = GetPlayerName(source)
end)

AddEventHandler('explosionEvent', function(source, ev)
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local name = GetPlayerName(source)
	local idExplosao = ev.explosionType	
	local ownerId = ev.ownerNetId
	if user_id ~= nil then
	if (idExplosao == 29 and ownerId ~= 0) then
	PerformHttpRequest("https://discordapp.com/api/webhooks/704181508860149762/mUi3Ahdo0M3VwajKkJsfrag3SkYv1rBPETXVp6157yll8cfkBCd9d4NMVJnEXFDOvq-A", function(err, text, headers) end, 'POST', json.encode({content =  "**Explosões** ```" .. "ID: " .. user_id .. " Nome: " .. name .. "\nServidor: " .. GetConvar('sv_name', 'ND') .. "\nData: " .. os.date("%H:%M:%S %d/%m/%Y") .. "```"}), { ['Content-Type'] = 'application/json' })
	end
  CancelEvent(explosionEvent)
  end
end)

AddEventHandler('zeus:playerLoaded', function(source)
 TriggerEvent('zeus:getPlayerFromId', source, function(user)
    local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local name = GetPlayerName(source)
    user:setMoney((user.money))
	PerformHttpRequest("https://discordapp.com/api/webhooks/704181508860149762/mUi3Ahdo0M3VwajKkJsfrag3SkYv1rBPETXVp6157yll8cfkBCd9d4NMVJnEXFDOvq-A", function(err, text, headers) end, 'POST', json.encode({content =  "**Dinheiro** ```" .. "ID: " .. user_id .. " Nome: " .. name .. "\nServidor: " .. GetConvar('sv_name', 'ND') .. "\nData: " .. os.date("%H:%M:%S %d/%m/%Y") .. "```"}), { ['Content-Type'] = 'application/json' })
  end)
end)

RegisterServerEvent("Zeus_AntiCheat:Cars")
AddEventHandler("Zeus_AntiCheat:Cars", function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local name = GetPlayerName(source)
	PerformHttpRequest("https://discordapp.com/api/webhooks/704181508860149762/mUi3Ahdo0M3VwajKkJsfrag3SkYv1rBPETXVp6157yll8cfkBCd9d4NMVJnEXFDOvq-A", function(err, text, headers) end, 'POST', json.encode({content =  "**Carro** ```" .. "ID: " .. user_id .. " Nome: " .. name .. "\nServidor: " .. GetConvar('sv_name', 'ND') .. "\nData: " .. os.date("%H:%M:%S %d/%m/%Y") .. "```"}), { ['Content-Type'] = 'application/json' })
end)

RegisterServerEvent("Zeus_AntiCheat:playerPed")
AddEventHandler("Zeus_AntiCheat:playerPed", function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local name = GetPlayerName(source)
	PerformHttpRequest("https://discordapp.com/api/webhooks/704181508860149762/mUi3Ahdo0M3VwajKkJsfrag3SkYv1rBPETXVp6157yll8cfkBCd9d4NMVJnEXFDOvq-A", function(err, text, headers) end, 'POST', json.encode({content =  "**Npc** ```" .. "ID: " .. user_id .. " Nome: " .. name .. "\nServidor: " .. GetConvar('sv_name', 'ND') .. "\nData: " .. os.date("%H:%M:%S %d/%m/%Y") .. "```"}), { ['Content-Type'] = 'application/json' })
end)

RegisterServerEvent("Zeus_AntiCheat:Jump")
AddEventHandler("Zeus_AntiCheat:Jump", function()
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
	local name = GetPlayerName(source)
    PerformHttpRequest("https://discordapp.com/api/webhooks/704181508860149762/mUi3Ahdo0M3VwajKkJsfrag3SkYv1rBPETXVp6157yll8cfkBCd9d4NMVJnEXFDOvq-A", function(err, text, headers) end, 'POST', json.encode({content =  "**Jump** ```" .. "ID: " .. user_id .. " Nome: " .. name .. "\nServidor: " .. GetConvar('sv_name', 'ND') .. "\nData: " .. os.date("%H:%M:%S %d/%m/%Y") .. "```"}), { ['Content-Type'] = 'application/json' })
end)










