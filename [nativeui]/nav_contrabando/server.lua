local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
emP = {}
Tunnel.bindInterface("nav_contrabando",emP)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ARRAY
-----------------------------------------------------------------------------------------------------------------------------------------
local valores = {
	{ item = "algemas", quantidade = 1, compra = 20000, venda = 10000 },
	{ item = "capuz", quantidade = 1, compra = 20000, venda = 10000 },
	{ item = "lockpick", quantidade = 1, compra = 10000, venda = 5000 },
	{ item = "bombaadesiva", quantidade = 1, compra = 15000, venda = 7500 },
	{ item = "masterpick", quantidade = 1, compra = 50000, venda = 25000 },
	{ item = "pendrive", quantidade = 1, compra = 35000, venda = 17500 },
	{ item = "rebite", quantidade = 1, compra = 250, venda = 125 },
	{ item = "colete", quantidade = 1, compra = 5000, venda = 2500 },
	{ item = "placa", quantidade = 1, compra = 5000, venda = 2500 },
	--CONFERIR
	{ item = "ak103pack", quantidade = 1, compra = 330000, venda = 10000 },
	{ item = "mtarpack", quantidade = 1, compra = 230000, venda = 10000 },
	{ item = "thompsonpack", quantidade = 1, compra = 270000, venda = 10000 },
	{ item = "pumpshotgunpack", quantidade = 1, compra = 180000, venda = 10000 },
	{ item = "uzipack", quantidade = 1, compra = 120000, venda = 10000 },
	{ item = "fivesevenpack", quantidade = 1, compra = 85000, venda = 10000 },
	{ item = "coletepack", quantidade = 1, compra = 18000, venda = 10000 },
	{ item = "municaoakpack", quantidade = 1, compra = 10000, venda = 1000 },
	{ item = "municaofamaspack", quantidade = 1, compra = 8000, venda = 10000 },
	{ item = "municaothompsonpack", quantidade = 1, compra = 8000, venda = 1000 },
	{ item = "municaopumppack", quantidade = 1, compra = 6000, venda = 1000 },
	{ item = "municaouzipack", quantidade = 1, compra = 4000, venda = 1000 },
	{ item = "municaopistolpack", quantidade = 1, compra = 2000, venda = 1000 },
	--
	{ item = "cano_parts", quantidade = 1, compra = 90000},
	{ item = "carregador_parts", quantidade = 1, compra = 20000},
	{ item = "ferrolho_parts", quantidade = 1, compra = 30000},
	{ item = "canoestendido_parts", quantidade = 1, compra = 150000},
	{ item = "polvora", quantidade = 1, compra = 2000},
	{ item = "capsula", quantidade = 1, compra = 2000},
	{ item = "kevlar", quantidade = 1, compra = 8000},
	{ item = "kitcostura", quantidade = 1, compra = 8000},
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- COMPRAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("contrabando-comprar")
AddEventHandler("contrabando-comprar",function(item)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		for k,v in pairs(valores) do
			if item == v.item then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight(v.item)*v.quantidade <= vRP.getInventoryMaxWeight(user_id) then
					if vRP.tryGetInventoryItem(user_id,"dinheirosujo",v.compra) then
						vRP.giveInventoryItem(user_id,v.item,parseInt(v.quantidade))
						TriggerClientEvent("Notify",source,"sucesso","Comprou <b>"..parseInt(v.quantidade).."x "..vRP.getItemName(v.item).."</b> por <b>$"..vRP.format(parseInt(v.compra)).." dólares sujos</b>.")
					else
						TriggerClientEvent("Notify",source,"negado","Dinheiro sujo insuficiente.")
					end
				else
					TriggerClientEvent("Notify",source,"negado","Espaço insuficiente.")
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- COMPRAR 2
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("contrabandoarmas-comprar")
AddEventHandler("contrabandoarmas-comprar",function(item)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		for k,v in pairs(valores) do
			if item == v.item then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight(v.item)*v.quantidade <= vRP.getInventoryMaxWeight(user_id) then
					if vRP.tryGetInventoryItem(user_id,"dinheirosujo",v.compra) then
						vRP.giveInventoryItem(user_id,v.item,parseInt(v.quantidade))
						TriggerClientEvent("Notify",source,"sucesso","Comprou <b>"..parseInt(v.quantidade).."x "..vRP.getItemName(v.item).."</b> por <b>$"..vRP.format(parseInt(v.compra)).." dólares sujos</b>.")
					else
						TriggerClientEvent("Notify",source,"negado","Dinheiro sujo insuficiente.")
					end
				else
					TriggerClientEvent("Notify",source,"negado","Espaço insuficiente.")
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- COMPRAR 3
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("contrabandomuni-comprar")
AddEventHandler("contrabandomuni-comprar",function(item)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		for k,v in pairs(valores) do
			if item == v.item then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight(v.item)*v.quantidade <= vRP.getInventoryMaxWeight(user_id) then
					if vRP.tryGetInventoryItem(user_id,"dinheirosujo",v.compra) then
						vRP.giveInventoryItem(user_id,v.item,parseInt(v.quantidade))
						TriggerClientEvent("Notify",source,"sucesso","Comprou <b>"..parseInt(v.quantidade).."x "..vRP.getItemName(v.item).."</b> por <b>$"..vRP.format(parseInt(v.compra)).." dólares sujos</b>.")
					else
						TriggerClientEvent("Notify",source,"negado","Dinheiro sujo insuficiente.")
					end
				else
					TriggerClientEvent("Notify",source,"negado","Espaço insuficiente.")
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VENDER
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("contrabando-vender")
AddEventHandler("contrabando-vender",function(item)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		for k,v in pairs(valores) do
			if item == v.item then
				if vRP.tryGetInventoryItem(user_id,v.item,parseInt(v.quantidade)) then
					vRP.giveInventoryItem(user_id,"dinheirosujo",parseInt(v.venda))
					TriggerClientEvent("Notify",source,"sucesso","Vendeu <b>"..parseInt(v.quantidade).."x "..vRP.getItemName(v.item).."</b> por <b>$"..vRP.format(parseInt(v.venda)).." dólares sujos</b>.")
				else
					TriggerClientEvent("Notify",source,"negado","Não possui <b>"..parseInt(v.quantidade).."x "..vRP.getItemName(v.item).."</b> em sua mochila.")
				end
			end
		end
	end
end)

function emP.checkPermission()
	local source = source
	local user_id = vRP.getUserId(source)
	return vRP.hasPermission(user_id,"mercadonegro.permissao")
end