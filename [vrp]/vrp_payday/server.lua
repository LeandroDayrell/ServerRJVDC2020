local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_salar")

salarii = {
   -- Administração
  {"Administrador.permissao", 20000},
  {"Moderador.permissao", 15000}, 
  {"Suporte.permissao", 10000},
  {"AprovadorWL.permissao", 5000},
  -- Player/Jogadores
  {"Player.permissao", 500},
  -- PMERJ
  {"CmdGeral.permissao", 25000},
  {"Recruta.permissao", 3500},
  {"Soldado.permissao", 4000},
  {"Cabo.permissao", 5000},
  {"3Sargento.permissao", 6000},
  {"2Sargento.permissao", 7000},
  {"1Sargento.permissao", 8000},
  {"SubTenente.permissao", 9000},
  {"2Tenente.permissao", 10000},
  {"1Tenente.permissao", 11000},
  {"Capitao.permissao", 12000},
  {"Major.permissao", 13000},
  {"TenenteCoronel.permissao", 15000},
  {"Coronel.permissao", 20000},
  -- Recom PMERJ
  {"Recom.permissao", 15000},
  -- Choque PMERJ
  {"Choque.permissao", 15000},
  -- BOPE PMERJ
  {"CoronelBOPE.permissao", 20000},
  {"TenenteCoronelBOPE.permissao", 15000},
  {"MajorBOPE.permissao", 13000},
  {"CapitaoBOPE.permissao", 12000},
  {"TenenteBOPE.permissao", 11000},
  {"AspiranteBOPE.permissao", 10000},
  -- Policia Civil
  {"DelegadoGeralPC.permissao", 20000},
  {"DelegadoPC.permissao", 15000},
  {"DelegadoAdjuntoPC.permissao", 13000},
  {"InvestigadorPC.permissao", 10000},
  {"PeritoCriminalPC.permissao", 8000},
  {"EscrivaoPC.permissao", 6000},
  -- SAMU
  {"ChefeSAMU.permissao", 20000},
  {"CoordenadorSAMU.permissao", 16000},
  {"MedicoSAMU.permissao", 14000},
  {"EnfermeiroSAMU.permissao", 10000},
  {"TecSAMU.permissao", 8000},
  {"SocorristaSAMU.permissao", 5000},
  -- Jornalista
  {"Jornalista.permissao", 5000},
  {"Reporter.permissao", 5500},
  {"DiretorJornal.permissao", 8000},
  -- Advocacia
  {"Juiz.permissao", 10000},
  {"PromotorDaJustica.permissao", 8000},
  {"PresidenteDaJustica.permissao", 9000},
  {"Advogado.permissao", 6000},
  -- Desempregado
  {"desempregado.permissao", 2000},
  -- VIPS
  {"vip.permissao", 8000},
  {"vipp.permissao", 9000},
  {"vippp.permissao", 10000},
  {"vipppp.permissao", 15000},
  {"vippppp.permissao", 20000},
  {"vipppppp.permissao", 25000},
  {"vippppppp.permissao", 30000},
  -- MECANICO
  {"mecanicopay.permissao", 5000},
}

RegisterServerEvent('offred:salar')
AddEventHandler('offred:salar', function(salar)
	local user_id = vRP.getUserId(source)
	for i,v in pairs(salarii) do
		permisiune = v[1]
		if vRP.hasPermission(user_id, permisiune)then
			salar = v[2]
			vRP.giveBankMoney(user_id,salar)
			TriggerClientEvent('chatMessage',source,"GOVERNO",{255,70,50},"Seu salário de ^1$"..salar.." ^0 foi depositado em sua conta bancária.")
		end
	end
end)
