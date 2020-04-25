--Settings--
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_drugfarms")

function ChecarPeso(item,quantidade)
	local user_id = vRP.getUserId(source)
	return vRP.getInventoryWeight(user_id)+vRP.getItemWeight(item)*quantidade <= vRP.getInventoryMaxWeight(user_id)
end


----------------------------------------
-------------- Cocaina -----------------
----------------------------------------
RegisterServerEvent('receber:Cocaine')
AddEventHandler('receber:Cocaine', function(loadWeed)
	local user_id = vRP.getUserId(source)
	local player = vRP.getUserSource(user_id)
	local weight = vRP.getInventoryWeight(user_id)
	if weight >= vRP.getInventoryMaxWeight(user_id) then
		TriggerClientEvent('chatMessage',player, "ALERTA",{255,70,50},"Espaço insuficiente no seu inventário.")
	else
		if vRP.hasGroup(user_id,"[C.V] - Lider") then
		if vRP.hasGroup(user_id,"[C.V] - Gerente") then
		if vRP.hasGroup(user_id,"[C.V] - Membro") then
		  vRP.giveInventoryItem(user_id, "acetofenetidina", 1,true)
		  vRP.giveInventoryItem(user_id, "benzoilecgonina", 1,true)
		  vRP.giveInventoryItem(user_id, "cloridratoecgonina", 1,true)
		else
		  TriggerClientEvent('sem:Reagentes', player)
		end
	end
	end
	end
end)
RegisterServerEvent('processar:Cocaine')
AddEventHandler('processar:Cocaine', function(loadWeed)
	local user_id = vRP.getUserId(source)
	local player = vRP.getUserSource(user_id)
	local weight = vRP.getInventoryWeight(user_id)
	if weight >= vRP.getInventoryMaxWeight(user_id) then
		TriggerClientEvent('chatMessage',player, "ALERTA",{255,70,50},"Espaço insuficiente no seu inventário.")
	else
		if vRP.tryGetInventoryItem(user_id,"acetofenetidina",1,true) and vRP.tryGetInventoryItem(user_id,"benzoilecgonina",1,true) and vRP.tryGetInventoryItem(user_id,"cloridratoecgonina",1,true) then
			vRP.giveInventoryItem(user_id, "cloridratococa", 2,true)
		else
			TriggerClientEvent('chatMessage',player, "ALERTA",{255,70,50},"Sem reagentes.")
		end
	end
end)
RegisterServerEvent('limpar:Solucao')
AddEventHandler('limpar:Solucao', function(loadWeed)
	local user_id = vRP.getUserId(source)
	local player = vRP.getUserSource(user_id)
	local weight = vRP.getInventoryWeight(user_id)
	if weight >= vRP.getInventoryMaxWeight(user_id) then
		TriggerClientEvent('chatMessage',player, "ALERTA",{255,70,50},"Espaço insuficiente no seu inventário.")
	else
		if vRP.tryGetInventoryItem(user_id,"cloridratococa",2,true) then
		  vRP.giveInventoryItem(user_id, "pastadecoca", 1,true)
		else
			TriggerClientEvent('chatMessage',player, "ALERTA",{255,70,50},"Sem reagentes.")
		end
	end
end)
RegisterServerEvent('embalar:Cocaine')
AddEventHandler('embalar:Cocaine', function(loadWeed)
	local user_id = vRP.getUserId(source)
	local player = vRP.getUserSource(user_id)
	local weight = vRP.getInventoryWeight(user_id)
	if weight >= vRP.getInventoryMaxWeight(user_id) then
		TriggerClientEvent('chatMessage',player, "ALERTA",{255,70,50},"Espaço insuficiente no seu inventário.")
	else
		if vRP.tryGetInventoryItem(user_id,"pastadecoca",1,true) then
		  vRP.giveInventoryItem(user_id, "cocaina", 2,true)
		else
			TriggerClientEvent('chatMessage',player, "ALERTA",{255,70,50},"Sem reagentes.")
		end
	end
end)

----------------------------------------
-------------- Metanfetamina -----------------
----------------------------------------
RegisterServerEvent('receber:Reagentes')
AddEventHandler('receber:Reagentes', function(loadWeed)
	local user_id = vRP.getUserId(source)
	local player = vRP.getUserSource(user_id)
	local weight = vRP.getInventoryWeight(user_id)
	if weight >= vRP.getInventoryMaxWeight(user_id) then
		TriggerClientEvent('chatMessage',player, "ALERTA",{255,70,50},"Espaço insuficiente no seu inventário.")
	else
		if vRP.hasGroup(user_id,"[T.C.P] - Lider") then
		if vRP.hasGroup(user_id,"[T.C.P] - Gerente") then
		if vRP.hasGroup(user_id,"[T.C.P] - Membro") then
		  vRP.giveInventoryItem(user_id, "anfetamina", 1,true)
		  vRP.giveInventoryItem(user_id, "ritalina", 1,true)
		else
			TriggerClientEvent('chatMessage',player, "ALERTA",{255,70,50},"Sem reagentes.")
		end
	end
	end
	end
end)

RegisterServerEvent('processar:Reagentes')
AddEventHandler('processar:Reagentes', function(loadWeed)
	local user_id = vRP.getUserId(source)
	local player = vRP.getUserSource(user_id)
	local weight = vRP.getInventoryWeight(user_id)
	if weight >= vRP.getInventoryMaxWeight(user_id) then
		TriggerClientEvent('chatMessage',player, "ALERTA",{255,70,50},"Espaço insuficiente no seu inventário.")
	else
		if vRP.tryGetInventoryItem(user_id,"anfetamina",1,true) and vRP.tryGetInventoryItem(user_id,"ritalina",1,true) then
			vRP.giveInventoryItem(user_id, "metasuja", 1,true)
		else
			TriggerClientEvent('chatMessage',player, "ALERTA",{255,70,50},"Sem reagentes.")
		end
	end
end)

RegisterServerEvent('limpar:Reagentes')
AddEventHandler('limpar:Reagentes', function(loadWeed)
	local user_id = vRP.getUserId(source)
	local player = vRP.getUserSource(user_id)
	local weight = vRP.getInventoryWeight(user_id)
	if weight >= vRP.getInventoryMaxWeight(user_id) then
		TriggerClientEvent('chatMessage',player, "ALERTA",{255,70,50},"Espaço insuficiente no seu inventário.")
	else
		if vRP.tryGetInventoryItem(user_id,"metasuja",1,true)then
			vRP.giveInventoryItem(user_id, "metanfetamina", 2,true)
		else
			TriggerClientEvent('chatMessage',player, "ALERTA",{255,70,50},"Sem reagentes.")
		end
	end
end)

----------------------------------------
-------------- Maconha -----------------
----------------------------------------
RegisterServerEvent('receber:Maconha')
AddEventHandler('receber:Maconha', function(loadWeed)
	local user_id = vRP.getUserId(source)
	local player = vRP.getUserSource(user_id)
	local weight = vRP.getInventoryWeight(user_id)
	local randommaconha = math.random(1,5)
	if weight >= vRP.getInventoryMaxWeight(user_id) then
		TriggerClientEvent('chatMessage',player, "ALERTA",{255,70,50},"Espaço insuficiente no seu inventário.")
	else
		if vRP.hasGroup(user_id,"[A.D.A] - Lider") then
		if vRP.hasGroup(user_id,"[A.D.A] - Gerente") then
		if vRP.hasGroup(user_id,"[A.D.A] - Membro") then
		  vRP.giveInventoryItem(user_id, "cannabis", randommaconha,true)
		else
			TriggerClientEvent('chatMessage',player, "ALERTA",{255,70,50},"Sem reagentes.")
		end
	end
	end
	end
end)

RegisterServerEvent('processar:Maconha')
AddEventHandler('processar:Maconha', function(loadWeed)
	local user_id = vRP.getUserId(source)
	local player = vRP.getUserSource(user_id)
	local weight = vRP.getInventoryWeight(user_id)
	local quantidadeMaconha = 1
	if ChecarPeso('maconha', 1) then
		if vRP.hasGroup(user_id,"[A.D.A] - Lider") then
		if vRP.hasGroup(user_id,"[A.D.A] - Gerente") then
		if vRP.hasGroup(user_id,"[A.D.A] - Membro") then
		  if vRP.tryGetInventoryItem(user_id,"cannabis",2,true) then
				vRP.giveInventoryItem(user_id,"maconha",quantidadeMaconha,false)
		  else
			TriggerClientEvent('chatMessage',player, "ALERTA",{255,70,50},"Sem reagentes.")
		  end
		else
			TriggerClientEvent('chatMessage',player, "ALERTA",{255,70,50},"Sem permissão.")
		end
	else
		TriggerClientEvent('chatMessage',player, "ALERTA",{255,70,50},"Espaço insuficiente no seu inventário.")
	end
	end
	end
end)

----------------------------------------
-------------- PERMISSÕES -----------------
----------------------------------------
RegisterServerEvent('amarelos:permissao')
AddEventHandler('amarelos:permissao', function(loadWeed)
	local user_id = vRP.getUserId(source)
	local player = vRP.getUserSource(user_id)
	if vRP.hasGroup(user_id,"[T.C.P] - Lider") then
		if vRP.hasGroup(user_id,"[T.C.P] - Gerente") then
			if vRP.hasGroup(user_id,"[T.C.P] - Membro") then
			  TriggerClientEvent('amarelos:permissao', player)
			else
			  TriggerClientEvent('chatMessage',player, "ALERTA",{255,70,50},"Você não é desse gueto.")
			end
		end
	end
end)

RegisterServerEvent('verdes:permissao')
AddEventHandler('verdes:permissao', function(loadWeed)
	local user_id = vRP.getUserId(source)
	local player = vRP.getUserSource(user_id)
	if vRP.hasGroup(user_id,"[C.V] - Lider") then
		if vRP.hasGroup(user_id,"[C.V] - Gerente") then
			if vRP.hasGroup(user_id,"[C.V] - Membro") then
			  TriggerClientEvent('verdes:permissao', player)
			else
			  TriggerClientEvent('chatMessage',player, "ALERTA",{255,70,50},"Você não é desse gueto.")
			end
		end
	end
end)

RegisterServerEvent('roxos:permissao')
AddEventHandler('roxos:permissao', function(loadWeed)
	local user_id = vRP.getUserId(source)
	local player = vRP.getUserSource(user_id)
	if vRP.hasGroup(user_id,"[A.D.A] - Lider") then
		if vRP.hasGroup(user_id,"[A.D.A] - Gerente") then
			if vRP.hasGroup(user_id,"[A.D.A] - Membro") then
					TriggerClientEvent('roxos:permissao', player)
				else
					TriggerClientEvent('chatMessage',player, "ALERTA",{255,70,50},"Você não é desse gueto.")
			end
		end
	end
	
end)