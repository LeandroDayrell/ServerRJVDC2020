-- define items, see the Inventory API on github

local cfg = {}

-- see the manual to understand how to create parametric items
-- idname = {name or genfunc, description or genfunc, genfunc choices or nil, weight or genfunc}
-- a good practice is to create your own item pack file instead of adding items here
cfg.items = {
	["isca"] = {"Isca", "Isca pescar Peixes", nil, 0.01},
	["robalo"] = {"Peixe Robalo", "Peixe Fresco.", nil, 3.00},
	["traira"] = {"Peixe Traira", "Peixe Fresco.", nil, 3.00},
	
	["balde"] = {"Balde", "Usado para ordenhar Leite", nil, 0.50}, 
	["leite"] = {"Balde de Leite", "Pronto pra Venda", nil, 2.00},
	
	["erva_medicinal"] = {"Ervas Medicinais", "Plantas de Maconha para criar Remedios.", nil, 2.00},
	["remedio"] = {"Remedio", "Remedio criado a partir de ervas medicinais.", nil, 1.00},
	
	["picareta"] = {"Picareta", "Usada para minerar pedras", nil, 1.00},
	["diamante_bruto"] = {"Diamante Bruto", "Diamante com pedras", nil, 1.00},
	["diamante_refinado"] = {"Diamante", "Diamante pronto pra Venda", nil, 0.80},
	["ouro_bruto"] = {"Pepitas de Ouro", "Pedra", nil, 1.00},
	["ouro_refinado"] = {"Ouro", "Ouro pronto pra Venda", nil, 0.80},
	["cobre_bruto"] = {"Pepitas de Cobre", "Pedra", nil, 1.00},
	["cobre_refinado"] = {"Cobre", "Cobre pronto pra Venda", nil, 0.80},
	["pedra"] = {"Pedras", "Pedras que não tem tanta utilidade", nil, 2.00},
	
	["foice"] = {"Foice", "Para colher Trigo", nil, 1.00},
	["trigo"] = {"Trigo", "Trigo fresco", nil, 0.50},
	["caixa_de_trigo"] = {"Caixa de Trigo", "Caixa de Trigo para Venda", nil, 2.00},
	
	["pa"] = {"Pa", "Para coletar Sal", nil, 1.00},
	["sal_fino"] = {"Sal Fino", "Deve ser refinado", nil, 1.00},
	["pacote_sal"] = {"Pacote de Sal", "Sal pronto para Venda", nil, 2.00},
	
	["folhadecoca"] = {"Folhas de Coca", "Folhas de Coca.", nil, 1.00},
	["cocaina"] = {"Cocaina", "Cocaina Processada.", nil, 1.00}, -- Adicionado no vrp_drugs
	
	["seeds"] = {"Folhas de Maconha", "Folhas de Maconha.", nil, 1.00},
	["maconha"] = {"Maconha", "Maconha Processada.", nil, 1.00},  -- Adicionado no vrp_drugs
	
	["crystalmelamine"] = {"Cristal Melamine", "Metanfetamina Bruta.", nil, 1.00},
	["metanfetamina"] = {"Metanfetamina", "Metanfetamina Processada.", nil, 1.00}, -- Adicionado no vrp_drugs
	
	["rede"] = {"Rede", "Para pescar Tartaruga", nil, 0.01},
	["tartaruga"] = {"Tartaruga", "Tartaruga pescada ilegalmente", nil, 4.00},
	
	["cartao"] = {"Inf Cartao de Credito", "Cartao de Credito.", nil, 0.50},
	
	["AK47"] = {"AK47", "Fuzil Potente da Russia.", nil, 3.00},
	["M4A1"] = {"M4A1", "Um rifle de assalto Americano.", nil, 3.00},
	
	["oab"] = {"Carteira da OAB", "", nil, 0.01},
	
	["croquettes"] = {"Ração para Animais", "", nil, 0.01},
}

-- load more items function
local function load_item_pack(name)
  local items = module("cfg/item/"..name)
  if items then
    for k,v in pairs(items) do
      cfg.items[k] = v
    end
  else
    print("[vRP] item pack ["..name.."] not found")
  end
end

-- PACKS
load_item_pack("required")
load_item_pack("food")
load_item_pack("drugs")
load_item_pack("police")

return cfg
