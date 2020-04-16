--[[
    FiveM Scripts
    Copyright C 2018  Sighmir

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published
    by the Free Software Foundation, either version 3 of the License, or
    at your option any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
]]


local lang = {
	blips = {
		button = "@Blips",
		perm = "admin.blips",
		desc = "Blips dos Players.",
		on = "~g~Blips ligados.",
		off = "~r~Blips desligados.",
	},
	bodyarmor = {
		id = "colete",
		name = "Colete",
		desc = "Interaja com seu colete.",
		equip = "Equipar",
		damaged = "Colete danificado.",
		store = {
			button = "Guardar Colete",
			perm = "store.bodyarmor",
			desc = "Guarde o colete na bolsa.",
		},
	},
	crun = {
		button = "@Crun",
		perm = "admin.crun",
		desc = "Executar uma função localmente.",
		prompt = "Função Local:",
	},
	cuff = {
		button = "Algemar",
		perm = "police.bmcuff",
		desc = "Algeme/Desalgeme a pessoa mais próxima.",
		file = "cuff.log",
		log = "{1} algemou {2}",		
	},
	deleteveh = {
		button = "@Veículo | Rebocar",
		perm = "admin.deleteveh",
		desc = "Excluir um veículo.",
		success = "~g~Veículo excluído.",
		toofar = "~r~Muito longe do veículo.",
	},
	drag = {
		button = "Arrastar",
		perm = "police.drag",
		desc = "Arrasta o jogador algemado nas proximidades.",
	},
	emergency_heal = {
		first = "Ser atendido",
	},
	emergency_medkit = {
		first = "Pegar",
	},
	fine = {
		button = "Multa",
		perm = "police.bmfine",
		desc = "Multe a pessoa mais próxima.",
		prompt = {
			amount = "Valor da multa:",
			reason = "Motivo da multa:",
		},
		file = "fine.log",
		log = "{1} multou {2} por R$ {3} - {4}",
		sent = {
			bad = "~r~Você foi transferido para a cadeia!",
			good = "~g~Jogador transferido para a cadeia.",
		},
	},
	fixhaircut = {
		button = "Arrumar o Corte de Cablo",
		perm = "player.fixhaircut",
		desc = "Fixar bug de cabelo.",
	},
	freeze = {
		button = "Congelar",
		perm = "police.freeze",
		desc ="Congele alguém próximo.",
		admin = "freeze.admin",
		prompt = "ID:",
		notify = "~g~Jogador Congelado/Descongelado.",
		frozen = "~r~Você foi congelado.",
		unfrozen = "~g~Você foi descongelado.",
	},
	godmode = {
		button = "@Godmode",
		perm = "admin.godmode",
		desc = "On/Off godmode.",
		on = "~g~Godmode ativado!",
		off = "~r~Godmode desativado!",
	},
	hacker = {
		button = "Hack",
		perm = "hacker.hack",
		desc = "Tentativa de hackear uma pessoa próxima.",
		hacked = "~r~Alguém te hackeou e levou R$ {1} da sua C/C!",
		failed = {
			good = "~g~Hacking attempt failed!",
			bad = "~r~Hacking attempt failed!",
		},
	},
	inspect = {
		button = "Revistar",
		perm = "player.inspect",
		desc = "Reviste a pessoa mais próxima.",
	},
	jail = {
		button = "Prender | Penitenciária",
		perm = "police.bmjail",
		desc = "Prende um jogador algemado nas proximidades.",
		free = "~b~Você pagou sua pena.",
		resent = "~r~Termine sua sentença.",
		rejailer = "Entrando/Saindo",
		timer = "Faltam {1} minuto(s) para completar sua pena.",
		prompt = "Sentence Time:",
		file = "jail.log",
		log = "{1} enviou {2} para a cadeira por {3}",
		sent = {
			bad = "~r~Você foi transferido para a penitenciária!",
			good = "~g~Suspeito enviado para a penitenciária.",
		},
	},
	lockpick = {
		id = "chave_mestra",
		name = "Kit de Chave Mestra",
		button = "Chave Mestra",
		perm = "carjacker.lockpick",
		desc = "Destranque o veículo próximo.",
		success = "~g~Veículo destrancado.",
		toofar = "~r~Muito longe do veículo.",
		unlocked = "~g~Veículo já destrancado.",
	},
	loot = {
		button = "Saquear",
		perm = "player.loot",
		desc = "Saqueie a pessoa mais próxima.",
	},
	mcharge = {
		button = "PayPal | Receber Pagamentos",
		perm = "mobile.charge",
		desc = "Cobre pagamentos via app",
		charger = "~g~Você cobrou ~y~R${2}~g~ do ~b~{1}.",
		charged = "~g~Você foi cobrado em ~r~R${2} por ~b~{1}.",
		log = "{1} cobrou {2} => banco: {1}:{3} | {2}:{4}",
		file = "mCharge.log",
		prompt = "Valor da cobrança {1}:",
		request = "Aceitar pagamento de {2} por {1}?",
		refused = "~b~{1} ~r~recusou a cobrança.",
		not_enough = "~b~{1} ~r~não tem dinheiro!",
		type = {
			desc = "Digite o telefone manualmente.",
			button = ">Digite o telefone",
			prompt = "Número:",
		},
	},
	money = {
		store = {
			button = "Guardar Dinheiro",
			perm = "store.money",
			desc = "Empacotar dinheiro.",
		},
	},
	mpay = {
		button = "PayPal | Enviar Pagamentos",
		perm = "mobile.pay",
		desc = "Faça pagamentos via app.",
		transferred = "~g~Você pagou ~r~R${1}~g~ para ~b~{2}.",
		received = "~g~Você recebeu ~g~R${2} de ~b~{1}.",
		log = "{1} transferiu {2} => banks: {1}:{3} | {2}:{4}",
		file = "mPay.log",
		prompt = "Valor a ser pago {1}:",
		not_enough = "~b~{1} ~r~você não tem dinheiro!",
		type = {
			desc = "Digite o telefone manualmente.",
			button = ">Digite o telefone",
			prompt = "Número:",
		},
	},
	mugger = {
		button = "Mug",
		perm = "mugger.mug",
		desc = "Tentativa de assaltar um jogador próximo.",
		mugged = "~r~Alguém levou R${1} da sua carteira!",
		failed = {
			good = "~g~Tentativa de assalto falhou!",
			bad = "~r~Tentativa de assalto falhou!",
		},
	},
    player = {
        button = "Jogador",
        perm = "player.menu",
        desc = "Menu do jogador.",
    },
	police_weapons = {
		first = "Equipar",
	},
	service = {
		button = "Em serviço/Fora de serviço",
		perm = "mission.service",
		desc = "Ativar missões aleatórias.",
		group = "onservice",
		on = "~g~Disponível",
		off = "~r~Indisponível",
	},
	spawnveh = {
		button = "@Veículo | Spawn",
		perm = "admin.spawnveh",
		desc = "Spawna um veículo.",
		prompt = "Modelo:",
		load = "~b~Carregando o veículo.",
		success = "~g~Veiculo spawnado.",
		invalid = "~r~Modelo inválido.",
	},
	spikes = { 
		button = "Barreira de pregos",
		perm = "police.spikes",
		desc = "Por/Tirar barreira de pregos",
		admin = "spikes.admin",
		nocarry = "~r~Você não pode carregar mais armadilhas de espinhos!",
		nodeploy = "~r~Você não pode implantar mais armadilhas de espinhos!",
	},
	sprites = {
		button = "@Sprites",
		perm = "admin.sprites",
		desc = "Toggle sprites.",
		on = "~g~Sprites enabled.",
		off = "~r~Sprites disabled.",
	},
	srun = {
		button = "@Srun",
		perm = "admin.srun",
		desc = "Execute a function remotelly.",
		prompt = "Remote Function:",
	},
	tptowaypoint = {
		button = "@TpToWaypoint",
		perm = "admin.tptowaypoint",
		desc = "Teleport to the purple waypoint.",
		notfound = "~r~Map marker not found!",
		success = "~g~Teleported to waypoint.",
	},
	unjail = {
		button = "Soltar da Penitenciária´",
		perm = "police.bmunjail",
		desc = "Soltar suspeito.",
		admin = "unjail.admin",
		prompt = "User ID:",
		released = "~g~Você reduziu a pena de um suspeito.",
		lowered = "~g~Sua sentença foi reduzida.",
		file = "jail.log",
		log = "{1} solto {2} a partir de {3} minutos faltando",
	},
	userlist = {
		button = "Lista de usuários",
		perm = "player.userlist",
		desc = "Exibir/Esconder lista de usuários",
		format = "[{1}]{2}  |  ",
		nearby = "Players proximos: {1}",
	},
	weapons = {
		store = {
			button = "Guardar armas",
			perm = "store.weapons",
			desc = "Guardar armas.",
		},
	},
}

return lang