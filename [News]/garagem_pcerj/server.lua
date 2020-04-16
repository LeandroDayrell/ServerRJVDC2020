local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local cfg = module("garagem_pcerj", "cfg/config")

vRPjob = {}
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
Tunnel.bindInterface("garagem_pcerj",vRPjob)
Proxy.addInterface("garagem_pcerj",vRPjob)

exports['GHMattiMySQL']:QueryAsync([[
    CREATE TABLE IF NOT EXISTS garagem_pcerj(
        id BIGINT(20) NOT NULL AUTO_INCREMENT,
        modelo VARCHAR(255) DEFAULT NULL,
        nome VARCHAR(255) DEFAULT NULL,
        veh_tipo VARCHAR(255) NOT NULL,
        placa VARCHAR(255) DEFAULT NULL,
        quantidade INT(2),
        img text(255),
        CONSTRAINT pk_garagem PRIMARY KEY(id)
    )
]])

Citizen.CreateThread(function()
    -- Garagem
    vRP.prepare("NL/inserir_veh_pcerj","INSERT INTO garagem_pcerj(modelo, nome, veh_tipo, placa, quantidade, img) VALUES(@modelo, @nome, @veh_tipo, @placa, @quantidade, @img)")
    vRP.prepare("NL/selecionar_veh_pcerj","SELECT * FROM garagem_pcerj")
    vRP.prepare("NL/selecionar_by_model","SELECT * FROM garagem_pcerj WHERE modelo = @modelo")
    vRP.prepare("NL/update_estoque_pcerj","UPDATE garagem_pcerj SET quantidade = @quantidade WHERE modelo = @modelo")
end)

Citizen.CreateThread(function()
    local data = vRP.getSData("policia:init")
    local init = json.decode(data)
    if not init then
        criarGaragem()
        vRP.setSData("policia:init", json.encode(true))
    end
end)

local dp = cfg.delegacia
local org = cfg.veiculos
local emServico = {}

function vRPjob.Permissao()
    local user_id = vRP.getUserId(source)
    return vRP.hasPermission(user_id, "carropc.permissao")
end

function criarGaragem()
    local rows = vRP.query("NL/selecionar_veh_pcerj")
    for k,v in pairs(org) do
        if #rows == 0 then
            for l,w in pairs(v) do
                vRP.execute("NL/inserir_veh_pcerj", {
                    modelo = w.modelo,
                    nome = w.nome,
                    veh_tipo = w.tipo,
                    placa = "R-PCERJ",
                    quantidade = w.quantidade,
                    img = w.img
                })
            end
        end
    end
    return false
end

function getUserTeamsByGroup(user_id,emprego)
    local grupos = {}
    for k,v in pairs(cfg.grupos) do
        for l,w in pairs(v) do
            if emprego == w then
                table.insert(grupos, k)
            end
        end
    end
    return grupos
end

RegisterServerEvent('Policia:EnviarCarros')
AddEventHandler('Policia:EnviarCarros', function()
    local veiculos = {}
    local source = source
    local user_id = vRP.getUserId(source)
    local veh = vRP.query("NL/selecionar_veh_pcerj")
    for i=1, #veh, 1 do
        table.insert(veiculos, {
            id = veh[i].id,
            modelo = veh[i].modelo,
            nome = veh[i].nome,
            veh_tipo = veh[i].veh_tipo,
            placa = veh[i].placa,
            quantidade = veh[i].quantidade,
            img = veh[i].img
        })
    end
    TriggerClientEvent('Policia:ReceberCarros', source, veiculos)
end)
RegisterServerEvent('Policia:AtualizarEstoque')
AddEventHandler('Policia:AtualizarEstoque', function(veh)
    local source = source
    local user_id = vRP.getUserId(source)
    local rows = vRP.query("NL/selecionar_by_model", {modelo = veh})
    if #rows > 0 then
        local veiculo = rows[1]
        local quantidade = veiculo.quantidade
        quantidade = quantidade - 1
        vRP.execute("NL/update_estoque_pcerj", {modelo = veh, quantidade = quantidade})
    end
end)