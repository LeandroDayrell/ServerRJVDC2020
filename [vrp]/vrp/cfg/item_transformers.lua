
local cfg = {}

-- define static item transformers
-- see https://github.com/ImagicTheCat/vRP to understand the item transformer concept/definition

cfg.item_transformers = {
  {
    name="Area de Pesca", -- menu name
    permissions = {"pescador.service"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=2000,
    units_per_minute=200,
    x=743.19586181641,y=3895.3967285156,z=30.5, 
    radius=4, height=1.5, -- area
	anim = {task="WORLD_HUMAN_STAND_FISHING"},
    recipes = {
      ["Peixe Robalo"] = { -- action name
        description="Pescando Peixe Robalo com Isca", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["isca"] = 1
		},
        products={ -- items given per unit
          ["robalo"] = 2
        }
      },
      ["Peixe Traira"] = { -- action name
        description="Pescando Peixes Traira com Isca", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["isca"] = 1
		},
        products={ -- items given per unit
          ["traira"] = 2
        }
      }
    }
  },
  {
    name="Venda de peixes", -- menu name
    permissions = {"pescador.service"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=2000,
    units_per_minute=200,
    x=3435.0993652344,y=5180.98046875,z=7.3821382522583, -- 3435.0993652344,5180.98046875,7.3821382522583
    radius=4, height=1.5, -- area
	anim = {task="WORLD_HUMAN_COP_IDLES"},
    recipes = {
      ["Vender Robalo"] = { -- action name
        description="Vendendo Robalo", -- action description
        in_money=0, -- money taken per unit
        out_money=65, -- money earned per unit
        reagents={  -- items taken per unit
          ["robalo"] = 1
        },
        products={ -- items given per unit
        }
      },
      ["Vender Traira"] = { -- action name
        description="Vendendo Traira", -- action description
        in_money=0, -- money taken per unit
        out_money=75, -- money earned per unit
        reagents={  -- items taken per unit
          ["traira"] = 1
        },
        products={ -- items given per unit
        }
      }
    }
  },
  {
    name="Curral de vacas", -- menu name
    permissions = {"leiteiro.service"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=2000, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=1454.0698242188,y=1135.8381347656,z=114.33085632324, -- 1454.0698242188,1135.8381347656,114.33085632324
    radius=2.5, height=1.5, -- area
	anim = {{"anim@heists@heist_safehouse_intro@phone_couch@male","phone_couch_male_idle"}},
    recipes = { -- items do menu
      ["Ordenhar"] = { -- action name
        description="Ordenhando Leite com o Balde.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["balde"] = 1
		},
        products={ -- items given per unit
          ["leite"] = 2
        }
      }
    }
  },
  {
    name="Vender de Leite", -- menu name
    permissions = {"leiteiro.service"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=2000, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=2570.9501953125,y=4693.251953125,z=34.076774597168, -- 2570.9501953125,4693.251953125,34.076774597168
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender"] = { -- action name
        description="Vendendo Leite.", -- action description
        in_money=0, -- money taken per unit
        out_money=55, -- money earned per unit
        reagents={  -- items taken per unit
          ["leite"] = 1
        },
        products={ -- items given per unit
        }
      }
    }
  },
  {
    name="Coletar Ervas Medicinais", -- menu name
    permissions = {"farmaceutico.service"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=4000,
    units_per_minute=2000,
    x=2213.0520019531,y=5577.5981445313,z=53.795757293701,
    radius=3, height=1.5, -- area
    recipes = {
      ["Ervas Medicinais"] = { -- action name
        description="Ervas para uso Medicinais", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["ervas_medicinal"] = 1
        }
      }
	 }
  },
  {
    name="Processamento Ervas Medicinais", -- menu name
    permissions = {"farmaceutico.service"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=4000, -- unidades maximas do item
    units_per_minute=2000, -- unidades que o transformador ganha de volta por minuto
    x=3512.9367675781,y=3755.2492675781,z=29.968465805054, -- pos
    radius=1.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processando de Ervas Medicinais.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["ervas_medicinal"] = 1
		},
        products={ -- items given per unit
          ["remedio"] = 1
        }
      }
    }
  },
  {
    name="Vender Remedios", -- menu name
    permissions = {"farmaceutico.service"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=4000, -- unidades maximas do item
    units_per_minute=2000, -- unidades que o transformador ganha de volta por minuto
    x=-779.20794677734,y=-599.43023681641,z=30.27626991272, -- -779.20794677734,-599.43023681641,30.27626991272
    radius=1.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender"] = { -- action name
        description="Vendendo Ervas Medicinais.", -- action description
        in_money=0, -- money taken per unit
        out_money=100, -- money earned per unit
        reagents={  -- items taken per unit
          ["remedio"] = 1
		},
        products={ -- items given per unit
          
        }
      }
    }
  },
  {
    name="Campo de Diamante", -- Nome do menu
    permissions = {"diamante.service"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=5000,
    units_per_minute=2000,
    x=-594.40759277344,y=2092.2802734375,z=131.56622314453, -- Localização
    radius=2.5, height=1.5, -- area
	anim = {task="WORLD_HUMAN_CONST_DRILL"},
    recipes = {
      ["Minerar"] = { -- Nome da ação
        description="Minerando diamante bruto.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={  -- items taken per unit
          ["picareta"] = 1
		},
        products={ -- items given per unit
          ["diamante_bruto"] = 1,
		  ["pedra"] = 5
        }
      }
    }
  },
  {
    name="Processamento de Diamante", -- menu name
    permissions = {"diamante.service"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=5000, -- unidades maximas do item
    units_per_minute=2000, -- unidades que o transformador ganha de volta por minuto
    x=1076.4499511719,y=-1978.3411865234,z=31.471761703491, -- 1076.4499511719,-1978.3411865234,31.471761703491
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processando Diamante.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["diamante_bruto"] = 2
		},
        products={ -- items given per unit
          ["diamante_refinado"] = 2
        }
      }
    }
  },
  {
    name="Venda de Diamante", -- menu name
    permissions = {"diamante.service"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=5000, -- unidades maximas do item
    units_per_minute=2000, -- unidades que o transformador ganha de volta por minuto
    x=-630.53564453125,y=-229.33541870117,z=38.057060241699, -- -630.53564453125,-229.33541870117,38.057060241699
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender"] = { -- action name
        description="Vendendo Diamante.", -- action description
        in_money=0, -- money taken per unit
        out_money=65, -- money earned per unit
        reagents={  -- items taken per unit
          ["diamante_refinado"] = 1
		},
        products={ -- items given per unit
        }
      }
    }
  },
  {
    name="Campo De Ouro", -- Nome do menu
    permissions = {"ouro.service"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=2000,
    units_per_minute=200,
    x=2947.0209960938,y=2802.8874511719,z=41.299701690674, -- Localização
    radius=2.5, height=1.5, -- area
	anim = {task="WORLD_HUMAN_CONST_DRILL"},
    recipes = {
      ["Minerar"] = { -- Nome da ação
        description="Minerando ouro bruto.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={  -- items taken per unit
          ["picareta"] = 1
		},
        products={ -- items given per unit
          ["ouro_bruto"] = 2,
		  ["pedra"] = 5
        }
      }
    }
  },
  {
    name="Processamento de Ouro", -- menu name
    permissions = {"ouro.service"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=2000, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=3334.580078125,y=5162.70703125,z=18.316473007202, -- pos
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processando Ouro Bruto.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["ouro_bruto"] = 2
		},
        products={ -- items given per unit
          ["ouro_refinado"] = 2
        }
      }
    }
  },
  {
    name="Venda de Ouro", -- menu name
    permissions = {"ouro.service"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=2000, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=-1112.0698242188,y=4937.2407226563,z=218.39852905273, -- pos
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender"] = { -- action name
        description="Vendendo de Ouro.", -- action description
        in_money=0, -- money taken per unit
        out_money=60, -- money earned per unit
        reagents={  -- items taken per unit
          ["ouro_refinado"] = 1
		},
        products={ -- items given per unit
        }
      }
    }
  },
  {
    name="Campo De Cobre", -- Nome do menu
    permissions = {"cobre.service"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=2000,
    units_per_minute=200,
    x=-924.85504150391,y=4835.8149414063,z=308.70788574219, -- Localização
    radius=2.5, height=1.5, -- area
	anim = {task="WORLD_HUMAN_CONST_DRILL"},
    recipes = {
      ["Pegar"] = { -- Nome da ação
        description="Minerando cobre bruto.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={  -- items taken per unit
          ["picareta"] = 1
      },
        products={ -- items given per unit
          ["cobre_bruto"] = 4,
		  ["pedra"] = 4,
        }
      }
    }
  },
  {
    name="Processamento de Cobre ", -- menu name
    permissions = {"cobre.service"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=2000, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=814.57116699219,y=1176.7609863281,z=330.70367431641, -- pos
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processando Cobre.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["cobre_bruto"] = 2
      },
        products={ -- items given per unit
          ["cobre_refinado"] = 2
        }
      }
    }
  },
  {
    name="Venda de Cobre ", -- menu name
    permissions = {"cobre.service"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=2000, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=2731.8955078125,y=1564.7276611328,z=24.500968933105, -- pos
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender"] = { -- action name
        description="Vendendo Cobre.", -- action description
        in_money=0, -- money taken per unit
        out_money=55, -- money earned per unit
        reagents={  -- items taken per unit
          ["cobre_refinado"] = 1
		},
        products={ -- items given per unit
        }
      }
    }
  },
  {
    name="Plantar Trigo", -- Nome do menu
    permissions = {"trigo.service"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=2000,
    units_per_minute=200,
    x=2049.9018554688,y=4948.5913085938,z=40.966903686523, -- Localização
    radius=2.5, height=1.5, -- area
	anim = {task="WORLD_HUMAN_GARDENER_PLANT"},
    recipes = {
      ["Minerar"] = { -- Nome da ação
        description="Colhendo trigo com foice.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={  -- items taken per unit
          ["foice"] = 1
      },
        products={ -- items given per unit
          ["trigo"] = 5
        }
      }
    }
  },
  {
    name="Processamento de Trigo ", -- menu name
    permissions = {"trigo.service"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=2000, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=2342.8767089844,y=2616.7216796875,z=46.667598724365, -- pos
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processando de Trigo.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["trigo"] = 5
		},
        products={ -- items given per unit
          ["caixa_de_trigo"] = 1
        }
      }
    }
  },
  {
    name="Venda de Trigo ", -- menu name
    permissions = {"trigo.service"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=2000, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=1941.9615478516,y=4657.1611328125,z=40.541007995605, -- pos
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender"] = { -- action name
        description="Vendendo Trigo.", -- action description
        in_money=0, -- money taken per unit
        out_money=100, -- money earned per unit
        reagents={  -- items taken per unit
          ["caixa_de_trigo"] = 1
		},
        products={ -- items given per unit
        }
      }
    }
  },
  {
    name="Coletar Sal", -- Nome do menu
    permissions = {"sal.service"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=2000,
    units_per_minute=200,
    x=-1605.7797851563,y=5258.8530273438,z=2.0872757434845, -- Localização
    radius=2.5, height=1.5, -- area
	anim = {task="WORLD_HUMAN_GARDENER_PLANT"},
    recipes = {
      ["Coletar"] = { -- Nome da ação
        description="Coletando Sal com pá.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={  -- items taken per unit
          ["pa"] = 1
		},
        products={ -- items given per unit
          ["sal_fino"] = 5
        }
      }
    }
  },
  {
    name="Processamento de Sal ", -- menu name
    permissions = {"sal.service"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=2000, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=253.1393737793,y=894.65246582031,z=209.43571472168, -- pos
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processando Sal.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["sal_fino"] = 3
		},
        products={ -- items given per unit
          ["pacote_sal"] = 1
        }
      }
    }
  },
  {
    name="Venda de Sal ", -- menu name
    permissions = {"sal.service"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=2000, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=2760.7849121094,y=1487.5935058594,z=30.791778564453, -- pos
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender"] = { -- action name
        description="Vendendo Sal.", -- action description
        in_money=0, -- money taken per unit
        out_money=90, -- money earned per unit
        reagents={  -- items taken per unit
          ["pacote_sal"] = 1
		},
        products={ -- items given per unit
        }
      }
    }
  },
  {
    name="OAB", -- menu name
	permissions = {"advogado.oab"},
    r=255,g=125,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=-1905.3449707031,y=-570.46008300781,z=19.097234725952, -- -1905.3449707031,-570.46008300781,19.097234725952
    radius=2, height=1.0, -- area
    recipes = {
      ["OAB"] = { -- action name
       description="Carteira de Advogado.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
		  ["oab"] = 1
		}, -- items given per unit
        aptitudes={} -- optional
      }
    }
  },
  {
    name="Campo de Cocaina", -- menu name
    permissions = {"cocaina.service"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=4000,
    units_per_minute=2000,
    x=1833.4755859375,y=4993.3481445313,z=53.3955078125, --  1833.4755859375,4993.3481445313,53.3955078125
    radius=1.5, height=1.5, -- area
	anim = {task="WORLD_HUMAN_GARDENER_PLANT"},
    recipes = {
      ["Colher"] = { -- action name
        description="Colhendo folhas de Coca.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["folhadecoca"] = 1
        }
      }
	 }
  },
  {
    name="Processador de cocaina", -- Galpão Coca
    permissions = {"cocaina.service"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=4000, -- unidades maximas do item
    units_per_minute=2000, -- unidades que o transformador ganha de volta por minuto
    x=-574.11193847656,y=5361.2583007813,z=70.224311828613, -- -574.11193847656,5361.2583007813,70.224311828613
    radius=1.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processando Cocaina.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["folhadecoca"] = 1
		},
        products={ -- items given per unit
          ["cocaina"] = 2
        }
      }
    }
  },
  {
    name="Vender cocaina", -- Galpão Coca
    permissions = {"cocaina.service"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=4000, -- unidades maximas do item
    units_per_minute=2000, -- unidades que o transformador ganha de volta por minuto
    x= 2148.9926757813,y=72.487449645996,z=229.82629394531, -- 2148.9926757813,72.487449645996,229.82629394531
    radius=1.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender"] = { -- action name
        description="Vendendo cocaina.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["cocaina"] = 1
		},
        products={ -- items given per unit
          ["dirty_money"] = 150
        }
      }
    }
  },
  {
    name="Campo de Maconha", -- menu name
    permissions = {"maconha.service"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=4000,
    units_per_minute=2000,
    x=-1801.8638916016,y=2192.1975097656,z=100.54093170166, -- pos 
    radius=1.5, height=1.5, -- area
	anim = {task="WORLD_HUMAN_GARDENER_PLANT"},
    recipes = {
      ["Colher"] = { -- action name
        description="Folhas de Maconha.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["seeds"] = 1
        }
      }
    }
  },
  {
    name="Processar Maconha", -- Galpão Maconha
    permissions = {"maconha.service"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=4000, -- unidades maximas do item
    units_per_minute=2000, -- unidades que o transformador ganha de volta por minuto
    x=-804.41534423828,y=5387.0590820313,z=34.513477325439, -- pos -804.41534423828,5387.0590820313,34.513477325439
    radius=1.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processador de Maconha.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["seeds"] = 1
		},
        products={ -- items given per unit
          ["maconha"] = 2
        }
      }
    }
  },
  {
    name="Vender maconha", -- Galpão Maconha
    permissions = {"maconha.service"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=4000, -- unidades maximas do item
    units_per_minute=2000, -- unidades que o transformador ganha de volta por minuto
    x=-186.90190124512,y=1557.0958251953,z=322.15246582031, -- -186.90190124512,1557.0958251953,322.15246582031
    radius=1.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender"] = { -- action name
        description="Vender maconha", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["maconha"] = 1
		},
        products={ --item given per unit
		  ["dirty_money"] = 140
		}
      }
    }
  },
  {
    name="Campo de Metanfetamina", -- Nome do menu
    permissions = {"metanfetamina.service"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=4000,
    units_per_minute=2000,
    x=163.21620178223,y=2220.1794433594,z=90.446632385254, -- Localização
    radius=1.5, height=1.5, -- area
	anim = {task="WORLD_HUMAN_GARDENER_PLANT"},
    recipes = {
      ["Colher"] = { -- Nome da ação
        description="Colhendo Crystal Melamine.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["crystalmelamine"] = 1
        }
      }
    }
  },
  {
    name="Processamento de Metanfetamina", -- Nome do menu
    permissions = {"metanfetamina.service"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=4000,
    units_per_minute=2000,
    x=65.606262207031,y=6663.5556640625,z=31.786863327026, -- 65.606262207031,6663.5556640625,31.786863327026
    radius=1.5, height=1.5, -- area
    recipes = {
      ["Processar"] = { -- action name
        description="Processando Metanfetamina.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["crystalmelamine"] = 1
      },
        products={ -- items given per unit
          ["metanfetamina"] = 2
        }
      }
    }
  },
  {
    name="Vender Metafetamina", -- Galpão de Meta
    permissions = {"metanfetamina.service"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=4000, -- unidades maximas do item
    units_per_minute=2000, -- unidades que o transformador ganha de volta por minuto
    x=768.00677490234,y=-208.40072631836,z=66.269271850586, -- 768.00677490234,-208.40072631836,66.269271850586
    radius=1.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender"] = { -- action name
        description="Vendendo Metafetamina.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["metanfetamina"] = 1
    },
        products={ -- items given per unit
          ["dirty_money"] = 140
        }
      }
    }
  },
  {
    name="Pescador de Tartaruga", -- menu name
    permissions = {"tartaruga.service"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=2000, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=4095.5485839844,y=4464.8696289063,z=1.9822434186935, -- pos
    radius=5.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Pescar"] = { -- action name
        description="Pescando Tartaruga com Rede.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["rede"] = 1
      },
        products={ -- items given per unit
          ["tartaruga"] = 2
        }
      }
    }
  },
  {
    name="Vender Tartaruga", -- menu name
    permissions = {"tartaruga.service"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=2000, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=-2030.6005859375,y=5275.5498046875,z=19.811902999878, -- -2030.6005859375,5275.5498046875,19.811902999878
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender Tartaruga"] = { -- action name
        description="Vendendo tartarugas.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["tartaruga"] = 1
      },
        products={ -- items given per unit
          ["dirty_money"] = 500
        }
      }
    }
  },
  {
    name="Hackear Cartões de Crédito", -- menu name
	permissions = {"hacker.service"}, -- you can add permissions
    r=255,g=125,b=0, -- color
    max_units=10000,
    units_per_minute=10000,
    x=-1057.0246582031,y=-233.2060546875,z=44.021129608154,
    radius=2, height=1.0, -- area
    recipes = {
      ["Hackear"] = { -- action name
        description="Hackear informações de Cartões de Crédito.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
		["credit"] = 4,
		}, -- items given per unit
        aptitudes={ -- optional
          ["hacker.hacking"] = 0.2 -- "group.aptitude", give 1 exp per unit
        }
      }
    }
  },
  {
    name="Vender Cartões de Crédito", -- menu name
	permissions = {"hacker.service"}, -- you can add permissions
    r=255,g=125,b=0, -- color
    max_units=10000,
    units_per_minute=10000,
    x=1138.4643554688,y=-2342.5595703125,z=31.349069595337,  -- 1138.4643554688,-2342.5595703125,31.349069595337
    radius=2, height=1.0, -- area
    recipes = {
      ["Vender"] = { -- action name
        description="Vendendo informações de Cartões de Crédito.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
		  ["credit"] = 1,
		}, -- items taken per unit
        products={
		  ["dirty_money"] = 130,
		}, -- items given per unit
        aptitudes={ -- optional
          -- ["hacker.hacking"] = 0.2 -- "group.aptitude", give 1 exp per unit
        }
      }
    }
  },
  {
    name="Contrabandista de Armas", -- menu name
    permissions = {"contrabandista.service"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=2000,
    units_per_minute=200,
    x=-343.28500366211,y=6098.6586914063,z=31.327739715576,
    radius=3, height=1.5, -- area
    recipes = {
      ["Obter AK's"] = { -- action name
        description="Pegar AK's", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["AK47"] = 1
        }
      },
      ["Obter M4A1"] = { -- action name
        description="Pegar M4's", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["M4A1"] = 1
        }
      }
    }
  },
  {
    name="Academia", -- menu name
    r=255,g=125,b=0, -- color
    max_units=1000,
    units_per_minute=1000,
    x=-1202.96252441406,y=-1566.14086914063,z=4.61040639877319,
    radius=7.5, height=1.5, -- area
	anim = {task="WORLD_HUMAN_MUSCLE_FREE_WEIGHTS"},
    recipes = {
      ["Malhar"] = { -- action name
        description="Malhando...", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={}, -- items given per unit
        aptitudes={ -- optional
          ["physical.strength"] = 1 -- "group.aptitude", give 1 exp per unit
        }
      }
    }
  }
}

-- define transformers randomly placed on the map
cfg.hidden_transformers = {
  -- ["weed field"] = {
    -- def = {
      -- name="Weed field", -- menu name
      -- -- permissions = {"harvest.weed"}, -- you can add permissions
      -- r=0,g=200,b=0, -- color
      -- max_units=30,
      -- units_per_minute=1,
      -- x=0,y=0,z=0, -- pos
      -- radius=5, height=1.5, -- area
      -- recipes = {
        -- ["Harvest"] = { -- action name
          -- description="Harvest some weed.", -- action description
          -- in_money=0, -- money taken per unit
          -- out_money=0, -- money earned per unit
          -- reagents={}, -- items taken per unit
          -- products={ -- items given per unit
            -- ["weed"] = 1
          -- }
        -- }
      -- }
    -- },
    -- positions = {
      -- {1873.36901855469,3658.46215820313,33.8029747009277},
      -- {1856.33776855469,3635.12109375,34.1897926330566},
      -- {1830.75390625,3621.44140625,33.8487205505371}
    -- }
  -- }
}

-- time in minutes before hidden transformers are relocated (min is 5 minutes)
cfg.hidden_transformer_duration = 5*24*60 -- 5 days

-- configure the information reseller (can sell hidden transformers positions)
cfg.informer = {
  infos = {
    ["weed field"] = 20000
  },
  positions = {
    -- {1821.12390136719,3685.9736328125,34.2769317626953},
    -- {1804.2958984375,3684.12280273438,34.217945098877}
  },
  interval = 60, -- interval in minutes for the reseller respawn
  duration = 10, -- duration in minutes of the spawned reseller
  -- blipid = 133,
  -- blipcolor = 2
}

return cfg
