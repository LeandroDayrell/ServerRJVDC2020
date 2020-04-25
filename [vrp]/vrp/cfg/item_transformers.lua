
local cfg = {}

-- define static item transformers
-- see https://github.com/ImagicTheCat/vRP to understand the item transformer concept/definition

cfg.item_transformers = {
   {-- correio	
    name="correio",
    permissions = {"correio_item"},  
    r=204,g=255,b=0,
    max_units=1000,
    units_per_minute=500,   
    x=-270.01452636719,y=-959.49877929688,z=31.223133087158,
    radius=2, height=1.0,
    recipes = {
    ["Pegando  encomenda"] = {    
    description="encomenda pego pronta pra usa!",
    in_money=0,
    out_money=0,
    reagents={},
    products={
    ["encomenda"] = 1
        }
      }     
    }        
  },  
  {--PESCADOR
    name="Venda de salmao", -- menu name
    permissions = {"venda.peixe"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu 
    max_units=200, -- unidades maximas do item
    units_per_minute=20, -- unidades que o Processador ganha de volta por minuto
    x=1170.2452392578,y=-399.61193847656,z=71.584571838379,
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
    ["Vender salmao"] = { -- action name
    description="Vendendo salmao", -- action description
    in_money=0, -- money taken per unit
    out_money=200, -- money earned per unit
    reagents={  -- items taken per unit
    ["salmao"] = 1
      },
    products={
        }
      }
    }
  },  
  {--PESCADOR
    name="Venda de corvina", -- menu name
    permissions = {"venda.peixe"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=20, -- unidades que o Processador ganha de volta por minuto
    x=1171.240234375,y=-395.59866333008,z=71.584571838379, 
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
    ["Vender corvina"] = { -- action name
    description="Vendendo corvina", -- action description
    in_money=0, -- money taken per unit
    out_money=180, -- money earned per unit
    reagents={  -- items taken per unit
    ["corvina"] = 1
      },
    products={
        }
      }
    }
  },  
  { -- RG FALSO
	name="Falsificar", -- menu name
    r=255,g=125,b=0, -- color
    max_units=99999,
    units_per_minute=99999,
    x=1272.7305908203,y=-1711.9899902344,z=54.771453857422,
    radius=2, height=1.0, -- area
    recipes = {
    ["Falsificando"] = { -- action name
    description="Criando identidades falsas", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["credit"] = 1
	}, -- items taken per unit
    products={
    ["fake_id"] = 1,
	["dinheirosujo_money"] = 10
		}, -- items given per unit
    aptitudes={}
      }
    }
  },
  {---PILOTO DE CARGA
    name="Pega carga", -- menu name
	permissions = {"mission.pilot.cargo"}, -- you can add permissions
    r=255,g=125,b=0, -- color
    max_units=100000,
    units_per_minute=100000,  
     x=-926.8056640625,y=-2954.6704101563,z=13.945078849792,
    radius=2, height=1.0, -- area
    recipes = {
    ["carga"] = { -- action name
    description="Coletando Carga...", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={}, -- items taken per unit
    products={
	["carga"] = 1
		}, -- items given per unit
    aptitudes={} -- optional
      }
    }
  },
    {
    name="Cofre", -- menu name
	permissions = {"bankdriver.money"}, -- you can add permissions
    r=255,g=125,b=0, -- color
    max_units=3,
    units_per_minute=1,  
    x=262.81698608398,y=220.85321044922,z=101.68327331543,
    radius=2, 
	height=1.0, -- area
    recipes = {
    ["Dinheiro do Banco"] = { -- action name
    description="Pegar dinheiro do banco.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={}, -- items taken per unit
    products={
    ["bank_money"] = 500000
		}, -- items given per unit
    aptitudes={} -- optional
      }
    }
  },
   {---------  DK
    name="Venda de Peças", -- menu name
	permissions = {"dk.carro"},
    r=102,g=51,b=0, -- color  
    max_units=200,
    units_per_minute=999, 
    x=1698.0628662109,y=3288.1364746094,z=41.169982910156,
    radius=2, height=1.0, -- area
    recipes = {
    ["Vendendo"] = { -- action name
    description="Vendendo as Peças.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
	["Motor"] = 1,
	["Parachoque"] = 1,
	["Capo"] = 1,
	["Rodas"] = 1,
	["Volante"] = 1,
	["Retrovisor"] = 1,
	["Banco"] = 1
    },
    products={ -- items given per unit
	["dinheirosujo_money"] = 5000
        }
      }
    }
  },
    {---------  joia
    name="Venda de Joias", -- menu name
	permissions = {"bd.joias"},
    r=102,g=51,b=0, -- color  
    max_units=200,
    units_per_minute=999, 
    x=96.515098571777,y=-1291.4969482422,z=29.268766403198,   
    radius=1, height=1.0, -- area
    recipes = {
    ["Vendendo"] = { -- action name
    description="Vendendo Joias.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
	["Esmeralda"] = 1,
	["Safira"] = 1,
	["Rubi"] = 1,
	["Perola"] = 1,
    },
    products={ -- items given per unit
	["dinheirosujo_money"] = 2000
        }
      }
    }
  },
    { ---- caixa eletronico
    name="Fabrica de c4", -- menu name
    r=102,g=51,b=0, -- color
    max_units=200,
    units_per_minute=999,
    x=1108.9440917969,y=-2007.4880371094,z=30.903028488159,
    radius=2, height=1.0, -- area
    recipes = {
    ["fabricando"] = { -- action name
    description="fabricando c4.", -- action description
    in_money=5000, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
	["pasta_plastica"] = 1,
	["detonador"] = 1,
	["polvora"] = 1
    },
    products={ -- items given per unit
	["c4"] = 1
        }
      }
    }
  },
  {
    name="FENAJ Carteira de Jornalista", -- menu name
    permissions = {"carteirasjr.loadshop"},
    r=255,g=125,b=46, -- color
    max_units=100,
    units_per_minute=10,
    x=-319.03704833984,y=-943.26373291016,z=31.08062171936,  
    radius=1, height=1.0, -- area
    recipes = {
    ["Pegar"] = { -- action name
    description="FENAJ Carteira de Jornalista.", -- action description`
    in_money=1000, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={}, -- items taken per unit
    products={
    ["carteirajr"] = 1
    }, -- items given per unit
    aptitudes={} -- optional
      }
    }
  },
    {-- Lavagem  dp
    name="Lavagem 10%", -- menu name
	permissions = {"dp.loadshop"},
    r=255,g=125,b=0, 
    max_units=100000,
    units_per_minute=100000, 
    x=452.03024291992,y=-973.23297119141,z=30.689598083496, 
    radius=2, height=1.0, -- area
    recipes = {
    ["Lavar Dinheiro"] = { -- action name
    description="Lavar Dinheiro sujo.", -- action description
    in_money=0, -- money taken per unit
    out_money=9000, -- money earned per unit
    reagents={
    ["dinheirosujo_money"] = 10000
    }, -- items taken per unit
    products={}, -- items given per unit
    aptitudes={} -- optional
      }
    }
  },  
  {-- Lavagem  moto club
    name="Lavagem 10%", -- menu name
	permissions = {"club.loadshop"},
    r=255,g=125,b=0, 
    max_units=100000,
    units_per_minute=100000, 
    x=977.1875,y=-104.06024169922,z=74.845191955566, --- cv 
    radius=2, height=1.0, -- area
    recipes = {
    ["Lavar Dinheiro"] = { -- action name
    description="Lavar Dinheiro sujo.", -- action description
    in_money=0, -- money taken per unit
    out_money=9000, -- money earned per unit
    reagents={
    ["dinheirosujo_money"] = 10000
    }, -- items taken per unit
    products={}, -- items given per unit
    aptitudes={} -- optional
      }
    }
  },
  {-- Lavagem  bordel
    name="Lavagem 10%", -- menu name
	permissions = {"lavagem.yakuza"},
    r=255,g=125,b=0, 
    max_units=100000,
    units_per_minute=100000, 
    x=-1385.3319091797,y=-627.32720947266,z=30.819562911987, --- cv 
    radius=2, height=1.0, -- area
    recipes = {
    ["Lavar Dinheiro"] = { -- action name
    description="Lavar Dinheiro sujo.", -- action description
    in_money=0, -- money taken per unit
    out_money=9000, -- money earned per unit
    reagents={
    ["dinheirosujo_money"] = 10000
    }, -- items taken per unit
    products={}, -- items given per unit
    aptitudes={} -- optional
      }
    }
  },	
  {-- Jornalista
    name="FENAJ Carteira de Jornalista", -- menu name
    permissions = {"carteirasjr.loadshop"},
    r=255,g=125,b=46, -- color
    max_units=100,
    units_per_minute=10,
    x=-597.74279785156,y=-936.12847900391,z=23.864892959595,        
    radius=1, height=1.0, -- area
    recipes = {
    ["Pegar"] = { -- action name
    description="FENAJ Carteira de Jornalista.", -- action description`
    in_money=100, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={}, -- items taken per unit
    products={
    ["carteirajr"] = 1
    }, -- items given per unit
    aptitudes={} -- optional
      }
    }
  },
  {-- moto boy
    name="Produto moto boy", -- menu name
    permissions = {"moto_boy.cocacola_pizza"},
    r=0,g=125,b=255, -- color
    max_units=1000,
    units_per_minute=500, 
     x=-270.01452636719,y=-959.49877929688,z=31.223133087158,
    radius=2, height=1.0, -- area
    recipes = {
    
    ["pizza"] = { -- action name
    description="pegando pizza", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={}, -- items taken per unit
    products={ -- items given per unit
    ["pizza"] = 1
        }
      }   
    }      
  },
  { -- PESCADOR DE TARTARUGA
    name="Pescador de Tartaruga", -- menu name
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=20, -- unidades que o Processador ganha de volta por minuto
    x=4007.3933105469,y=4467.4580078125,z=-8.9409952163696, -- pos
    radius=7.5, height=1.5, -- area  
    recipes = { -- items do menu
    ["Pescar"] = { -- action name
    description="Pescar Tartaruga com rede.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={  -- items taken per unit
    ["rede"] = 1
      },
    products={ -- items given per unit
   ["tartaruga"] = 4
        }
      }
    }
  },
  { -- VENDEDOR DE TARTARUGA
    name="Vender Tartaruga", -- menu name
    permissions = {"process.Tartaruga"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=20, -- unidades que o Processador ganha de volta por minuto
    x=-2036.240234375,y=-1033.9669189453,z=5.8823561668396, -- pos 
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
    ["Vender Tartaruga"] = { -- action name
    description="Vendendo Tartaruga", -- action description
    in_money=0, -- money taken per unit
    out_money=3, -- money earned per unit
    reagents={  -- items taken per unit
    ["tartaruga"] = 1
      },
    products={ -- items given per unit         
    ["dinheirosujo_money"] = 300
        }
      }
    }
  }, 
  { -- PRODUTO LIXEIRO
    name="Produto do lixeiro",
    permissions = {"lixeiro_produto"},
    r=255,g=255,b=0,
    max_units=1000,
    units_per_minute=500,  
    x=-270.01452636719,y=-959.49877929688,z=31.223133087158,  
    radius=2, height=1.0,
    recipes = {
    ["Pegando saco de Lixo"] = {    
    description="saco pego pronta pra limpa a cidade!",
    in_money=0,
    out_money=0,
    reagents={},
    products={
    ["saco"] = 1
    }
      }   
    }      
  },
  { -- LIMPADOR DE PISCINA  
    name="limpador de piscina",
    permissions = {"piscina_item"},
    r=255,g=255,b=0,
    max_units=1000,
    units_per_minute=500,
     x=-270.01452636719,y=-959.49877929688,z=31.223133087158, 
    radius=2, height=1.0,
    recipes = {
    ["Pegando  kitlimpeza"] = {    
    description="kitlimpeza pego pronta pra usa!",
    in_money=0,
    out_money=0,
    reagents={},
    products={
    ["kitlimpeza"] = 1
        }
      }     
    }        
  }, 
  { -- OAB
    name="OAB", -- menu name
    permissions = {"advogado.oab"},
    r=255,g=125,b=0, -- color 
    max_units=1,
    units_per_minute=1,
    x=-27.569351196289,y=-582.34844970703,z=79.230758666992,   
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
  { -- ADVOGADO OAB
    name="Documentos", -- menu name 
    permissions = {"advogado.oab"},
    r=255,g=125,b=0, -- color
    max_units=1000,
    units_per_minute=500,
    x=-21.763561248779,y=-587.74920654297,z=79.230758666992,   
    radius=2, height=1.0, -- area
    recipes = {
    ["Documentos"] = { -- action name
    description="Pegar documentos", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={}, -- items taken per unit
    products={
    ["documento"] = 1
    }, -- items given per unit
    aptitudes={} -- optional
      }
    }
  },  
  { -- HACKER
    name="Hacker", -- menu name
    r=255,g=0,b=0, -- color
    max_units=1000,
    units_per_minute=500,
    x=707.357238769531,y=-966.98876953125,z=30.4128551483154,
    radius=2, height=1.0, -- area
    recipes = {
    ["hacking"] = { -- action name
    description="Hacking Cartões de créditos.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={}, -- items taken per unit
    products={
    ["credit"] = 1,
	["dinheirosujo_money"] = 10
    }, -- items given per unit
    aptitudes={ -- optional
    ["hacker.hacking"] = 1 -- "group.aptitude", give 1 exp per unit
        } -- optional
      }
    }
  }, 
  { -- COLETOR DE URANIO
    name="Coletar Uranio", -- Nome Do Menu
    r=51,g=51,b=0, -- Cor
    max_units=200, -- quantos Items Player Carrega
    units_per_minute=60, -- unidades por minuto 
    x=3067.685546875,y=2219.2941894531,z=2.7297534942627, -- Coordenada do Blip
    radius=2, height=1.0, -- area
    recipes = {
    ["Coletando"] = { -- nome da ação
    description="Coletando l Uranio.", -- action description
    in_money=0, -- dinheiro tomado por unidade
    out_money=0, -- Dinheiro ganho por unidade
    reagents={
    ["luva"] = 1
    }, -- items taken per unit
    products={
    ["uranio"] = 3
    }, -- itens fornecidos por unidade
    aptitudes={} -- optional
      }
    }
  }, 
  { -- Refinador DE URANIO
    name="Refinador de Uranio", -- menu name traitement
    r=51,g=51,b=0, -- color
    max_units=1000,
    units_per_minute=1000,
    x=2329.9621582031,y=2571.7009277344,z=46.678863525391, --  medic ancienne meth
    radius=2, height=1.0, -- area
    recipes = {
    ["Refinador"] = { -- action name
    description="Coletando l Uranio Refinado.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["uranio"] = 1
    }, -- items taken per unit
    products={
    ["uraniorefinado"] = 1
    }, -- items given per unit
    aptitudes={} -- optional
      }
    }
  },
    { -- ENRIQUECIMENTO DE URANIO
    name="Enriquecimento de Uranio", -- menu name traitement
    r=51,g=51,b=0, -- color
    max_units=1000,
    units_per_minute=1000,
    x=-213.01210021973,y=-1683.3831787109,z=34.850330352783, --  medic ancienne meth
    radius=2, height=1.0, -- area
    recipes = {
    ["Enriquecendo"] = { -- action name
    description="Coletando l Uranio Enriquecido.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["uraniorefinado"] = 1
    }, -- items taken per unit
    products={
    ["uranio_enriquecido"] = 1
    }, -- items given per unit
    aptitudes={} -- optional
      }
    }
  },
 


 ---------------------------------- FACÇÃO MC ----------------------------------
     {   -- Oficina de armas
    name="Oficina de armas", -- menu name
    permissions = {"build.gun.mc"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=500,
    units_per_minute=50,
    x=1002.9255371094,y=-127.57438659668,z=74.069801330566, 
    radius=5.0, height=1.5, -- area
    recipes = {
    ["Combat Pistol"] = { -- action name
    description="Construir combat pistol.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["cano_parts"] = 2,
	["carregador_parts"] = 1,
	["ferrolho_parts"] = 1,
		}, -- items taken per unit
     products={ -- items given per unit
    ["wbody|WEAPON_COMBATPISTOL"] = 1
        }
      },
	["Bala Combat Pistol"] = { -- action name
    description="Construir Bala De Combat Pistol (1 Polvora e 1 Capsula).", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["capsula"] = 1,
	["polvora"] = 1,
		}, -- items taken per unit
    products={ -- items given per unit
	["wammo|WEAPON_COMBATPISTOL"] = 1
        }
      },
    ["Colete"] = { -- action name
    description="Construir colete (1 Kit/ 1 Kevlar).", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["kevlar"] = 1,
	["kitcostura"] = 1,
		}, -- items taken per unit
    products={ -- items given per unit
    ["body_armor"] = 1
        }
      },
    ["Shotgun"] = { -- action name
    description="Construir submachinegun.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["canoestendido_parts"] = 2,
	["carregador_parts"] = 1,
	["ferrolho_parts"] = 1,
		}, -- items taken per unit
    products={ -- items given per unit
	["wbody|WEAPON_SAWNOFFSHOTGUN"] = 1
        }
      },
	["Bala Shotgun"] = { -- action name
    description="Construir Bala De Shotgun (1 Polvora e 1 Capsula).", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["capsula"] = 1,
	["polvora"] = 1,
		}, -- items taken per unit
    products={ -- items given per unit
	["wammo|WEAPON_SAWNOFFSHOTGUN"] = 1
        }
      },
	["Advanced Rifle"] = { -- action name
    description="Construir Advanced Rifle.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["canoestendido_parts"] = 1,
	["carregador_parts"] = 3,
	["ferrolho_parts"] = 3,
		}, -- items taken per unit
    products={ -- items given per unit
	["wbody|WEAPON_ADVANCEDRIFLE"] = 1
        }
      },
	["Bala Advanced Rifle"] = { -- action name
    description="Construir Bala De Advanced Rifle (1 Polvora e 1 Capsula).", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["capsula"] = 1,
	["polvora"] = 1,
		}, -- items taken per unit
    products={ -- items given per unit
	["wammo|WEAPON_ADVANCEDRIFLE"] = 1
        }
      }
    }
  },
    ---------------------------------- FACÇÃO PCC ----------------------------------
     {   -- Oficina de armas
    name="Oficina de armas", -- menu name
    permissions = {"build.gun.pcc"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=500,
    units_per_minute=50,
    x=28.094696044922,y=3736.0046386719,z=47.163017272949, 
    radius=5.0, height=1.5, -- area
    recipes = {
    ["Combat Pistol"] = { -- action name
    description="Construir combat pistol.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["cano_parts"] = 2,
	["carregador_parts"] = 1,
	["ferrolho_parts"] = 1,
		}, -- items taken per unit
     products={ -- items given per unit
    ["wbody|WEAPON_COMBATPISTOL"] = 1
        }
      },
	["Bala Combat Pistol"] = { -- action name
    description="Construir Bala De Combat Pistol (1 Polvora e 1 Capsula).", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["capsula"] = 1,
	["polvora"] = 1,
		}, -- items taken per unit
    products={ -- items given per unit
	["wammo|WEAPON_COMBATPISTOL"] = 1
        }
      },
    ["Fireworks"] = { -- action name
    description="Construir Fireworks.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["dinheirosujo_money"] = 20000
		}, -- items taken per unit
    products={ -- items given per unit
    ["wbody|WEAPON_FIREWORK"] = 1
        }
    },
	["Granada"] = { -- action name
    description="Construir Granada.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["dinheirosujo_money"] = 50000
		}, -- items taken per unit
    products={ -- items given per unit
    ["wbody|WEAPON_GRENADE"] = 1
        }
    },
	["Bala De Granada"] = { -- action name
    description="Construir Bala De Granada. (200 Polvoras)", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
	["polvora"] = 200,
		}, -- items taken per unit
    products={ -- items given per unit
    ["wammo|WEAPON_GRENADE"] = 1
        }
    },
    ["Mini SMG"] = { -- action name
    description="Construir MINI SMG", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["cano_parts"] = 4,
	["carregador_parts"] = 1,
	["ferrolho_parts"] = 2,
		}, -- items taken per unit
    products={ -- items given per unit
	["wbody|WEAPON_MINISMG"] = 1
        }
      },
	["Bala Mini Smg"] = { -- action name
    description="Construir Bala De MiniSMG (1 Polvora e 1 Capsula).", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["capsula"] = 1,
	["polvora"] = 1,
		}, -- items taken per unit
    products={ -- items given per unit
	["wammo|WEAPON_MINISMG"] = 1
        }
      }
    }
  },
  ---------------------------------- FACÇÃO CV - COMANDO VERMELHO ----------------------------------
     {   -- Oficina de armas
    name="Oficina de armas", -- menu name
    permissions = {"build.gun.cv"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=500,
    units_per_minute=50,
    x=798.35308837891,y=1144.6127929688,z=324.57705688477, 
    radius=5.0, height=1.5, -- area
    recipes = {
    ["Combat Pistol"] = { -- action name
    description="Construir combat pistol.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["cano_parts"] = 2,
	["carregador_parts"] = 1,
	["ferrolho_parts"] = 1,
		}, -- items taken per unit
     products={ -- items given per unit
    ["wbody|WEAPON_COMBATPISTOL"] = 1
        }
      },
	["Bala Combat Pistol"] = { -- action name
    description="Construir Bala De Combat Pistol (1 Polvora e 1 Capsula).", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["capsula"] = 1,
    ["polvora"] = 1,
        }, -- items taken per unit
    products={ -- items given per unit
    ["wammo|WEAPON_COMBATPISTOL"] = 1
        }
      },
    ["Fireworks"] = { -- action name
    description="Construir Fireworks.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["dinheirosujo_money"] = 20000
		}, -- items taken per unit
    products={ -- items given per unit
    ["wbody|WEAPON_FIREWORK"] = 1
        }
    },
	["Granada"] = { -- action name
    description="Construir Granada.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["dinheirosujo_money"] = 50000
		}, -- items taken per unit
    products={ -- items given per unit
    ["wbody|WEAPON_GRENADE"] = 1
        }
    },
	["Bala De Granada"] = { -- action name
    description="Construir Bala De Granada. (200 Polvoras)", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
	["polvora"] = 200,
		}, -- items taken per unit
    products={ -- items given per unit
    ["wammo|WEAPON_GRENADE"] = 1
        }
    },
    ["Assault SMG"] = { -- action name
    description="Construir Assault SMG", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["canoestendido_parts"] = 2,
	["carregador_parts"] = 1,
	["ferrolho_parts"] = 2,
		}, -- items taken per unit
    products={ -- items given per unit
	["wbody|WEAPON_ASSAULTSMG"] = 1
        }
      },
	["Bala ASSAULT SMG"] = { -- action name
    description="Construir Bala De AssaultSMG (1 Polvora e 1 Capsula).", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["capsula"] = 1,
    ["polvora"] = 1,
        }, -- items taken per unit
    products={ -- items given per unit
    ["wammo|WEAPON_ASSAULTSMG"] = 1
        }
      }
    }
  },
    ---------------------------------- FACÇÃO TCP - TERCEIRO COMANDO PURO ----------------------------------
     {   -- Oficina de armas
    name="Oficina de armas", -- menu name
    permissions = {"build.gun.tcp"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=500,
    units_per_minute=50,
    x=1405.5555419922,y=-2507.0239257813,z=59.496555328369, 
    radius=5.0, height=1.5, -- area
    recipes = {
    ["Combat Pistol"] = { -- action name
    description="Construir combat pistol.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["cano_parts"] = 2,
	["carregador_parts"] = 1,
	["ferrolho_parts"] = 1,
		}, -- items taken per unit
     products={ -- items given per unit
    ["wbody|WEAPON_COMBATPISTOL"] = 1
        }
      },
	["Bala Combat Pistol"] = { -- action name
    description="Construir Bala De Combat Pistol (1 Polvora e 1 Capsula).", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["capsula"] = 1,
    ["polvora"] = 1,
        }, -- items taken per unit
    products={ -- items given per unit
    ["wammo|WEAPON_COMBATPISTOL"] = 1
        }
      },
    ["Fireworks"] = { -- action name
    description="Construir Granada.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["dinheirosujo_money"] = 20000
		}, -- items taken per unit
    products={ -- items given per unit
    ["wbody|WEAPON_FIREWORK"] = 1
        }
    },
	["Colete"] = { -- action name
    description="Construir colete (1 Kit/ 1 Kevlar).", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["kevlar"] = 1,
	["kitcostura"] = 1,
		}, -- items taken per unit
    products={ -- items given per unit
    ["body_armor"] = 1
        }
      },
    ["Micro SMG"] = { -- action name
    description="Construir Assault SMG", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["cano_parts"] = 3,
	["carregador_parts"] = 2,
	["ferrolho_parts"] = 2,
		}, -- items taken per unit
    products={ -- items given per unit
	["wbody|WEAPON_MICROSMG"] = 1
        }
      },
	["Bala MicroSMG"] = { -- action name
    description="Construir Bala De MicroSMG (1 Polvora e 1 Capsula).", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["capsula"] = 1,
    ["polvora"] = 1,
        }, -- items taken per unit
    products={ -- items given per unit
    ["wammo|WEAPON_MICROSMG"] = 1
        }
      },
    }
  },
  ---------------------------------- FACÇÃO ADA - AMIGO DOS AMIGOS ----------------------------------
     {   -- Oficina de armas
    name="Oficina de armas", -- menu name
    permissions = {"build.gun.ada"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=500,
    units_per_minute=50,
    x=1461.1785888672,y=-103.55963897705,z=146.12188720703, 
    radius=5.0, height=1.5, -- area
    recipes = {
    ["Combat Pistol"] = { -- action name
    description="Construir combat pistol.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["cano_parts"] = 2,
	["carregador_parts"] = 1,
	["ferrolho_parts"] = 1,
		}, -- items taken per unit
     products={ -- items given per unit
    ["wbody|WEAPON_COMBATPISTOL"] = 1
        }
      },
	["Bala Combat Pistol"] = { -- action name
    description="Construir Bala De Combat Pistol (1 Polvora e 1 Capsula).", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["capsula"] = 1,
    ["polvora"] = 1,
        }, -- items taken per unit
    products={ -- items given per unit
    ["wammo|WEAPON_COMBATPISTOL"] = 1
        }
      },
    ["Fireworks"] = { -- action name
    description="Construir Fireworks.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["dinheirosujo_money"] = 20000
		}, -- items taken per unit
    products={ -- items given per unit
    ["wbody|WEAPON_FIREWORK"] = 1
        }
    },
	["Granada"] = { -- action name
    description="Construir Granada.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["dinheirosujo_money"] = 50000
		}, -- items taken per unit
    products={ -- items given per unit
    ["wbody|WEAPON_GRENADE"] = 1
        }
    },
	["Bala De Granada"] = { -- action name
    description="Construir Bala De Granada. (200 Polvoras)", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
	["polvora"] = 200,
		}, -- items taken per unit
    products={ -- items given per unit
    ["wammo|WEAPON_GRENADE"] = 1
        }
    },
    ["SMG"] = { -- action name
    description="Construir SMG", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["canoestendido_parts"] = 1,
	["carregador_parts"] = 2,
	["ferrolho_parts"] = 2,
		}, -- items taken per unit
    products={ -- items given per unit
	["wbody|WEAPON_SMG"] = 1
        }
      },
	["Bala SMG"] = { -- action name
    description="Construir Bala De SMG (1 Polvora e 1 Capsula).", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["capsula"] = 1,
    ["polvora"] = 1,
        }, -- items taken per unit
    products={ -- items given per unit
    ["wammo|WEAPON_SMG"] = 1
        }
      }
    }
  },
  ---------------------------------- FACÇÃO DK - DRIFT KING ----------------------------------
     {   -- Oficina de armas
    name="Oficina de armas", -- menu name
    permissions = {"build.gun.dk"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=500,
    units_per_minute=50,
    x=1717.3591308594,y=3227.5888671875,z=43.220027923584, 
    radius=5.0, height=1.5, -- area
    recipes = {
    ["Combat Pistol"] = { -- action name
    description="Construir combat pistol.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["cano_parts"] = 2,
	["carregador_parts"] = 1,
	["ferrolho_parts"] = 1,
		}, -- items taken per unit
     products={ -- items given per unit
    ["wbody|WEAPON_COMBATPISTOL"] = 1
        }
      },
	["Bala Combat Pistol"] = { -- action name
    description="Construir Bala De Combat Pistol (1 Polvora e 1 Capsula).", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["capsula"] = 1,
    ["polvora"] = 1,
        }, -- items taken per unit
    products={ -- items given per unit
    ["wammo|WEAPON_COMBATPISTOL"] = 1
        }
      },
    ["Molotov Cocktail"] = { -- action name
    description="Construir Molotov.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["dinheirosujo_money"] = 20000
		}, -- items taken per unit
    products={ -- items given per unit
    ["wbody|WEAPON_MOLOTOV"] = 1
        }
    },
    ["MINI SMG"] = { -- action name
    description="Construir MINI SMG", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["cano_parts"] = 4,
	["carregador_parts"] = 1,
	["ferrolho_parts"] = 2,
		}, -- items taken per unit
    products={ -- items given per unit
	["wbody|WEAPON_MINISMG"] = 1
        }
      },
	["Bala MINI SMG"] = { -- action name
    description="Construir Bala De MINISMG (1 Polvora e 1 Capsula).", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["capsula"] = 1,
    ["polvora"] = 1,
        }, -- items taken per unit
    products={ -- items given per unit
    ["wammo|WEAPON_MINISMG"] = 1
        }
      }
    }
  },
  ---------------------------------- FACÇÃO FDN ----------------------------------
   {   -- Oficina de armas
    name="Oficina de armas fdn", -- menu name
    permissions = {"build.gun.fdn"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=500,
    units_per_minute=50,
    x=1537.8674316406,y=6325.42578125,z=31.727428436279, 
    radius=5.0, height=1.5, -- area
    recipes = {
    ["Combat Pistol"] = { -- action name
    description="Construir combat pistol.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["cano_parts"] = 2,
	["carregador_parts"] = 1,
	["ferrolho_parts"] = 1,
		}, -- items taken per unit
     products={ -- items given per unit
    ["wbody|WEAPON_COMBATPISTOL"] = 1
        }
      },
	["Bala Combat Pistol"] = { -- action name
    description="Construir Bala De Combat Pistol (1 Polvora e 1 Capsula).", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["capsula"] = 1,
    ["polvora"] = 1,
        }, -- items taken per unit
    products={ -- items given per unit
    ["wammo|WEAPON_COMBATPISTOL"] = 1
        }
      },
    ["Granada"] = { -- action name
    description="Construir GRANADA.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["dinheirosujo_money"] = 50000
		}, -- items taken per unit
    products={ -- items given per unit
    ["wbody|WEAPON_GRENADE"] = 1
        }
    },
	["Bala De Granada"] = { -- action name
    description="Construir Bala De Granada. (200 Polvoras)", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
	["polvora"] = 200,
		}, -- items taken per unit
    products={ -- items given per unit
    ["wammo|WEAPON_GRENADE"] = 1
        }
    },
    ["AK-47"] = { -- action name
    description="Construir AK-47 ", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["canoestendido_parts"] = 2,
	["cano_parts"]=2,
	["carregador_parts"] = 2,
	["ferrolho_parts"] = 2,
		}, -- items taken per unit
    products={ -- items given per unit
	["wbody|WEAPON_ASSAULTRIFLE"] = 1
        }
      },
	["Bala AK-47"] = { -- action name
    description="Construir Bala De AK-47 (1 Polvora e 1 Capsula).", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["capsula"] = 1,
    ["polvora"] = 1,
        }, -- items taken per unit
    products={ -- items given per unit
    ["wammo|WEAPON_ASSAULTRIFLE"] = 1
        }
      }
    }
  },
  ---------------------------------- FACÇÃO MILICIA ----------------------------------
     {   -- Oficina de armas
    name="Oficina de armas", -- menu name
    permissions = {"build.gun.milicia"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=500,
    units_per_minute=50,
    x=847.66271972656,y=3051.716796875,z=42.91247177124, 
    radius=5.0, height=1.5, -- area
    recipes = {
    ["Combat Pistol"] = { -- action name
    description="Construir combat pistol.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["cano_parts"] = 2,
	["carregador_parts"] = 1,
	["ferrolho_parts"] = 1,
		}, -- items taken per unit
     products={ -- items given per unit
    ["wbody|WEAPON_COMBATPISTOL"] = 1
        }
      },
	["Bala Combat Pistol"] = { -- action name
    description="Construir Bala De Combat Pistol (1 Polvora e 1 Capsula).", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["capsula"] = 1,
    ["polvora"] = 1,
        }, -- items taken per unit
    products={ -- items given per unit
    ["wammo|WEAPON_COMBATPISTOL"] = 1
        }
      },
    ["Granada"] = { -- action name
    description="Construir GRANADA.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["dinheirosujo_money"] = 50000
		}, -- items taken per unit
    products={ -- items given per unit
    ["wbody|WEAPON_GRENADE"] = 1
        }
    },
	["Bala De Granada"] = { -- action name
    description="Construir Bala De Granada. (200 Polvoras)", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
	["polvora"] = 200,
		}, -- items taken per unit
    products={ -- items given per unit
    ["wammo|WEAPON_GRENADE"] = 1
        }
    },
    ["AK-47"] = { -- action name
    description="Construir AK-47 ", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["canoestendido_parts"] = 2,
	["cano_parts"]=2,
	["carregador_parts"] = 2,
	["ferrolho_parts"] = 2,
		}, -- items taken per unit
    products={ -- items given per unit
	["wbody|WEAPON_ASSAULTRIFLE"] = 1
        }
      },
	["Bala AK-47"] = { -- action name
    description="Construir Bala De AK-47 (1 Polvora e 1 Capsula).", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["capsula"] = 1,
    ["polvora"] = 1,
        }, -- items taken per unit
    products={ -- items given per unit
    ["wammo|WEAPON_ASSAULTRIFLE"] = 1
        }
      }
    }
  },
  ---------------------------------- FACÇÃO BORDEL ----------------------------------
     {   -- Oficina de armas
    name="Oficina de armas", -- menu name
    permissions = {"build.gun.bordel"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=500,
    units_per_minute=50,
    x=99.821762084961,y=-1287.5815429688,z=28.260950088501, 
    radius=5.0, height=1.5, -- area
    recipes = {
    ["Combat Pistol"] = { -- action name
    description="Construir combat pistol.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["cano_parts"] = 2,
	["carregador_parts"] = 1,
	["ferrolho_parts"] = 1,
		}, -- items taken per unit
     products={ -- items given per unit
    ["wbody|WEAPON_COMBATPISTOL"] = 1
        }
      },
	["Bala Combat Pistol"] = { -- action name
    description="Construir Bala De Combat Pistol (1 Polvora e 1 Capsula).", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["capsula"] = 1,
    ["polvora"] = 1,
        }, -- items taken per unit
    products={ -- items given per unit
    ["wammo|WEAPON_COMBATPISTOL"] = 1
        }
      },
    ["Molotov Cocktail"] = { -- action name
    description="Construir MOLOTOV.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["dinheirosujo_money"] = 15000
		}, -- items taken per unit
    products={ -- items given per unit
    ["wbody|WEAPON_MOLOTOV"] = 1
        }
      },
	  ["SMG"] = { -- action name
    description="Construir SMG", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["canoestendido_parts"] = 2,
	["carregador_parts"] = 1,
	["ferrolho_parts"] = 1,
		}, -- items taken per unit
    products={ -- items given per unit
	["wbody|WEAPON_SMG"] = 1
        }
      },
	["Bala SMG"] = { -- action name
    description="Construir Bala De SMG (1 Polvora e 1 Capsula).", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["capsula"] = 1,
    ["polvora"] = 1,
        }, -- items taken per unit
    products={ -- items given per unit
    ["wammo|WEAPON_SMG"] = 1
        }
      }
    }
  },
  ---------------------------------- FACÇÃO MAFIA - COSA NOSTRA ----------------------------------
     {   -- Oficina de armas
    name="Oficina de armas", -- menu name
    permissions = {"build.gun.marfia"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=500,
    units_per_minute=50,
    x=565.66467285156,y=-3127.1818847656,z=18.768611907959, 
    radius=5.0, height=1.5, -- area
    recipes = {
    ["Combat Pistol"] = { -- action name
    description="Construir combat pistol.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["cano_parts"] = 2,
	["carregador_parts"] = 1,
	["ferrolho_parts"] = 1,
		}, -- items taken per unit
     products={ -- items given per unit
    ["wbody|WEAPON_COMBATPISTOL"] = 1
        }
      },
	["Bala Combat Pistol"] = { -- action name
    description="Construir Bala De Combat Pistol (1 Polvora e 1 Capsula).", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["capsula"] = 1,
    ["polvora"] = 1,
        }, -- items taken per unit
    products={ -- items given per unit
    ["wammo|WEAPON_COMBATPISTOL"] = 1
        }
      },
    ["Molotov Cocktail"] = { -- action name
    description="Construir MOLOTOV.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["dinheirosujo_money"] = 20000
		}, -- items taken per unit
    products={ -- items given per unit
    ["wbody|WEAPON_MOLOTOV"] = 1
        }
    },
	["Granada"] = { -- action name
    description="Construir GRANADA.", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["dinheirosujo_money"] = 50000
		}, -- items taken per unit
    products={ -- items given per unit
    ["wbody|WEAPON_GRENADE"] = 1
        }
    },
	["Bala De Granada"] = { -- action name
    description="Construir Bala De Granada. (200 Polvoras)", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
	["polvora"] = 200,
		}, -- items taken per unit
    products={ -- items given per unit
    ["wammo|WEAPON_GRENADE"] = 1
        }
    },
    ["Compact Rifle"] = { -- action name
    description="Construir Compact Rifle", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["cano_parts"] = 4,
	["carregador_parts"] = 2,
	["ferrolho_parts"] = 2,
		}, -- items taken per unit
    products={ -- items given per unit
	["wbody|WEAPON_COMPACTRIFLE"] = 1
        }
      },
	["Bala De COMPACTRIFLE"] = { -- action name
    description="Construir Bala De Compact Rifle (1 Polvora e 1 Capsula).", -- action description
    in_money=0, -- money taken per unit
    out_money=0, -- money earned per unit
    reagents={
    ["capsula"] = 1,
    ["polvora"] = 1,
        }, -- items taken per unit
    products={ -- items given per unit
    ["wammo|WEAPON_COMPACTRIFLE"] = 1
        }
      }
    }
  },
}

-- define transformers randomly placed on the map
cfg.hidden_transformers = {
  ["Lavagem 20%"] = {
    def = {
    name="Lavagem 20%", -- menu name
    r=255,g=125,b=0, 
    max_units=10000,
    units_per_minute=10000,
    radius=2, height=1.0, -- area
    recipes = {
    ["Lavar Dinheiro"] = { -- action name
    description="Lavar dinheirosujo_money.", -- action description
    in_money=0, -- money taken per unit
    out_money=480, -- money earned per unit
    reagents={
    ["dinheirosujo_money"] = 500
    }, -- items taken per unit
    products={}, -- items given per unit
    aptitudes={} -- optional
        }
      }
    },
    positions = {
    --{24.844825744629,7644.005859375,19.034078598022}
    }
  }
}

-- time in minutes before hidden transformers are relocated (min is 5 minutes)
cfg.hidden_transformer_duration = 5*24*60 -- 5 days

-- configure the information reseller (can sell hidden transformers positions)
cfg.informer = {
    infos = {
    ["Lavagem 20%"] = 100000
  },
    positions = {
    --{1297.0148925781,-3349.7238769531,5.9015917778015}
  },
    interval = 60, -- interval in minutes for the reseller respawn
    duration = 10, -- duration in minutes of the spawned reseller
    blipid = 133,
    blipcolor = 2
}

return cfg