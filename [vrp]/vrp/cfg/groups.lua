
local cfg = {}

-- define each group with a set of permissions
-- _config property:
--- title (optional): group display name
--- gtype (optional): used to have only one group with the same gtype per player (example: a job gtype to only have one job)
--- onspawn (optional): function(player) (called when the player spawn with the group)
--- onjoin (optional): function(player) (called when the player join the group)
--- onleave (optional): function(player) (called when the player leave the group)
--- (you have direct access to vRP and vRPclient, the tunnel to client, in the config callbacks)

cfg.groups = {

  --== ADMINISTRAÇÃO ==--
  ["FundadorCMDRJ"] = {
	"admin.permissao",
	"fix.permissao",
	"dv.permissao",
	"god.permissao",
	"wl.permissao",
	"kick.permissao",
	"ban.permissao",
	"unban.permissao",
	"money.permissao",
	"noclip.permissao",
	"ticket.permissao",
	"tp.permissao",
	"spawncar.permissao",
	"msg.permissao",
	-- Administração
	"player.group.add",
    "player.group.remove",
    "player.givemoney",
    "player.giveitem",
	"admin.spawnveh",
	"admin.godmode",
	"admin.tickets",
    "admin.announce",
    "player.list",
	"admin.crun",
	"admin.blips",
    "player.whitelist",
    "player.unwhitelist",
    "player.kick",
    "player.ban",
    "player.unban",
	"admin.sprites",
	"admin.srun",
    "player.noclip",
	"admin.tptowaypoint",
	"admin.deleteveh",
    "player.custom_emote",
    "player.custom_sound",
    "player.display_custom",
    "player.coords",
    "player.tptome",
    "player.tpto",
	-- Salario
	"Administrador.permissao"
	},
	["ModeradorCMDRJ"] = {
	"admin.permissao",
	"fix.permissao",
	"dv.permissao",
	"god.permissao",
	"ticket.permissao",
	"wl.permissao",
	"kick.permissao",
	"ban.permissao",
	"unban.permissao",
	"noclip.permissao",
	"tp.permissao",
	"spawncar.permissao",
	"msg.permissao",
	-- Salario
	"Moderador.permissao"
	},
	["SuporteCMDRJ"] = {
	"ticket.permissao",
	"fix.permissao",
	"dv.permissao",
	"wl.permissao",
	"kick.permissao",
	-- Salario
	"Suporte.permissao"
	},
	["aprovadorwl"] = {
	"wl.permissao",
	-- Salario
	"AprovadorWL.permissao"
	},
  ["user"] = {
    "player.phone",
    "player.calladmin",
	"player.loot",
	"player.menu",
	"player.fixhaircut",
	"player.mask",
	"player.userlist",
	"mobile.charge",
	"mobile.pay",
	"store.money",
	"mercadonegro.permissao",
	"store.bodyarmor",
	"store.weapons",
	"bikezin.permissao",
	"playerzin.permissao",
    "police.askid",
    "police.seizable",
	"coma.skipper",
	"coma.caller",
	-- Salario
	"Player.permissao"
  },
  
  --== PMERJ ==--
["CMD PMERJ"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"pm3.arsenal",
	"pm3.garagem",
	"pm3.cloakroom",
	"mission.policia",
	"coronelpm.paycheck",
	"policia.permissao",
	"pm3.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
	"pmerj.permissaoComandante",
	"polpar.permissao",
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"pmcar.permissao",
	"pmheli.permissao",
	"cmdgeral.permissao",
	"helipmerj.permissao",
	"policiaheli.permissao",
	-- Salario
	"CmdGeral.permissao",
	"bau.pm"
	
  },

  ["[PMRJ] - Recruta"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"pm3.arsenal",
	"pm3.garagem",
	"pm3.cloakroom",
	"mission.policia",
	"coronelpm.paycheck",
	"policia.permissao",
	"pm3.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
	"pmerj.permissaoRecruta",
	"polpar.permissao",
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"pmcar.permissao",
	"pmheli.permissao",
	"pmerj.permissao",
	"helipmerj.permissao",
	"policiaheli.permissao",
	"pmerj.permissao",
	-- Salario
	"Recruta.permissao"
  },

  ["[PMRJ] - Soldado"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"pm3.arsenal",
	"pm3.garagem",
	"pm3.cloakroom",
	"mission.policia",
	"coronelpm.paycheck",
	"policia.permissao",
	"pm3.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
	"pmerj.permissaoSoldado",
	"polpar.permissao",
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"pmcar.permissao",
	"pmheli.permissao",
	"pmerj.permissao",
	"helipmerj.permissao",
	"policiaheli.permissao",
	"pmerj.permissao",
	-- Salario
	"Soldado.permissao"
  },

  ["[PMRJ] - Cabo"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"pm3.arsenal",
	"pm3.garagem",
	"pm3.cloakroom",
	"mission.policia",
	"coronelpm.paycheck",
	"policia.permissao",
	"pm3.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
	"pmerj.permissaoCabo",
	"polpar.permissao",
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"pmcar.permissao",
	"pmheli.permissao",
	"pmerj.permissao",
	"helipmerj.permissao",
	"policiaheli.permissao",
	"pmerj.permissao",
	-- Salario
	"Cabo.permissao"
  },

  ["[PMRJ] - 3° Sargento"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"pm3.arsenal",
	"pm3.garagem",
	"pm3.cloakroom",
	"mission.policia",
	"coronelpm.paycheck",
	"policia.permissao",
	"pm3.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
	"pmerj.permissao3Sargento",
	"polpar.permissao",
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"pmcar.permissao",
	"pmheli.permissao",
	"pmerj.permissao",
	"helipmerj.permissao",
	"policiaheli.permissao",
	"pmerj.permissao",
	-- Salario
	"3Sargento.permissao"
  },
  
  ["[PMRJ] - 2° Sargento"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"pm3.arsenal",
	"pm3.garagem",
	"pm3.cloakroom",
	"mission.policia",
	"coronelpm.paycheck",
	"policia.permissao",
	"pm3.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
	"pmerj.permissao2Sargento",
	"polpar.permissao",
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"pmcar.permissao",
	"pmheli.permissao",
	"pmerj.permissao",
	"helipmerj.permissao",
	"policiaheli.permissao",
	"pmerj.permissao",
	-- Salario
	"2Sargento.permissao"
  },
  
  ["[PMRJ] - 1° Sargento"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"pm3.arsenal",
	"pm3.garagem",
	"pm3.cloakroom",
	"mission.policia",
	"coronelpm.paycheck",
	"policia.permissao",
	"pm3.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
	"pmerj.permissao1Sargento",
	"polpar.permissao",
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"pmcar.permissao",
	"pmheli.permissao",
	"pmerj.permissao",
	"helipmerj.permissao",
	"policiaheli.permissao",
	"pmerj.permissao",
	-- Salario
	"1Sargento.permissao"
  },

  ["[PMRJ] - Subtenente"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"pm3.arsenal",
	"pm3.garagem",
	"pm3.cloakroom",
	"mission.policia",
	"coronelpm.paycheck",
	"policia.permissao",
	"pm3.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
	"pmerj.permissaoSubTenente",
	"polpar.permissao",
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"pmcar.permissao",
	"pmheli.permissao",
	"pmerj.permissao",
	"helipmerj.permissao",
	"policiaheli.permissao",
	"pmerj.permissao",
	"bau.pm",
	-- Salario
	"SubTenente.permissao"
  },

  ["[PMRJ] - 2° Tenente"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"pm3.arsenal",
	"pm3.garagem",
	"pm3.cloakroom",
	"mission.policia",
	"coronelpm.paycheck",
	"policia.permissao",
	"pm3.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
	"pmerj.permissao2Tenente",
	"polpar.permissao",
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
	"bau.pm",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"pmcar.permissao",
	"pmheli.permissao",
	"pmerj.permissao",
	"helipmerj.permissao",
	"policiaheli.permissao",
	"pmerj.permissao",
	-- Salario
	"2Tenente.permissao"
  },

  ["[PMRJ] - 1° Tenente"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"pm3.arsenal",
	"pm3.garagem",
	"pm3.cloakroom",
	"mission.policia",
	"coronelpm.paycheck",
	"policia.permissao",
	"pm3.whitelisted",
	"portas.policia",
	"bau.pm",
	"police.assalto",
	"naotoma.multa",
	-----------------
	"pmerj.permissao1Tenente",
	"polpar.permissao",
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"pmcar.permissao",
	"pmheli.permissao",
	"pmerj.permissao",
	"helipmerj.permissao",
	"policiaheli.permissao",
	"pmerj.permissao",
	-- Salario
	"1Tenente.permissao"
  },

  ["[PMRJ] - Capitão"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"pm3.arsenal",
	"pm3.garagem",
	"pm3.cloakroom",
	"mission.policia",
	"bau.pm",
	"coronelpm.paycheck",
	"policia.permissao",
	"pm3.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
	"pmerj.permissaoCapitao",
	"polpar.permissao",
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	"policiaheli.permissao",
	"pmerj.permissao",
	-- NOVOS
	"pmcar.permissao",
	"pmheli.permissao",
	"pmerj.permissao",
	"helipmerj.permissao",
	-- Salario
	"Capitao.permissao"
  },

  ["[PMRJ] - Major"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"pm3.arsenal",
	"pm3.garagem",
	"pm3.cloakroom",
	"mission.policia",
	"coronelpm.paycheck",
	"policia.permissao",
	"pm3.whitelisted",
	"bau.pm",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
	"pmerj.permissaoMajor",
	"polpar.permissao",
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"pmcar.permissao",
	"pmheli.permissao",
	"pmerj.permissao",
	"helipmerj.permissao",
	"policiaheli.permissao",
	"pmerj.permissao",
	-- Salario
	"Major.permissao"
  },

  ["[PMRJ] - Tenente Coronel"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"pm3.arsenal",
	"pm3.garagem",
	"pm3.cloakroom",
	"mission.policia",
	"coronelpm.paycheck",
	"bau.pm",
	"policia.permissao",
	"pm3.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
	"pmerj.permissaoTenenteCoronel",
	"polpar.permissao",
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"pmcar.permissao",
	"pmheli.permissao",
	"pmerj.permissao",
	"helipmerj.permissao",
	"policiaheli.permissao",
	"pmerj.permissao",
	-- Salario
	"TenenteCoronel.permissao"
  },
  
  ["[PMRJ] - Coronel"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"pm3.arsenal",
	"pm3.garagem",
	"pm3.cloakroom",
	"mission.policia",
	"coronelpm.paycheck",
	"policia.permissao",
	"pm3.whitelisted",
	"portas.policia",
	"bau.pm",
	"police.assalto",
	"naotoma.multa",
	-----------------
	"pmerj.permissaoCoronel",
	"polpar.permissao",
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"pmcar.permissao",
	"pmheli.permissao",
	"pmerj.permissao",
	"helipmerj.permissao",
	"policiaheli.permissao",
	"pmerj.permissao",
	-- Salario
	"Coronel.permissao"
  },
  
  
  ["PaisanaPMERJRecruta"] = {
		_config = {
			title = "À Paisana PMESP",
			gtype = "cargo"
		},
		"paisanapoliciapmerjRecruta.permissao"
	},
	["PaisanaPMERJSoldado"] = {
		_config = {
			title = "À Paisana PMESP",
			gtype = "cargo"
		},
		"paisanapoliciapmerjSoldado.permissao"
	},
	["PaisanaPMERJCabo"] = {
		_config = {
			title = "À Paisana PMESP",
			gtype = "cargo"
		},
		"paisanapoliciapmerjCabo.permissao"
	},
	["PaisanaPMERJ3Sargento"] = {
		_config = {
			title = "À Paisana PMESP",
			gtype = "cargo"
		},
		"paisanapoliciapmerj3Sargento.permissao"
	},
	["PaisanaPMERJ2Sargento"] = {
		_config = {
			title = "À Paisana PMESP",
			gtype = "cargo"
		},
		"paisanapoliciapmerj2Sargento.permissao"
	},
	["PaisanaPMERJ1Sargento"] = {
		_config = {
			title = "À Paisana PMESP",
			gtype = "cargo"
		},
		"paisanapoliciapmerj1Sargento.permissao"
	},
	["PaisanaPMERJSubTenente"] = {
		_config = {
			title = "À Paisana PMESP",
			gtype = "cargo"
		},
		"paisanapoliciapmerjSubTenente.permissao"
	},
	["PaisanaPMERJ2Tenente"] = {
		_config = {
			title = "À Paisana PMESP",
			gtype = "cargo"
		},
		"paisanapoliciapmerj2Tenente.permissao"
	},
	["PaisanaPMERJ1Tenente"] = {
		_config = {
			title = "À Paisana PMESP",
			gtype = "cargo"
		},
		"paisanapoliciapmerj1Tenente.permissao"
	},
	["PaisanaPMERJCapitao"] = {
		_config = {
			title = "À Paisana PMESP",
			gtype = "cargo"
		},
		"paisanapoliciapmerjCapitao.permissao"
	},
	["PaisanaPMERJMajor"] = {
		_config = {
			title = "À Paisana PMESP",
			gtype = "cargo"
		},
		"paisanapoliciapmerjMajor.permissao"
	},
	["PaisanaPMERJTenenteCoronel"] = {
		_config = {
			title = "À Paisana PMESP",
			gtype = "cargo"
		},
		"paisanapoliciapmerjTenenteCoronel.permissao"
	},
	["PaisanaPMERJCoronel"] = {
		_config = {
			title = "À Paisana PMESP",
			gtype = "cargo"
		},
		"paisanapoliciapmerjCoronel.permissao"
	},
	["PaisanaPMERJComandante"] = {
		_config = {
			title = "À Paisana PMESP",
			gtype = "cargo"
		},
		"paisanapoliciapmerjComandante.permissao"
	},

----------------------------------------- RECOM PMERJ --------------------------------------------- 
 
  ["[PMRJ] - Recom"] = {
    _config = {
      gtype = "cargos",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"pm3.arsenal",
	"pm3.garagem",
	"pm3.cloakroom",
	"mission.policia",
	"bau.pm",
	"coronelpm.paycheck",
	"policia.permissao",
	"pm3.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"pmcar.permissao",
	"pmheli.permissao",
	"recom.permissao",
	"helipmerj.permissao",
	"recom.permissao",
	-- Salario
	"Recom.permissao"
  },

----------------------------------------- CHOQUE PMERJ --------------------------------------------- 
 
  ["[PMRJ] - BPCHQ"] = {
    _config = {
      gtype = "cargos",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"pm3.arsenal",
	"pm3.garagem",
	"pm3.cloakroom",
	"mission.policia",
	"coronelpm.paycheck",
	"policia.permissao",
	"pm3.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	"bau.pm",
	-----------------
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"pmcar.permissao",
	"pmheli.permissao",
	"bpchq.permissao",
	"helipmerj.permissao",
	"bpchq.permissao",
	-- Salario
	"Choque.permissao"
  },

----------------------------------------- BOPE ---------------------------------------------
  ["[BOPE] - Coronel"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"mission.policia",
	"coronelpm.paycheck",
	"bau.bope",
	"policia.permissao",
	"pm3.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"bope.permissao",
	"bopecar.permissao",
	-- Salario
	"CoronelBOPE.permissao"
  }, 
  
  ["[BOPE] - Tenente Coronel"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"mission.policia",
	"coronelpm.paycheck",
	"policia.permissao",
	"pm3.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"bau.bope",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"bope.permissao",
	"bopecar.permissao",
	-- Salario
	"TenenteCoronelBOPE.permissao"
  },

  ["[BOPE] - Major"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"mission.policia",
	"coronelpm.paycheck",
	"policia.permissao",
	"pm3.whitelisted",
	"bau.bope",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"bope.permissao",
	"bopecar.permissao",
	-- Salario
	"MajorBOPE.permissao"
  },
  
  ["[BOPE] - Capitão"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"mission.policia",
	"coronelpm.paycheck",
	"bau.bope",
	"policia.permissao",
	"pm3.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"bope.permissao",
	"bopecar.permissao",
	-- Salario
	"CapitaoBOPE.permissao"
  },

  ["[BOPE] - Tenente"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"mission.policia",
	"coronelpm.paycheck",
	"policia.permissao",
	"pm3.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
    "police.menu",
	"bau.bope",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"bope.permissao",
	"bopecar.permissao",
	-- Salario
	"TenenteBOPE.permissao"
  },
  
  ["[BOPE] - Aspirante"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"mission.policia",
	"coronelpm.paycheck",
	"policia.permissao",
	"pm3.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	"bau.bope",
	-----------------
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"bope.permissao",
	"bopecar.permissao",
	-- Salario
	"AspiranteBOPE.permissao"
  },
 
----------------------------------------- Policia Civil ---------------------------------------------

  ["[PCRJ] - Delegado Geral"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"mission.policia",
	"coronelpm.paycheck",
	"policia.permissao",
	"pm3.whitelisted",
	"portas.policia",
	"police.assalto",
	"bau.pc",
	"naotoma.multa",
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"helipc.permissao",
	"carropc.permissao",
	"pcivil.permissao",
	-- Salario
	"DelegadoGeralPC.permissao"
  },
  
  ["[PCRJ] - Delegado(a)"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"mission.policia",
	"coronelpm.paycheck",
	"policia.permissao",
	"pm3.whitelisted",
	"bau.pc",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"helipc.permissao",
	"carropc.permissao",
	"pcivil.permissao",
	-- Salario
	"DelegadoPC.permissao"
  },
  
  ["[PCRJ] - Delegado Adjunto"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"mission.policia",
	"coronelpm.paycheck",
	"bau.pc",
	"policia.permissao",
	"pm3.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"helipc.permissao",
	"carropc.permissao",
	"pcivil.permissao",
	-- Salario
	"DelegadoAdjuntoPC.permissao"
  },
  
  ["[PCRJ] - Investigador"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"mission.policia",
	"coronelpm.paycheck",
	"policia.permissao",
	"pm3.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"bau.pc",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"helipc.permissao",
	"carropc.permissao",
	"pcivil.permissao",
	-- Salario
	"InvestigadorPC.permissao"
  },
 
  ["[PCRJ] - Perito Criminal"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"mission.policia",
	"coronelpm.paycheck",
	"policia.permissao",
	"pm3.whitelisted",
	"portas.policia",
	"bau.pc",
	"police.assalto",
	"naotoma.multa",
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"helipc.permissao",
	"carropc.permissao",
	"pcivil.permissao",
	-- Salario
	"PeritoCriminalPC.permissao"
  },

  ["[PCRJ] - Escrivão"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"mission.policia",
	"coronelpm.paycheck",
	"policia.permissao",
	"pm3.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- NOVOS
	"helipc.permissao",
	"carropc.permissao",
	"pcivil.permissao",
	-- Salario
	"EscrivaoPC.permissao"
  },
 
----------------------------------------- Policia Federal --------------------------------------------- 
  
  ["[Delegado] Policia Federal"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"pf.arsenal",
	"pf.garagem",
	"pf.cloakroom",
	"mission.policia",
	"delegado.paycheck",
	"pf.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  ["[Investigador] Policia Federal"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"pf.arsenal",
	"pf.garagem",
	"pf.cloakroom",
	"mission.policia",
	"investigador.paycheck",
	"pf.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  ["[Escrivão] Policia Federal"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"pf.arsenal",
	"pf.garagem",
	"pf.cloakroom",
	"mission.policia",
	"escrivao.paycheck",
	"pf.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  ["[Perito Criminal] Policia Federal"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"pf.arsenal",
	"pf.garagem",
	"pf.cloakroom",
	"mission.policia",
	"perito.paycheck",
	"pf.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  ["[Agente] Policia Federal"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"pf.arsenal",
	"pf.garagem",
	"pf.cloakroom",
	"mission.policia",
	"agentepf.paycheck",
	"pf.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  ["[Oficial] Policia Federal"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"pf.arsenal",
	"pf.garagem",
	"pf.cloakroom",
	"mission.policia",
	"delegado.paycheck",
	"pf.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },

----------------------------------------- Policia Rodoviaria ---------------------------------------------  
 
  ["[Diretor Geral] - Policial Rodoviario"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"prf.arsenal",
	"prf.garagem",
	"prf.cloakroom",
	"mission.policia",
	"diretorgeral.paycheck",
	"prf.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  ["[Diretor Auxiliar] - Policial Rodoviario"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"prf.arsenal",
	"prf.garagem",
	"prf.cloakroom",
	"mission.policia",
	"diretorauxiliar.paycheck",
	"prf.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  ["[Agente Especial] - Policial Rodoviario"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"prf.arsenal",
	"prf.garagem",
	"prf.cloakroom",
	"mission.policia",
	"agenteesp.paycheck",
	"prf.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  ["[Agente] - Policial Rodoviario"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"prf.arsenal",
	"prf.garagem",
	"prf.cloakroom",
	"mission.policia",
	"agenteprf.paycheck",
	"prf.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  ["[Agente Administrativo] - Policial Rodoviario"] = {
    _config = {
      gtype = "cargo",
      onjoin = function(player) vRPclient._setCop(player,true) end,
      onspawn = function(player) vRPclient._setCop(player,true) end,
      onleave = function(player) vRPclient._setCop(player,false) end
    },
	"prf.arsenal",
	"prf.garagem",
	"prf.cloakroom",
	"mission.policia",
	"agenteadm.paycheck",
	"prf.whitelisted",
	"portas.policia",
	"police.assalto",
	"naotoma.multa",
	-----------------
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  
----------------------------------------- SAMU --------------------------------------------- 
  ["[SOCORRISTA] - SAMU"] = {
    _config = { gtype = "cargo" },
	"emergency.garagem",
	"emergency.arsenal",
	"emergency.cloakroom",
	"socorrista.paycheck",
	"mission.SAMU",
	"ems1.whitelisted",
	"naotoma.multa",
	-----------------
    "emergency.revive",
    "emergency.shop",
    "emergency.service",
	"paramedico.permissao",
	"reviver.permissao",
	-- Salario
	"SocorristaSAMU.permissao"
  },
  ["[TÉCNICO DE ENFERMAGEM] - SAMU"] = {
    _config = { gtype = "cargo" },
	"emergency.garagem",
	"emergency.arsenal",
	"emergency.cloakroom",
	"mission.SAMU",
	"paramedico.paycheck",
	"ems2.whitelisted",
	"naotoma.multa",
	-----------------
    "emergency.revive",
    "emergency.shop",
    "emergency.service",
	"paramedico.permissao",
	"reviver.permissao",
	-- Salario
	"TecSAMU.permissao"
  },
  ["[ENFERMEIRO] - SAMU"] = {
    _config = { gtype = "cargo" },
	"emergency.garagem",
	"emergency.arsenal",
	"emergency.cloakroom",
	"mission.SAMU",
	"medico.paycheck",
	"ems3.whitelisted",
	"naotoma.multa",
	-----------------
    "emergency.revive",
    "emergency.shop",
    "emergency.service",
	"paramedico.permissao",
	"reviver.permissao",
	-- Salario
	"EnfermeiroSAMU.permissao"
  },
  ["[MÉDICO(A)] - SAMU"] = {
    _config = { gtype = "cargo" },
	"emergency.garagem",
	"emergency.arsenal",
	"emergency.cloakroom",
	"mission.SAMU",
	"doutor.paycheck",
	"ems4.whitelisted",
	"naotoma.multa",
	-----------------
    "emergency.revive",
    "emergency.shop",
    "emergency.service",
	"paramedico.permissao",
	"reviver.permissao",
	-- Salario
	"MedicoSAMU.permissao"
  },
  ["[COORDENADOR] - SAMU"] = {
    _config = { gtype = "cargo" },
	"emergency.garagem",
	"emergency.arsenal",
	"emergency.cloakroom",
	"mission.SAMU",
	"medicochefe.paycheck",
	"ems4.whitelisted",
	"naotoma.multa",
	-----------------
    "emergency.revive",
    "emergency.shop",
    "emergency.service",
	"paramedico.permissao",
	"reviver.permissao",
	-- Salario
	"CoordenadorSAMU.permissao"
  },
  ["[CHEFE] - SAMU"] = {
    _config = { gtype = "cargo" },
	"emergency.garagem",
	"emergency.arsenal",
	"emergency.cloakroom",
	"mission.SAMU",
	"chefesamu.paycheck",
	"ems5.whitelisted",
	"naotoma.multa",
	-----------------
    "emergency.revive",
    "emergency.shop",
    "emergency.service",
	"paramedico.permissao",
	"reviver.permissao",
	-- Salario
	"ChefeSAMU.permissao"
  },
  
----------------------------------------- MotoClub --------------------------------------------- 
  
  ["[P.C.C] - Lider"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um membro do ~r~PCC") end
    },
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	"build.gun.pcc",   -- ITEM TRANSFORME
	-----------------
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
	"pccfarm.permissao",
	"bau.pcc",
  },
  ["[P.C.C] - Gerente"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um membro do ~r~PCC") end
    },
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	"build.gun.pcc",   -- ITEM TRANSFORME
	-----------------
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
	"pccfarm.permissao",
	"bau.pcc",
  },
  ["[P.C.C] - Membro"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um membro do ~r~PCC") end
    },
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	-----------------
	"build.gun.pcc",   -- ITEM TRANSFORME
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
	"pccfarm.permissao",
  },
  ["[C.V] - Lider"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um lider do ~r~CV") end
    },
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	-----------------
	"comando.vermelho.cocaina.farm", -- teste de farm antigo
	"build.gun.cv", -- ITEM TRANSFORME
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
	"cvfarm.permissao",
  },  
  ["[C.V] - Gerente"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um gerente do ~r~CV") end
    },
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	-----------------
	"build.gun.cv", -- ITEM TRANSFORME
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
	"cvfarm.permissao",
  },  
  ["[C.V] - Membro"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um membro do ~r~CV") end
    },
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	-----------------
	"build.gun.cv", -- ITEM TRANSFORME
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
	"cvfarm.permissao",
  },  
  ["[T.C.P] - Lider"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um lider do ~r~TCP") end
    },
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	-----------------
	"build.gun.tcp", -- ITEM TRANSFORME
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
	"build.gun.cv",
	"tcpfarm.permissao",
	"bau.tcp",
  },  
  ["[T.C.P] - Gerente"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um gerente do ~r~TCP") end
    },
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	-----------------
	"build.gun.tcp", -- ITEM TRANSFORME
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
	"tcpfarm.permissao",
	"bau.tcp",
  },  
  ["[T.C.P] - Membro"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um membro do ~r~TCP") end
    },
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	-----------------
	"build.gun.tcp", -- ITEM TRANSFORME
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
	"tcpfarm.permissao",
  },  
  ["[A.D.A] - Lider"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um lider da ~r~ADA") end
    },
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	-----------------
	"build.gun.ada", -- ITEM TRANSFORME
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
	"adafarm.permissao",
	"bau.ada",
  },  
  ["[A.D.A] - Gerente"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um gerente da ~r~ADA") end
    },
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	-----------------
	"build.gun.ada", -- ITEM TRANSFORME
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
	"adafarm.permissao",
	"bau.ada",
  },  
  ["[A.D.A] - Membro"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um membro da ~r~ADA") end
    },
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	-----------------
	"build.gun.ada", -- ITEM TRANSFORME
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
	"adafarm.permissao",
  },
  ["[Milicia] - Lider"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um ~y~miliciano") end
    },
    "mlc.garagem",
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	-----------------
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
	"miliciarmas.permissao",
	"miliciaentrada.permissao",
	"miliciafarm.permissao",
	"bau.milicia",
	"milicia.permissao",
  },  
  ["[Milicia] - Gerente"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um ~y~miliciano") end
    },
    "mlc.garagem",
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	-----------------
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
	"miliciarmas.permissao",
	"miliciaentrada.permissao",
	"miliciafarm.permissao",
	"bau.milicia",
	"milicia.permissao",
  },  
  ["[Milicia] - Membro"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um ~y~miliciano") end
    },
	"mlc.garagem",
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	-----------------
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
	"merryweather.permissao",
	"miliciaentrada.permissao",
	"miliciafarm.permissao",
	"milicia.permissao",
  },
  ----------- NEWS
  ["[MAFIA] - Lider"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um lider da ~r~Mafia") end
    },
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	-----------------
	"build.gun.yakuza", -- ITEM TRANSFORME
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
	"mafiafarm.permissao",
	"mafiaarmas.permissao",
	"bau.cosanostra",
	"mafia.permissao",
  },
  ["[MAFIA] - Gerente"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um gerente da ~r~Mafia") end
    },
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	-----------------
	"build.gun.yakuza", -- ITEM TRANSFORME
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
	"mafiafarm.permissao",
	"mafiaarmas.permissao",
	"bau.cosanostra",
	"mafia.permissao",
  },
  ["[MAFIA] - Membro"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um membro da ~r~Mafia") end
    },
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	-----------------
	"build.gun.yakuza", -- ITEM TRANSFORME
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
	"mafiafarm.permissao",
	"mafiaarmas.permissao",
	"mafia.permissao",
  },
  ["[YAKUZA] - Lider"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um lider da ~r~Yakuza") end
    },
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	-----------------
	"build.gun.yakuza", -- ITEM TRANSFORME
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
	"yakuzafarm.permissao",
	"yakuzaentrada.permissao",
	"yakuzaarmas.permissao",
	"yakuzaliderentrada.permissao",
	"bau.yakuza",
	"yakuza.permissao",
  },  
  ["[YAKUZA] - Gerente"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um gerente da ~r~Yakuza") end
    },
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	-----------------
	"build.gun.yakuza", -- ITEM TRANSFORME
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
	"yakuzafarm.permissao",
	"yakuzaentrada.permissao",
	"bau.yakuza",
	"yakuzaarmas.permissao",
	"yakuza.permissao",
  },  
  ["[YAKUZA] - Membro"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um membro da ~r~Yakuza") end
    },
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	-----------------
	"build.gun.yakuza", -- ITEM TRANSFORME
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
	"yakuzafarm.permissao",
	"yakuzaentrada.permissao",
	"bau.yakuza",
	"yakuzaarmas.permissao",
	"yakuza.permissao",
  },  
  ["[MOTOCLUB] - Lider"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um lider do ~r~TCP") end
    },
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	-----------------
	"build.gun.motoclub", -- ITEM TRANSFORME
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
	"build.gun.cv",
	"motoclub.permissao",
	"entrada.permissao",
	"motoclub.permissao",
	"motoclubliderentrada.permissao",
	"bau.mc",
	"mcfarm.permissao",
  },  
  ["[MOTOCLUB] - Gerente"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um gerente do ~r~TCP") end
    },
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	-----------------
	"build.gun.motoclub", -- ITEM TRANSFORME
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
	"motoclub.permissao",
	"entrada.permissao",
	"motoclub.permissao",
	"bau.mc",
	"mcfarm.permissao",
  },  
  ["[MOTOCLUB] - Membro"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um membro do ~r~TCP") end
    },
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	-----------------
	"build.gun.motoclub", -- ITEM TRANSFORME
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
	"motoclub.permissao",
	"entrada.permissao",
	"motoclub.permissao",
	"mcfarm.permissao",
  },  
  ["[COSA NOSTRA] - Lider"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um lider da ~r~ADA") end
    },
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	-----------------
	"build.gun.cosanostra", -- ITEM TRANSFORME
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
  },  
  ["[COSA NOSTRA] - Gerente"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um gerente da ~r~ADA") end
    },
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	-----------------
	"build.gun.cosanostra", -- ITEM TRANSFORME
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
  },  
  ["[COSA NOSTRA] - Membro"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um membro da ~r~ADA") end
    },
	"fac.armas",
	-----------------
	"hacker.service",
	"contrabandista.service",
	"tartaruga.service",
	"metanfetamina.service",
	"cocaina.service",
	"maconha.service",
	-----------------
	"build.gun.cosanostra", -- ITEM TRANSFORME
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
  },
  --== EMPREGOS LEGAIS ==--
  --== EMPREGOS LEGAIS ==--
  --== EMPREGOS LEGAIS ==--
  
  ["Taxi"] = {
	_config = { gtype = "job" },
    "taxi.service",
	"taxi.garagem",
    "taxi.paycheck",
    "mission.UBER.passenger"
  },
  
  ["UBER"] = {
    _config = { gtype = "job" },
    "UBER.service",
	"UBER.paycheck",
	"mission.UBER.passenger"
  },
  
  ["Bennys"] = {
    _config = { gtype = "cargo" },
	"mecanico.permissao",
    "mecanico.service",
	"mecanico.kit",
	"mecanico.garagem",
	"mecanico.cloakroom",
	"vehicle.repair",
    "vehicle.replace",
	"mission.mecanico",
	"mecanicopay.permissao",
	"bennyscar.permissao",
  },
  
  -- ["Motorista de Onibus"] = {
    -- _config = { gtype = "job" },
	-- "onibus.service",
    -- "onibus.paycheck",
  -- },
  
  ["Pescador"] = {
    _config = { gtype = "job" },
	"pescador.service",
	"pescador.garagem",
	"pescador.paycheck",
  },
  
  ["Leiteiro"] = {
	_config = { gtype = "job" },
    "leiteiro.service",
	"leiteiro.paycheck",
  },
  
  -- ["Transportador de Valores"] = {
    -- _config = { gtype = "job" },
	-- "valores.service",
	-- "valores.garagem",
	-- "valores.paycheck",
  -- },
  
  ["Entregador iFood"] = {
    _config = { gtype = "job" },
	"mission.entregador",
	"entregador.cloakroom",
    "entregador.service",
	"entregador.garagem",
	"entregador.paycheck",
  },
  
  ["Farmaceutico"] = {
    _config = { gtype = "job" },
    "farmaceutico.service",
	"farmaceutico.paycheck",
  },
  
  ["Minerador de Diamante"] = {
	_config = { gtype = "job" },
    "diamante.service",
	"diamante.paycheck",
  },
  
  ["Minerador de Ouro"] = {
	_config = { gtype = "job" },
    "ouro.service",
	"ouro.paycheck",
  },
  
  ["Minerador de Cobre"] = {
	_config = { gtype = "job" },
    "cobre.service",
	"cobre.paycheck",
  },
  
  ["Catador de Trigo"] = {
	_config = { gtype = "job" },
    "trigo.service",
	"trigo.paycheck",
  },
  
  ["Garimpeiro de Sal"] = {
	_config = { gtype = "job" },
    "sal.service",
	"sal.paycheck",
  },
  
  ["Caminhoneiro"] = {
	_config = { gtype = "job" },
    "caminhoneiro.service",
	"caminhoneiro.paycheck",
  },
  
  ["Psicologo"] = {
    _config = { gtype = "job" },
	"psicologo.service",
	"psicologo.paycheck",
  },
  
  ["Prostituta"] = {
    _config = { gtype = "job" },
    "prostituta.cloakroom",
	"prostituta.service",
	"prostituta.paycheck",
  },
  
----------------------------------------- Jornalista --------------------------------------------- 
  
  ["Jornalista"] = {
    _config = { gtype = "cargo"},
    "jornal.garagem",
	"jornal.service",
	"jornal.cloakroom",
    "jornalista.paycheck",
	"jornal.whitelisted",
	-- Salario
	"Jornalista.permissao"
  },
  ["Repórter"] = {
    _config = { gtype = "cargo"},
	"jornal.garagem",
	"jornal.service",
	"jornal.cloakroom",
    "reporter.paycheck",
	"jornal.whitelisted",
	-- Salario
	"Reporter.permissao"
  },
  ["Diretor do Jornal"] = {
    _config = { gtype = "cargo"},
	"jornal.garagem",
	"jornal.service",
	"jornal.cloakroom",
    "diretorjornal.paycheck",
	"jornal.whitelisted",
	-- Salario
	"DiretorJornal.permissao"
  },
  
----------------------------------------- Advocacia --------------------------------------------- 
  
  ["Advogado"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"À serviço da lei como ~b~Advogado.") end
	},
	"advogado.vehicle",
	"advogado.service",
	"advogado.oab",
	"advogado.cloakroom",
	"advogado.paycheck",
	"adv.whitelisted",
	-- Salario
	"Advogado.permissao"
  },
  ["Presidente da Justiça"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"À serviço da lei como ~b~Presidente da Justiça.") end
	},
	"advogado.garagem",
	"advogado.service",
	"advogado.oab",
	"advogado.cloakroom",
	"presidentej.paycheck",
	"adv.whitelisted",
	-- Salario
	"PresidenteDaJustica.permissao"
  },
  ["Promotor de Justiça"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"À serviço da lei como ~b~Promotor de Justiça.") end
	},
	"advogado.garagem",
	"advogado.service",
	"advogado.oab",
	"advogado.cloakroom",
	"promotorj.paycheck",
	"adv.whitelisted",
	-- Salario
	"PromotorDaJustica.permissao"
  },
  
  ["Juiz"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"À serviço da lei como ~b~Juiz.") end
	},
	"advogado.garagem",
	"advogado.service",
	"advogado.oab",
	"advogado.cloakroom",
	"juiz.paycheck",
	"adv.whitelisted",
	-----------------
    "police.menu",
	"police.spikes",
    "police.pc",
	"police.freeze",
	"police.jail",
	"police.bmjail",
	"police.bmfine",
	"police.bmunjail",
	"police.bmcuff",
	"police.fine",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.seize.weapons",
    "police.seize.items",
	"police.asklc",
    "police.announce",
    "-police.seizable",
	-- Salario
	"Juiz.permissao"
  },

  ["Desempregado"] = {
    _config = { 
		gtype = "job",
		onspawn = function(player) vRPclient._notify(player,"~b~Desempregado ~w~arrume um Emprego.") end
	},
    "desempregado.permissao"
  },
  
----------------------------------------- Empregos Ilegais --------------------------------------------- 

  ["Traficante de Maconha"] = {
    _config = { 
		gtype = "job",
		onspawn = function(player) vRPclient._notify(player,"Traficantede Maconha, cuidado com proerd") end	
	},
    "maconha.service",
  },
  
  ["Traficante de Cocaína"] = {
    _config = { 
		gtype = "job",
		onspawn = function(player) vRPclient._notify(player,"Cuidado para não se tornar o Fabio Assunção") end
	},
	"cocaina.service",
  },
  
  ["Traficante de Metanfetamina"] = {
    _config = { gtype = "job" },
	"metanfetamina.service",
  },
  
  -- ["Traficante de Ecstasy"] = {
    -- _config = { gtype = "job" },
	-- "ecstasy.service",
  -- },
  
  ["Traficante de Tartaruga"] = {
	_config = { gtype = "job" },
    "tartaruga.service",
  },
  
  ["Contrabandista de Armas"] = {
    _config = { 
		gtype = "job",
		onspawn = function(player) vRPclient._notify(player,"Contrabandista de Armas.") end
	},
	"mission.armas",
    "contrabandista.service"
  },
  
  ["Hacker"] = {
    _config = { 
		gtype = "job",
		onspawn = function(player) vRPclient.notify(player,{"Ae parça, já que tu é hacker, instala minha impressora?."}) end	},
	"mission.hacker",
	"hacker.service",
	"hacker.hack"
  },
  
  ["Ladrão de carros"] = {
    _config = { gtype = "job" },
	"mission.ladrao",
	"mugger.mug"
  },
  
----------------------------------------- VIPS --------------------------------------------- 
  
  ["VIP Bronze"] = {
    _config = {
      gtype = "vip",
    },
    "vip.permissao",
	"bronze.permissao"
  },
  ["VIP Prata"] = {
    _config = {
      gtype = "vip",
    },
    "vipp.permissao",
	"prata.permissao"
  }, 
  ["VIP Ouro"] = {
    _config = {
      gtype = "vip",
    },
    "vippp.permissao",
	"ouro.permissao"
  }, 
  ["VIP Diamante"] = {
    _config = {
      gtype = "vip",
    },
    "vipppp.permissao",
	"diamante.permissao"
  },
   ["VIP Platina"] = {
    _config = {
      gtype = "vip",
    },
    "vipppp.permissao",
	"platina.permissao"
  },
   ["VIP Mafioso"] = {
    _config = {
      gtype = "vip",
    },
    "vipppp.permissao",
	"mafioso.permissao"
  },
  ["VIP Supremo"] = {
    _config = {
      gtype = "vip",
    },
    "vippppp.permissao",
	"supremo.permissao"
  },
  ["VIP Magnata"] = {
    _config = {
      gtype = "vip",
    },
    "vippppppp.permissao",
	"supremo.permissao"
  },
  
  --== Sets ==--
  --== Sets ==--
  --== Sets ==--
}

-- groups are added dynamically using the API or the menu, but you can add group when an user join here
cfg.users = {
  [1] = { -- give superadmin and admin group to the first created user on the database
    "PC-superadmin",
    "PC-admin"
  }
}

-- group selectors
-- _config
--- x,y,z, blipid, blipcolor, permissions (optional)

cfg.selectors = {
  ["Agência de Empregos"] = {
    _config = {x = -268.363739013672, y = -957.255126953125, z = 31.22313880920410, blipid = 351, blipcolor = 47},
    "Taxi",
	"UBER",
    "Mecânico",
	"Entregador iFood",
	"Pescador",
	"Farmaceutico",
	"Leiteiro",
	"Minerador de Diamante",
	"Minerador de Ouro",
	"Minerador de Cobre",
	"Catador de Trigo",
	"Garimpeiro de Sal",
	"Prostituta",
	"Psicologo",
	"Caminhoneiro",
    "Desempregado"
  },
  ["Empregos Ilegais"] = {
    _config = {x = 707.324462890625, y = -966.986511230469, z = 30.4128551483154, blipid = 351, blipcolor = 49},
	"Traficante de Maconha",
	"Traficante de Cocaína",
	"Traficante de Metanfetamina",
	"Traficante de Tartaruga",
	"Contrabandista de Armas",
	"Ladrão de carros",
	"Hacker",
  },
}

return cfg

