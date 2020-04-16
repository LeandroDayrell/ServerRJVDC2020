
local cfg = {}
-- define garage types with their associated vehicles
-- (vehicle list: https://wiki.fivem.net/wiki/Vehicles)

-- each garage type is a map of veh_name => {title, price, description}
-- _config: blipid, blipcolor, permissions (optional, only users with the permissions will have access to the shop)

cfg.rent_factor = 0.1 -- 10% of the original price if a rent
cfg.sell_factor = 0.75 -- sell for 75% of the original price

cfg.garage_types = {

}

-- {garage_type,x,y,z}
cfg.garages = {

}

return cfg
