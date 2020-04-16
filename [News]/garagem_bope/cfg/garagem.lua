local cfg = {}

cfg.bopedelegacia = {
    ["Delegacia bope"] = {
        garagem = {
            acessar = {x = 833.55328369141, y = 147.38053894043, z = 82.810508728027}, -- 833.55328369141,147.38053894043,82.810508728027
            spawn = {
                {x = 842.63665771484, y = 157.60725402832, z = 82.810607910156, h = 2.475},
				{x = 840.00988769531, y = 152.85000610352, z = 82.810600280762, h = 2.475},
				{x = 835.27362060547, y = 147.0467376709, z = 82.810554504395, h = 2.475}
            }
        }
    },
}

cfg.bopeveiculos = {
    ["Garagem bope"] = {
        { modelo = "trailblazerbope", nome = "Trailer", tipo = "bope", quantidade = 99, img = "https://i.imgur.com/5hc1bGr.png" },
		{ modelo = "hiluxsrvbope", nome = "Hilux", tipo = "bope", quantidade = 99, img = "https://i.imgur.com/5hc1bGr.png" },
		{ modelo = "s10bope", nome = "S10", tipo = "bope", quantidade = 99, img = "https://i.imgur.com/SIbMbmB.png" },
		{ modelo = "riot", nome = "Blindado", tipo = "bope", quantidade = 99, img = "https://i.imgur.com/X8o4QBW.png" },
    }
}
return cfg