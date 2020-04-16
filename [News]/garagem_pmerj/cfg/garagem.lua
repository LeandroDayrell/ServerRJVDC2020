local cfg = {}

cfg.pmerjdelegacia = {
    ["Delegacia PMERJ"] = {
        garagem = {
            acessar = {x = -2033.0135498047, y = -461.45184326172, z = 12.213407516479}, -- -2033.0135498047,-461.45184326172,12.213407516479
            spawn = {
                {x = -2012.9661865234, y = -469.37088012695, z = 12.213412284851, h = 2.475},
				{x = -2008.0633544922, y = -474.09652709961, z = 12.213417053223, h = 2.475},
				{x = -2003.2489013672, y = -479.02252197266, z = 12.213412284851, h = 2.475}
            }
        }
    },
}

cfg.pmerjveiculos = {
    ["Garagem PMERJ"] = {
        { modelo = "voyagepmerj", nome = "Voyage", tipo = "PMERJ", quantidade = 99, img = "https://i.imgur.com/3q1I6rw.png" },
		{ modelo = "s10pmerj", nome = "S10", tipo = "PMERJ", quantidade = 99, img = "https://i.imgur.com/9fTsSry.png" },
		{ modelo = "loganpmerj", nome = "Logan", tipo = "PMERJ", quantidade = 99, img = "https://i.imgur.com/Ev7AdUD.png" },
		{ modelo = "corollapmerj", nome = "Corolla", tipo = "PMERJ", quantidade = 99, img = "https://i.imgur.com/onS2qhC.png" },
		{ modelo = "versapmerj", nome = "Versa", tipo = "PMERJ", quantidade = 99, img = "https://i.imgur.com/TxcPhAo.png" },
		{ modelo = "s10bpchq", nome = "S10-BP", tipo = "PMERJ", quantidade = 99, img = "https://i.imgur.com/IKjJ6jx.png" },
		{ modelo = "sw4bpchq", nome = "SW4-BP", tipo = "PMERJ", quantidade = 99, img = "https://i.imgur.com/K1pPqYI.png" },
		{ modelo = "frontierrecom", nome = "Frontier-Recom", tipo = "PMERJ", quantidade = 99, img = "https://i.imgur.com/tUioq1p.png" },
		{ modelo = "frontierrecom2", nome = "Frontier2-Recom", tipo = "PMERJ", quantidade = 99, img = "https://i.imgur.com/oGpLAdz.png" },
		-- moto
		{ modelo = "xrepmerj", nome = "XRE 300", tipo = "moto", quantidade = 99, img = "https://i.imgur.com/qieJ8GN.png" },
		{ modelo = "xrebpchq", nome = "XRE-BP 300", tipo = "moto", quantidade = 99, img = "https://i.imgur.com/ZxGgfU2.png" },
    }
}
return cfg