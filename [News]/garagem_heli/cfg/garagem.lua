local cfg = {}

cfg.helidelegacia = {
    ["Delegacia HeliPraça"] = {
        garagem = {
            acessar = {x = 463.11233520508, y = -982.33831787109, z = 43.691925048828}, -- 463.11233520508,-982.33831787109,43.691925048828
            spawn = {
                {x = 449.31558227539, y = -981.09698486328, z = -981.09698486328,43.691631317139, h = 2.475},
            }
        }
    },
}

cfg.heliveiculos = {
    ["Garagem Heli"] = {
        { modelo = "helipc", nome = "Helicoptero", tipo = "Heli", quantidade = 99, img = "https://i.imgur.com/xA7lr4D.png" }
    }
}
return cfg