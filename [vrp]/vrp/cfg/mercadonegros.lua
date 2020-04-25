local cfg = {}

cfg.mercadonegro_types = {
  ["Componente de Arma 1"] = {
    _config = {blipid=468, blipcolor=46},
    ["cano_parts"] = 17000,
	["polvora"] = 50,
	["capsula"] = 50,
	["kevlar"] = 8000,
	["kitcostura"] = 8000,
	["embalagem"]=20,
	["c4"]=2000
  }, 
  ["Componente de Arma 2"] = {
    _config = {blipid=468, blipcolor=46},
    ["carregador_parts"] = 12000,
	["polvora"] = 50,
	["capsula"] = 50,
	["kevlar"] = 8000,
	["kitcostura"] = 8000,
	["embalagem"]=20,
	["c4"]=2000
  }, 
  ["Componente de Arma 3"] = {
    _config = {blipid=468, blipcolor=46},
    ["ferrolho_parts"] = 12000,
	["polvora"] = 50,
	["capsula"] = 50,
	["kevlar"] = 8000,
	["kitcostura"] = 8000,
	["embalagem"]=20,
	["c4"]=2000
  }, 
  ["Componente de Arma 4"] = {
    _config = {blipid=468, blipcolor=46},
    ["canoestendido_parts"] = 90000,
	["polvora"] = 50,
	["capsula"] = 50,
	["kevlar"] = 8000,
	["kitcostura"] = 8000,
	["embalagem"]=20,
	["c4"]=2000
  }, 
  ["Loja de Embalagens"] = {
    _config = {blipid=468, blipcolor=46, permissions={"embalagem.market"}},
    ["embalagem"] = 5,
  }, 
}

cfg.mercadonegros = {

  {"Componente de Arma 1",1728.8515625,6414.1420898438,35.037220001221}, -- Componente de Arma 1
  {"Componente de Arma 2",-2962.8483886719,389.96035766602,15.043313980103}, -- Componente de Arma 2
  {"Componente de Arma 3",2557.5302734375,382.82369995117,108.62297058105}, -- Componente de Arma 3
  {"Componente de Arma 4",1211.1260986328,-1389.0750732422,35.376899719238}, -- Componente de Arma 4
  --{"Loja de Embalagens",1211.1260986328,-1389.0750732422,35.376899719238}, -- PCC
  --{"Loja de Embalagens",853.84320068359,3047.7824707031,41.898235321045}, -- MILICIA
  --{"Loja de Embalagens",984.14385986328,-137.74629211426,73.090759277344}, -- MOTOCLUB MC
  --{"Loja de Embalagens",1758.4793701172,3297.376953125,41.146469116211}, -- DRIFT KING
  --{"Loja de Embalagens",1357.1254882813,-2513.6091308594,49.488655090332}, -- TCP
  --{"Loja de Embalagens",1684.9846191406,42.533348083496,161.76719665527}, -- ADA
  --{"Loja de Embalagens",812.36920166016,1147.4810791016,317.45983886719}, -- CV
  --{"Loja de Embalagens",3607.5102539063,3731.2102050781,29.689418792725}, -- COSA NOSTRA
  

}

return cfg