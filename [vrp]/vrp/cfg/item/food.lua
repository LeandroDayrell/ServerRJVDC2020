-- define some basic inventory items

local items = {}

-- gen food choices as genfunc
-- idname
-- ftype: eat or drink
-- vary_hunger
-- vary_thirst
local function gen(ftype, vary_hunger, vary_thirst)
  local fgen = function(args)
    local idname = args[1]
    local choices = {}
    local act = "Unknown"
    if ftype == "eat" then act = "Comer" elseif ftype == "drink" then act = "Beber" end
    local name = vRP.getItemName(idname)

    choices[act] = {function(player,choice)
      local user_id = vRP.getUserId(player)
      if user_id ~= nil then
        if vRP.tryGetInventoryItem(user_id,idname,1,false) then
          if vary_hunger ~= 0 then vRP.varyHunger(user_id,vary_hunger) end
          if vary_thirst ~= 0 then vRP.varyThirst(user_id,vary_thirst) end

          if ftype == "drink" then
            vRPclient._notify(player,"~b~ Bebendo "..name..".")
			vRPclient._consume(player,ftype)
          elseif ftype == "eat" then
            vRPclient._notify(player,"~o~ Comendo "..name..".")
			vRPclient._consume(player,ftype)
          end

          vRP.closeMenu(player)
        end
      end
    end}

    return choices
  end

  return fgen
end

-- DRINKS --

items["agua"] = {"Garrafa de Água","", gen("drink",0,-25),0.5}
items["leite"] = {"Caixa de Leite","", gen("drink",0,-15),0.5}
items["cafe"] = {"Xícara de Café","", gen("drink",0,-10),0.2}
items["cha"] = {"Xícara de Chá","", gen("drink",0,-15),0.2}
items["chagelado"] = {"ice-Tea","", gen("drink",0,-20), 0.5}
items["sucodelaranja"] = {"Suco de Laranja.","", gen("drink",0,-25),0.5}
items["cocacola"] = {"Coca Cola","", gen("drink",0,-35),0.3}
items["redbull"] = {"RedBull","", gen("drink",0,-40),0.3}
items["limonada"] = {"Limonada","", gen("drink",0,-45),0.3}
-- items["vodka"] = {"Absolut Vodka","", gen("drink",15,-65),0.5}  -- Adicionado no vrp_drugs

--FOOD

-- create Breed item
items["pao"] = {"Pão Seco","", gen("eat",-10,0),0.5}
items["donut"] = {"Donut","", gen("eat",-15,0),0.2}
items["tacos"] = {"Tacos","", gen("eat",-20,0),0.2}
items["pizza"] = {"Pizza","", gen("eat",-30,0),0.2}
items["sanduiche"] = {"Sanduíche","", gen("eat",-25,0),0.5}
items["churrasco"] = {"Churrasco","", gen("eat",-45,0),0.85}
items["pdonut"] = {"Donut Premium","", gen("eat",-25,0),0.5}

return items
