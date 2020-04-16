
local cfg = {}

-- minimum capital to open a business
cfg.minimum_capital = 1000000

-- capital transfer reset interval in minutes
-- default: reset every 24h
cfg.transfer_reset_interval = 24*60

-- commerce chamber {blipid,blipcolor}
cfg.blip = {431,70} 

-- positions of commerce chambers
cfg.commerce_chambers = {
  {-1081.9150390625,-247.46743774414,37.763294219971}
}

return cfg
