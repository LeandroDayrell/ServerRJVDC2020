-----------------------------------------------------------------------------------------------------------------------------------------
-- /PAYPAL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('paypal',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if user_id then
		if args[1] == "sacar" and parseInt(args[2]) > 0 then
			local consulta = vRP.getUData(user_id,"vRP:paypal")
			local resultado = json.decode(consulta) or 0
			local fixbug = vRP.prompt(source,"Confirmaçao(Digite Sim):","")
			if fixbug == "sim" then
			if fixbug == "" then 
				return 
			end
			if resultado >= parseInt(args[2]) then
				vRP.giveBankMoney(user_id,parseInt(args[2]))
				vRP.setUData(user_id,"vRP:paypal",json.encode(parseInt(resultado-args[2])))
				TriggerClientEvent("Notify",source,"sucesso","Efetuou o saque de <b>$"..vRP.format(parseInt(args[2])).." dólares</b> da sua conta paypal.")
			else
				TriggerClientEvent("Notify",source,"negado","Dinheiro insuficiente em sua conta paypal.")
			end
		elseif args[1] == "trans" and parseInt(args[2]) > 0 and parseInt(args[3]) > 0 then
			local consulta = vRP.getUData(parseInt(args[2]),"vRP:paypal")
			local resultado = json.decode(consulta) or 0
			local banco = vRP.getBankMoney(user_id)
			local identityu = vRP.getUserIdentity(parseInt(args[2]))
			if vRP.request(source,"Deseja transferir <b>$"..vRP.format(parseInt(args[3])).."</b> dólares para <b>"..identityu.name.." "..identityu.firstname.."</b>?",30) then	
				if banco >= parseInt(args[3]) then
					vRP.setBankMoney(user_id,parseInt(banco-args[3]))
					vRP.setUData(parseInt(args[2]),"vRP:paypal",json.encode(parseInt(resultado+args[3])))
					TriggerClientEvent("Notify",source,"sucesso","Enviou <b>$"..vRP.format(parseInt(args[3])).." dólares</b> ao passaporte <b>"..vRP.format(parseInt(args[2])).."</b>.")
					SendWebhookMessage(webhookpaypal,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[ENVIOU]: $"..vRP.format(parseInt(args[3])).." \n[PARA O ID]: "..parseInt(args[2]).." "..identityu.name.." "..identityu.firstname.." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
					local player = vRP.getUserSource(parseInt(args[2]))
					if player == nil then
						return
					else
						local identity = vRP.getUserIdentity(user_id)
						TriggerClientEvent("Notify",player,"importante","<b>"..identity.name.." "..identity.firstname.."</b> transferiu <b>$"..vRP.format(parseInt(args[3])).." dólares</b> para sua conta do paypal.")
					end
				else
					TriggerClientEvent("Notify",source,"negado","Dinheiro insuficiente.")
				end
			end
		end
		end
	end

end)