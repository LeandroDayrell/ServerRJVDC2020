local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local cfg = module("garagem_bope", "cfg/garagem")

vRPjob = {}
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
Tunnel.bindInterface("garagem_bope",vRPjob)
Proxy.addInterface("garagem_bope",vRPjob)

exports['GHMattiMySQL']:QueryAsync([[
    CREATE TABLE IF NOT EXISTS garagem_bope(
        modelo VARCHAR(255) DEFAULT NULL,
        nome VARCHAR(255) DEFAULT NULL,
        veh_tipo VARCHAR(255) NOT NULL,
        quantidade INT(2),
        img text(255),
        CONSTRAINT pk_garagem PRIMARY KEY(modelo)
    )
]])

Citizen.CreateThread(function()
    -- Garagem
    vRP.prepare("NL/inserir_veh_bope","INSERT INTO garagem_bope(modelo, nome, veh_tipo, quantidade, img) VALUES(@modelo, @nome, @veh_tipo, @quantidade, @img)")
    vRP.prepare("NL/selecionar_veh_bope","SELECT * FROM garagem_bope")
    vRP.prepare("NL/selecionar_by_model","SELECT * FROM garagem_bope WHERE modelo = @modelo")
    vRP.prepare("NL/update_estoque_bope","UPDATE garagem_bope SET quantidade = @quantidade WHERE modelo = @modelo")
end)

Citizen.CreateThread(function()
    local data = vRP.getSData("policia:init")
    local init = json.decode(data)
    if not init then
        criarGaragem()
        vRP.setSData("policia:init", json.encode(true))
    end
end)

local dp = cfg.bopedelegacia
local org = cfg.bopeveiculos
local emServico = {}

function vRPjob.Permissao()
    local user_id = vRP.getUserId(source)
    return vRP.hasPermission(user_id, "bopecar.permissao")
end

function criarGaragem()
    local rows = vRP.query("NL/selecionar_veh_bope")
    for k,v in pairs(org) do
        if #rows == 0 then
            for l,w in pairs(v) do
                vRP.execute("NL/inserir_veh_bope", {
                    modelo = w.modelo,
                    nome = w.nome,
                    veh_tipo = w.tipo,
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

RegisterServerEvent('Policia:Enviarbope')
AddEventHandler('Policia:Enviarbope', function()
    local veiculos = {}
    local source = source
    local user_id = vRP.getUserId(source)
    local veh = vRP.query("NL/selecionar_veh_bope")
    for i=1, #veh, 1 do
        table.insert(veiculos, {
            id = veh[i].id,
            modelo = veh[i].modelo,
            nome = veh[i].nome,
            veh_tipo = veh[i].veh_tipo,
            quantidade = veh[i].quantidade,
            img = veh[i].img
        })
    end
    TriggerClientEvent('Policia:Receberbope', source, veiculos)
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
        vRP.execute("NL/update_estoque_bope", {modelo = veh, quantidade = quantidade})
    end
end)