
local cfg = {}

-- PCs positions
cfg.pcs = {
  {1853.21, 3689.51, 34.2671}
}

-- vehicle tracking configuration
cfg.trackveh = {
  min_time = 300, -- min time in seconds
  max_time = 600, -- max time in seconds
  service = "police" -- service to alert when the tracking is successful
}

-- wanted display
cfg.wanted = {
  blipid = 458,
  blipcolor = 38,
  service = "police"
}

-- illegal items (seize)
-- specify list of "idname" or "*idname" to seize all parametric items
cfg.seizable_items = {
  "dirty_money",
  "folhadecoca",
  "cocaina",
  "seeds",
  "maconha",
  "crystalmelamine",
  "metanfetamina",
  "rede",
  "tartaruga",
  "cartao",
  "AK47",
  "M4A1",
  "*wbody",
  "*wammo"
}

-- jails {x,y,z,radius}
cfg.jails = {
  {459.485870361328,-1001.61560058594,24.914867401123,2.1},
  {459.305603027344,-997.873718261719,24.914867401123,2.1},
  {459.999938964844,-994.331298828125,24.9148578643799,1.6}
}

-- fines
-- map of name -> money
cfg.fines = {
	["Alta velocidade"] = 500,
	["Direção perigosa"] = 1000,
	["Sinal vermelho"] = 100,
	["Sem capacete"] = 800,
	["Sem habilitação"] = 2000,
	["Veiculo danificado"] = 700,
	["Estacionar local proibido"] = 200,
	["Dirigir embriagado"] = 3200,
	["Uso de buzina policial"] = 1500,
	["Mascara"] = 900,
	["Capacete (balistico)"] = 600,
	["Difamação"] = 3200,
	["Furto"] = 500,
	["Fraude"] = 1200,
	["Desacato"] = 1300,
	["Assedio"] = 3200,
	["Atentado ao pudor"] = 1000,
	["Poluição sonora"] = 800,
	["PIA Taurus PT92"] = 3200,
	["PIA Pistola"] = 2000,
	["PIA Parafal"] = 12000,
	["PIA Taurus Famae mt40"] = 4500,
	["PIA Winchester (12)"] = 3000,
	["PIA Ak-47"] = 6000,
	["Tráfico de armas"] = 12000
}

return cfg
