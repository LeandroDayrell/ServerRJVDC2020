local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local cfg = module("vrp_caminhao", "cfg/config")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

vRP._prepare("cRP/concessionaria",[[
    CREATE TABLE IF NOT EXISTS vrp_caminhao(
        id INTEGER AUTO_INCREMENT,
        modelo VARCHAR(255),
        nome VARCHAR(255),
        preco INTEGER,
        quantidade INTEGER,
        descricao text(255),
        img text(255),
        CONSTRAINT pk_concessionaria PRIMARY KEY(id)
    )
]])

vRP._prepare("cRP/inserir_vehc","INSERT INTO vrp_caminhao(modelo, nome, preco, quantidade, descricao, img) VALUES(@modelo, @nome, @preco, @quantidade, @descricao, @img)")
vRP._prepare("cRP/set_quantidadec","UPDATE vrp_caminhao SET quantidade = @quantidade WHERE id = @id")
vRP._prepare("cRP/selecionar_vehc","SELECT * FROM vrp_caminhao")
vRP._prepare("cRP/get_veh_by_idc","SELECT * FROM vrp_caminhao WHERE id = @id")

async(function()
    vRP.execute("cRP/concessionaria")
end)

local conce = cfg.concessionaria

function criarCarros()
    local rows = vRP.query("cRP/selecionar_vehc")
    for k,v in pairs(conce) do
        if #rows == 0 then
            vRP.execute("cRP/inserir_vehc", {
                modelo = conce[k].modelo,
                nome = conce[k].nome,
                preco = conce[k].preco,
                quantidade = conce[k].quantidade,
                descricao = conce[k].descricao,
                img = conce[k].img
            })
        end
    end
    return false
end

RegisterServerEvent('get:carros')
AddEventHandler('get:carros', function()
    local veiculos = {}
    local source = source
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    local veh = vRP.query("cRP/selecionar_vehc")
    for i=1, #veh, 1 do
        table.insert(veiculos, {
            id = veh[i].id,
            modelo = veh[i].modelo,
            nome = veh[i].nome,
            valor = veh[i].preco,
            quantidade = veh[i].quantidade,
            descricao = veh[i].descricao,
            img = veh[i].img
        })
    end
    TriggerClientEvent('comprar:caminhao', source, veiculos, identity.name.." "..identity.firstname)
end)


RegisterServerEvent('comprar:caminhao')
AddEventHandler('comprar:caminhao', function(veh)
	local source = source
    local user_id = vRP.getUserId(source)
    local rows = vRP.query("cRP/get_veh_by_idc", {id = veh})
    if #rows > 0 then
        local veiculo = rows[1]
        local modelo = veiculo.modelo
        local valor = veiculo.preco
        local nome = veiculo.nome
        local quantidade = veiculo.quantidade
        local get_veh = vRP.query("vRP/get_vehicle", {user_id = user_id, vehicle = modelo})
        if #get_veh <= 0 then
            if quantidade > 0 then
                if vRP.tryFullPayment(user_id, valor) then
                    quantidade = quantidade - 1	
                    TriggerClientEvent("Notify",source,"sucesso","Parabéns, você comprou  um(a) <b>"..nome.."</b> por  <b>$"..valor.." dólares</b> .")
                    vRP.execute("cRP/set_quantidadec", {id = veh, quantidade = quantidade})
                    vRP.execute("vRP/add_vehicle", {user_id = user_id, vehicle = modelo})
                else
                    TriggerClientEvent("Notify",source,"negado","Dinheiro insuficiente.")
                end
            else
                TriggerClientEvent("Notify",source,"aviso","Sem estoque deste veiculo!.")
            end
        else
            TriggerClientEvent("Notify",source,"negado","Você <b>já possui</b> um(a) <b>"..nome.."</b>!")
        end
	end
end)

Citizen.CreateThread(function()
    criarCarros()
end)