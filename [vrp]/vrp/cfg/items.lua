local cfg = {}

cfg.items = {
	["ferramenta"] = { "Ferramenta",3 },
	["encomenda"] = { "Encomenda",1.5 },
	["sacodelixo"] = { "Saco de Lixo",2 },
	["garrafavazia"] = { "Garrafa Vazia",0.2 },
	["garrafadeleite"] = { "Garrafa de Leite",0.5 },
	["tora"] = { "Tora de Madeira",0.6 },
	["alianca"] = { "Aliança",0 },
	["bandagem"] = { "Bandagem",0.7 },
	["cerveja"] = { "Cerveja",0.7 },
	["tequila"] = { "Tequila",0.7 },
	["roupas"] = { "Roupas",1.0 },
	["vodka"] = { "Vodka",0.7 },
	["Furadeira"] = { "Furadeira",3.0 },
	["bombaadesiva"] = { "Bomba Adesiva",0.5 },
	["whisky"] = { "Whisky",0.7 },
	["rpprotecao"] = { "Colete Médico",1.0 },
	["colete"] = { "Colete Balístico",1.0 },
	["conhaque"] = { "Conhaque",0.7 },
	["absinto"] = { "Absinto",0.7 },
	["dinheirosujo"] = { "Dinheiro Sujo",0 },
	["repairkit"] = { "Kit de Reparos",1 },
	["algemas"] = { "Algemas",1 },
	["capuz"] = { "Capuz",0.5 },
	["lockpick"] = { "Lockpick",10 },
	["masterpick"] = { "Masterpick",10 },
	["militec"] = { "Militec-1",0.8 },
	["carnedecormorao"] = { "Carne de Cormorão",0.7 },
	["carnedecorvo"] = { "Carne de Corvo",0.7 },
	["rastreador"] = { "Rastreador",0.5 },
	["croquettes"] = { "Ração",0.05 },
	["cannabis"] = { "Cannabis",0.5 },
	["pseudoefedrina"] = { "Pseudoefedrina",0.5 },
	["anfetamina"] = { "Anfetamina",0.5 },
	["ritalina"] = { "Ritalina",0.5 },
	["metasuja"] = { "Metanfetamina Suja",0.5 },
	["nitro"] = { "nitro",0.5 },
	
	["acetofenetidina"] = { "Acetofenetidina",0.5 },
	["benzoilecgonina"] = { "Benzoilecgonina",0.5 },
	["cloridratoecgonina"] = { "Cloridratoecgonina",0.5 },
	["cloridratococa"] = { "Cloridratococa",0.5 },
	["pastadecoca"] = { "Pasta de Cocaina",0.5 },	
	["pastadecrack"] = { "Pasta de Crack",0.5 },
	
	["mouro"] = { "Ouro",0.8 },	
	["mferro"] = { "Ferro",0.5 },	
	["mbronze"] = { "Bronze",0.3 },	
	["mesmeralda"] = { "Esmeralda",0.6 },	
	["mrubi"] = { "Rubi",0.6 },	
	["diamante"] = { "Diamante",0.5 },	
	
	--CONFERIR
	["ak103pack"] = { "Ak 103 Pack",5 },
	["coletepack"] = { "Colete Pack",5 },
	["fivesevenpack"] = { "Five-Seven Pack",5 },
	["mtarpack"] = { "Mtar Pack",5 },
	["pumpshotgunpack"] = { "Pump Shotgun Pack",5 },
	["thompsonpack"] = { "Thompson Pack",5 },
	["uzipack"] = { "Uzi Pack",5 },
	["municaoakpack"] = { "Municao Ak Pack",5 },
	["municaofamaspack"] = { "Municao Mtar Pack",5 },
	["municaopistolpack"] = { "Municao Five-Seven Pack",5 },
	["municaopumppack"] = { "Municao PumpShotgun Pack",5 },
	["municaothompsonpack"] = { "Municao Thompson Pack",5 },
	["municaouzipack"] = { "Municao Uzi Pack",5 },

    ["agua"] = { "Água",0.5 },	
    ["limonada"] = { "Limonada",0.4 },	
    ["refrigerante"] = { "Refrigerante",0.4 },	
    ["cafe"] = { "Café",0.4 },	
    ["pao"] = { "Pão",0.1 },	
    ["sanduiche"] = { "Sanduiche",0.1 },
    ["chocolate"] = { "chocolate",0.1 },
    ["salgadinho"] = { "salgadinho",0.1 },
    ["rosquinha"] = { "rosquinha",0.1 },
    ["pizza"] = { "pizza",0.2 },	



	["carnedeaguia"] = { "Carne de Águia",0.8 },
	["carnedecervo"] = { "Carne de Cervo",0.9 },
	["carnedecoelho"] = { "Carne de Coelho",0.7 },
	["carnedecoyote"] = { "Carne de Coyote",1 },
	["carnedelobo"] = { "Carne de Lobo",1 },
	["carnedepuma"] = { "Carne de Puma",1.3 },
	["carnedejavali"] = { "Carne de Javali",1.4 },
	["isca"] = { "Isca",0.6 },
	["dourado"] = { "Dourado",0.6 },
	["corvina"] = { "Corvina",0.6 },
	["salmao"] = { "Salmão",0.6 },
	["pacu"] = { "Pacu",0.6 },
	["pintado"] = { "Pintado",0.6 },
	["pirarucu"] = { "Pirarucu",0.6 },
	["tilapia"] = { "Tilápia",0.6 },
	["tucunare"] = { "Tucunaré",0.6 },
	["lambari"] = { "Lambari",0.6 },
	["energetico"] = { "Energético",0.3 },
	["mochila"] = { "Mochila",1 },
	["adubo"] = { "Adubo",0.8 },
	["fertilizante"] = { "Fertilizante",0.8 },
	["maconha"] = { "Maconha",0.8 },
	["placa"] = { "Placa",0.8 },
	["rebite"] = { "Rebite",0.8 },
	["capsula"] = { "Cápsula",0.03 },
	["carbono"] = { "Carbono",0.0038 },
	["ferro"] = { "Ferro",0.0038 },
	["aco"] = { "Aço",0.0038 },
	["orgao"] = { "Órgão",1.2 },
	["etiqueta"] = { "Etiqueta",0 },
	["pendrive"] = { "Pendrive",0.1 },
	["relogioroubado"] = { "Relógio Roubado",0.3 },
	["pulseiraroubada"] = { "Pulseira Roubada",0.2 },
	["anelroubado"] = { "Anel Roubado",0.2 },
	["colarroubado"] = { "Colar Roubado",0.2 },
	["brincoroubado"] = { "Brinco Roubado",0.2 },
	["carteiraroubada"] = { "Carteira Roubada",0.2 },
	["carregadorroubado"] = { "Carregador Roubado",0.2 },
	["tabletroubado"] = { "Tablet Roubado",0.2 },
	["sapatosroubado"] = { "Sapatos Roubado",0.2 },
	["vibradorroubado"] = { "Vibrador Roubado",0.2 },
	["perfumeroubado"] = { "Perfume Roubado",0.2 },
	["maquiagemroubada"] = { "Maquiagem Roubada",0.2 },
	
	-- Farm de Metanfetamina
	["acucar"] = { "Açucar",0.8 },
	["xarope"] = { "Xarope",0.8 },
	["metanfetamina"] = { "Metanfetamina",0.8 },
	
	-- Farm de Cocaína
	["farinha"] = { "Farinha",0.8 },
	["po"] = { "Pó",0.8 },
	["cocaina"] = { "Cocaína",0.8 },
	["crack"] = { "Crack",0.8 },
	
	
	["cano_parts"] = {"Cano",1}, --
	["carregador_parts"] = {"Carregador",1}, --
	["ferrolho_parts"] = {"Ferrolho", 1},  --
	["canoestendido_parts"] = {"Cano Estendido",1},  --
	
	
	
	["polvora"] = {"Polvora", 0.30},
  ["capsula"] = {"Capsula", 0.30},
  ["kevlar"] = {"Kevlar", 1},
  ["kitcostura"] = {"Kit De Costura",  1},
  ["docedeecstasy"] = {"docedeecstasy", 0.50}, -- no choices
  ["pastadecocaina"] = {"pastadecocaina", 0.50}, -- no choices 
  ["pinodecoca"] = {"pinodecoca",  0.50}, -- no choices
  ["pedradecrack"] = {"pedradecrack", 0.50},
  
  
  
  ["hidrazida"] = {"hidrazida", 1}, -- no choices
	["eter"] = {"eter", 1}, -- no choices
	["lsd"] = {"lsd", 0.50}, -- no choices
	
	["pecacacaniquel"] = {"Peça Caça Niquel",1},
	["placamae"] = {"Placa mãe",1},		
	["maquinacacaniquel"] = {"Maquina Caça Niquel",0.50},
	
	["metil"] = {"metil",  1}, -- no choices 
	["cafeina"] = {"Cafeina pra Ecstasy",  1}, -- no choices 
	["ecstasy"] = {"Ecstasy",  0.5}, -- no choices 

	["leitedepapoula"] = {"Leite de Papoula",  1}, -- no choices
	["alcaloide"] = {"Alcaloide MORFINA",  1}, -- no choices
	["morfina"] = {"Morfina",  0.50}, -- no choices
}

local function load_item_pack(name)
	local items = module("cfg/item/"..name)
	if items then
		for k,v in pairs(items) do
			cfg.items[k] = v
		end
	end
end

load_item_pack("armamentos")

return cfg