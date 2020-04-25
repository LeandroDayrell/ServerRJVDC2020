-- a basic mercadonegro implementation

local lang = vRP.lang
local cfg = module("cfg/mercadonegros")
local mercadonegro_types = cfg.mercadonegro_types
local mercadonegros = cfg.mercadonegros

local mercadonegro_menus = {}


-- build mercadonegro menus
local function build_mercadonegro_menus()
  for gtype,mitems in pairs(mercadonegro_types) do
    local mercadonegro_menu = {
      name="MERCADO NEGRO"),
      css={top = "75px", header_color="rgba(255,255,255,0.75)"}
    }

    -- build mercadonegro items
    local kitems = {}

    -- item choice
    local mercadonegro_choice = function(player,choice)
      local idname = kitems[choice][1]
      local item = vRP.items[idname]
      local price = kitems[choice][2]

      if item then
        -- prompt amount
        local user_id = vRP.getUserId(player)
        if user_id ~= nil then
          vRP.prompt(player,"DIGITE A QUANTIDADE"),"",function(player,amount)
            local amount = parseInt(amount)
            if amount > 0 then
			total = amount*price
              -- weight check
              local new_weight = vRP.getInventoryWeight(user_id)+item.weight*amount
              if new_weight <= vRP.getInventoryMaxWeight(user_id) then
                -- payment
                if vRP.tryGetInventoryItem(user_id,"dinheirosujo",total) then
                  vRP.giveInventoryItem(user_id,idname,amount,true)
                  vRPclient.notify(player,{lang.money.paid({amount*price})}) --
                else
                  vRPclient.notify(player,{lang.money.not_enough()})
                end
              else
                vRPclient.notify(player,{lang.inventory.full()})
              end
            else
              vRPclient.notify(player,{lang.common.invalid_value()})
            end
          end)
        end
      end
    end

    -- add item options
    for k,v in pairs(mitems) do
      local item = vRP.items[k]
      if item then
        kitems[item.name] = {k,math.max(v,0)} -- idname/price
         mercadonegro_menu[item.name] = {mercadonegro_choice,lang.mercadonegro.info({v,item.description.. "\n\n" ..item.weight.. " kg"})}
      end
    end

    mercadonegro_menus[gtype] = mercadonegro_menu
  end
end

local first_build = true

local function build_client_mercadonegros(source)
  -- prebuild the mercadonegro menu once (all items should be defined now)
	if first_build then
		build_mercadonegro_menus()
		first_build = false
	end

	local user_id = vRP.getUserId(source)
	if user_id ~= nil then
		for k,v in pairs(mercadonegros) do
			local gtype,x,y,z = table.unpack(v)
			local group = mercadonegro_types[gtype]
			local menu = mercadonegro_menus[gtype]

			if group and menu then -- check mercadonegro type
				local gcfg = group._config
				local function mercadonegro_enter()
					local user_id = vRP.getUserId(source)
					if user_id ~= nil and vRP.hasPermissions(user_id,gcfg.permissions or {}) then
						vRP.openMenu(source,menu) 
					end
				end

        local function mercadonegro_leave()
          vRP.closeMenu(source)
        end

        vRPclient.addBlip(source,{x,y,z,gcfg.blipid,gcfg.blipcolor,lang.mercadonegro.title({gtype})})
        vRPclient.addMarker(source,{x,y,z-0.87,0.7,0.7,0.5,255,255,255,125,150})

        vRP.setArea(source,"vRP:mercadonegro"..k,x,y,z,1,1.5,mercadonegro_enter,mercadonegro_leave)
      end
    end
  end
end

AddEventHandler("vRP:playerSpawn",function(user_id, source, first_spawn)
	if first_spawn then
		build_client_mercadonegros(source)
	end
end)
