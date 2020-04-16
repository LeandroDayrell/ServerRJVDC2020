local cfg = {}

cfg.delegacia = {
    ["Delegacia Praça"] = {
        garagem = {
            acessar = {x = 452.772, y = -1020.803, z = 28.347}, -- 452.772, -1020.803, 28.347
            spawn = {
                {x = 427.565, y = -1028.308, z = 28.986, h = 2.475},
                {x = 431.230, y = -1027.749, z = 28.920, h = 2.475},
                {x = 434.916, y = -1027.306, z = 28.853, h = 2.475},
                {x = 439.292, y = -1027.312, z = 28.777, h = 2.475},
                {x = 442.362, y = -1026.780, z = 28.719, h = 2.475},
                {x = 445.764, y = -1026.235, z = 28.654, h = 2.475},
            }
        }
    },
}

cfg.veiculos = {
    ["Garagem LSPD 1"] = {
        { modelo = "voyagepc", nome = "Voyage", tipo = "carro", quantidade = 99, img = "https://i.imgur.com/bBPK35N.png" },
        { modelo = "corollapc", nome = "Corolla", tipo = "carro", quantidade = 99, img = "https://i.imgur.com/OViW5wk.png" },
        { modelo = "dusterpc", nome = "Duster", tipo = "carro", quantidade = 99, img = "https://i.imgur.com/6hQ10VG.png" }
    }
}
return cfg