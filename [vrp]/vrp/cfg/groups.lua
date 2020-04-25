
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
	"admin.permissao",
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
	"player.inspect",
	"player.fixhaircut",
	"player.mask",
	"player.userlist",
	"mobile.charge",
	"mobile.pay",
	"store.money",
	"store.bodyarmor",
	"store.weapons",
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
	"CmdGeral.permissao"
	
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
	"pmcar.permissao",
	"pmheli.permissao",
	"pmerj.permissao",
	"helipmerj.permissao",
	"policiaheli.permissao",
	"pmerj.permissao",
	-- Salario
	"Coronel.permissao"
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
  
  ["[Lider] - Moto Clube"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um membro do ~p~Moto Clube") end
    },
	"mc.garagem",
	"mc.armas",
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
  },
  ["[Membro] - Moto Clube"] = {
    _config = { 
		gtype = "cargo",
		onspawn = function(player) vRPclient._notify(player,"Você é um membro do ~p~Moto Clube") end
    },
	"mc.garagem",
	"mc.armas",
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
  },
  
  ["[P.C.C] - Líder"] = {
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
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
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
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
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
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
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
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
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
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
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
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
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
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
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
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
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
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
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
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
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
	"police.menu",
	"police.bmcuff",
    "police.drag",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
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
  
  ["lf"] = {
    "lf.whitelisted"
  },
  ["pcc"] = {
    "pcc.whitelisted"
  },
  ["cv"] = {
    "cv.whitelisted"
  },
  ["milicia"] = {
    "milicia.whitelisted"
  },
  ["ems1"] = {
    "ems1.whitelisted"
  },
  ["ems2"] = {
    "ems2.whitelisted"
  },
  ["ems3"] = {
    "ems3.whitelisted"
  },
  ["ems4"] = {
    "ems4.whitelisted"
  },
  ["ems5"] = {
    "ems5.whitelisted"
  },
  ["pm1"] = {
    "pm1.whitelisted"
  },
  ["pm2"] = {
    "pm2.whitelisted"
  },
  ["pm3"] = {
    "pm3.whitelisted"
  },
  ["BOPE1"] = {
    "BOPE1.whitelisted"
  },
  ["BOPE2"] = {
    "BOPE2.whitelisted"
  },
  ["BOPE3"] = {
    "BOPE3.whitelisted"
  },
  ["ftesp1"] = {
    "ftesp1.whitelisted"
  },
  ["ftesp2"] = {
    "ftesp2.whitelisted"
  },
  ["ftesp3"] = {
    "ftesp3.whitelisted"
  },
  ["prf"] = {
    "prf.whitelisted"
  },
  ["pf"] = {
    "pf.whitelisted"
  },
  ["jornal"] = {
    "jornalista.whitelisted"
  },
  ["advogado"] = {
    "adv.whitelisted"
  },
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
  
  ["Jornalista"] = {
    _config = {x = -598.38677978516, y = -927.21087646484, z = 23.869129180908, permissions = {"jornalista.whitelisted"} },
	"Jornalista",
	"Repórter",
	"Diretor do Jornal",
	"Desempregado"
  },
  ["Empregos Judiciais"] = {
    _config = {x = -1910.4616699219, y = -571.91119384766, z = 19.097234725952, permissions = {"adv.whitelisted"}},
    "Advogado",
	"Juiz",
	"Promotor de Justiça",
	"Presidente da Justiça",
	"Desempregado"
  },
  
  ["Moto Clube"] = {
    _config = {x = 90.147964477539, y = 3749.693359375, z = 40.774719238281, blipid = 351, blipcolor = 38, permissions = {"lf.whitelisted"} }, -- 90.147964477539,3749.693359375,40.774719238281
    "[Lider] - Moto Clube",
	"[Membro] - Moto Clube",
    "Desempregado"
  },
  ["CV"] = {
    _config = {x = 772.00939941406, y = -260.08010864258, z = 68.945838928223, blipid = 351, blipcolor = 38, permissions = {"cv.whitelisted"} },
	"[C.V] - Lider",
	"[C.V] - Membro",
	"Desempregado"
  },
  ["PCC"] = { 
    _config = {x = 1362.5460205078, y = -601.0849609375, z = 77.328430175782, blipid = 351, blipcolor = 38, permissions = {"pcc.whitelisted"} },
	"[P.C.C] - Líder",
	"[P.C.C] - Membro",
	"Desempregado"
  },
  ["Milicia"] = {
    _config = {x = 2045.7077636719, y = -150.96459960938, z = 271.07241821289, blipid = 351, blipcolor = 38, permissions = {"milicia.whitelisted"} }, -- 2045.7077636719,-150.96459960938,271.07241821289
	"[Milicia] - Lider",
	"[Milicia] - Membro",
	"Desempregado"
  },
  
  ["PMESP1"] = {
    _config = {x = 440.92984008789, y = -975.92669677734, z = 30.689586639404, permissions = {"pm1.whitelisted"} },
	"[Recruta] - PMERJ",
	"[Soldado] - PMERJ",
	"[Cabo] - PMERJ",
	"Desempregado"
  },  
  ["PMESP2"] = {
    _config = {x = 440.92984008789, y = -975.92669677734, z = 30.689586639404, permissions = {"pm2.whitelisted"} },
	"[3ºSargento] - PMERJ",
	"[2ºSargento] - PMERJ",
	"[1ºSargento] - PMERJ",
	"[Sub-Tenente] - PMERJ",
	"[2ºTenente] - PMERJ",
	"[1ºTenente] - PMERJ",
	"[GRPAe] - PMERJ",
	"ROCAM",
	"Desempregado"
  },  
  ["PMESP3"] = {
    _config = {x = 440.92984008789, y = -975.92669677734, z = 30.689586639404, permissions = {"pm3.whitelisted"} },
	"[Capitão] - PMERJ",
	"[Major] - PMERJ",
	"[Tenente Coronel] - PMERJ",
	"[Coronel] - PMERJ",
	"Desempregado"
  },
  ["BOPE1"] = {
    _config = {x = 440.92984008789, y = -975.92669677734, z = 30.689586639404, permissions = {"BOPE1.whitelisted"} },
	"[Recruta] - BOPE",
	"[Soldado] - BOPE",
	"[Cabo] - BOPE",
	"Desempregado"
  },  
  ["BOPE2"] = {
    _config = {x = 440.92984008789, y = -975.92669677734, z = 30.689586639404, permissions = {"BOPE2.whitelisted"} },
	"[3ºSargento] - BOPE",
	"[2ºSargento] - BOPE",
	"[1ºSargento] - BOPE",
	"[Sub-Tenente] - BOPE",
	"[2ºTenente] - BOPE",
	"[1ºTenente] - BOPE",
	"Desempregado"
  },  
  ["BOPE3"] = {
    _config = {x = 440.92984008789, y = -975.92669677734, z = 30.689586639404, permissions = {"BOPE3.whitelisted"} },
	"[Capitão] - BOPE",
	"[Major] - BOPE",
	"[Tenente Coronel] - BOPE",
	"[Coronel] - BOPE",
	"Desempregado"
  },
  ["FTESP1"] = {
    _config = {x = 440.92984008789, y = -975.92669677734, z = 30.689586639404, permissions = {"ftesp1.whitelisted"} },
	"[Recruta] - FTESP",
	"[Soldado] - FTESP",
	"[Cabo] - FTESP",
	"Desempregado"
  },  
  ["FTESP2"] = {
    _config = {x = 440.92984008789, y = -975.92669677734, z = 30.689586639404, permissions = {"ftesp2.whitelisted"} },
	"[3ºSargento] - FTESP",
	"[2ºSargento] - FTESP",
	"[1ºSargento] - FTESP",
	"[Sub-Tenente] - FTESP",
	"[2ºTenente] - FTESP",
	"[1ºTenente] - FTESP",
	"Desempregado"
  },  
  ["FTESP3"] = {
    _config = {x = 440.92984008789, y = -975.92669677734, z = 30.689586639404, permissions = {"ftesp3.whitelisted"} },
	"[Capitão] - FTESP",
	"[Major] - FTESP",
	"[Tenente Coronel] - FTESP",
	"[Coronel] - FTESP",
	"Desempregado"
  },
  ["PF"] = {
    _config = {x = 125.66634368896, y = -766.67309570313, z = 242.1520690918, permissions = {"pf.whitelisted"} },
	"[Delegado] Policia Federal",
	"[Investigador] Policia Federal",
	"[Escrivão] Policia Federal",
	"[Perito Criminal] Policia Federal",
	"[Agente] Policia Federal",
	"[Oficial] Policia Federal",
	"Desempregado"
  },
  ["PRF"] = {
    _config = {x = 440.92984008789, y = -975.92669677734, z = 30.689586639404, permissions = {"prf.whitelisted"} },
	"[Diretor Geral] - Policial Rodoviario",
	"[Diretor Auxiliar] - Policial Rodoviario",
	"[Agente Especial] - Policial Rodoviario",
	"[Agente] - Policial Rodoviario",
	"[Agente Administrativo] - Policial Rodoviario",
	"Desempregado"
  },
  ["PRF2"] = {
    _config = {x = 1851.0864257813, y = 3690.6123046875, z = 34.267082214355, permissions = {"prf.whitelisted"} },
	"[Diretor Geral] - Policial Rodoviario",
	"[Diretor Auxiliar] - Policial Rodoviario",
	"[Agente Especial] - Policial Rodoviario",
	"[Agente] - Policial Rodoviario",
	"[Agente Administrativo] - Policial Rodoviario",
	"Desempregado"
  },
  ["SAMU1"] = {
    _config = {x = 230.88018798828, y = -1368.2880859375, z = 39.534374237061, permissions = {"ems1.whitelisted"} },
	"[Socorrista] - SAMU",
	"Desempregado"
  }, 
  ["SAMU2"] = {
    _config = {x = 230.88018798828, y = -1368.2880859375, z = 39.534374237061, permissions = {"ems2.whitelisted"} },
	"[Paramedico] - SAMU",
	"Desempregado"
  }, 
  ["SAMU3"] = {
    _config = {x = 230.88018798828, y = -1368.2880859375, z = 39.534374237061, permissions = {"ems3.whitelisted"} },
	"[Medico] - SAMU",
	"Desempregado"
  }, 
  ["SAMU4"] = {
    _config = {x = 230.88018798828, y = -1368.2880859375, z = 39.534374237061, permissions = {"ems4.whitelisted"} },
	"[Doutor] - SAMU",
	"[Medico-Chefe] - SAMU",
	"Desempregado"
  }, 
  ["SAMU5"] = {
    _config = {x = 230.88018798828, y = -1368.2880859375, z = 39.534374237061, permissions = {"ems5.whitelisted"} },
	"[Chefe] - SAMU",
	"Desempregado"
  }, 
}

return cfg

