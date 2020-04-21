Tunnel = module("vrp", "lib/Tunnel")
Proxy = module("vrp", "lib/Proxy")

vRPcc = {}
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","customchat")
BMclient = Tunnel.getInterface("customchat","customchat")
vRPcc = Tunnel.getInterface("customchat","customchat")
Tunnel.bindInterface("customchat",vRPcc)
lcfg = module("vrp", "cfg/base")

RegisterServerEvent('chatCommandEntered')
RegisterServerEvent('chatMessageEntered')

-- functions
function stringSplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end

function vRPcc.getMyRPidentity()
   local user_id = vRP.getUserId(source)
   local identity = vRP.getUserIdentity(user_id)
        return user_id, identity
end

-- main event
AddEventHandler('chatMessageEntered', function(name, color, message)
    if not name or not color or not message or #color ~= 3 then
        return
    end
	
    if message:sub(1, 1) == "/" then
        fullcmd = stringSplit(message, " ")
        cmd = fullcmd[1]
		local msg = fullcmd[2]
		for k,v in ipairs(fullcmd) do
			if k > 2 then
				msg = msg .. " " .. fullcmd[k]
			end
		end

        if cmd == "/192" then
            if msg ~= nil then
              local user_id = vRP.getUserId(source)
              local identity = vRP.getUserIdentity(user_id)
                TriggerClientEvent("sendGlobalMessage", -1, source, name, tostring(msg),user_id,identity)
            end
            CancelEvent()
        end
		
		if cmd == "/190" then
            if msg ~= nil then
              local user_id = vRP.getUserId(source)
              local identity = vRP.getUserIdentity(user_id)
                TriggerClientEvent("sendGlobalMessage2", -1, source, name, tostring(msg),user_id,identity)
            end
            CancelEvent()
        end
		
		if cmd == "/ilegal" then
            if msg ~= nil then
              local user_id = vRP.getUserId(source)
              local identity = vRP.getUserIdentity(user_id)
                TriggerClientEvent("sendIlegalMessage", -1, source, name, tostring(msg),user_id,identity)
            end
            CancelEvent()
        end
		
		if cmd == "/ebay" then
            if msg ~= nil then
              local user_id = vRP.getUserId(source)
              local identity = vRP.getUserIdentity(user_id)
                TriggerClientEvent("sendVendasMessage", -1, source, name, tostring(msg),user_id,identity)
            end
            CancelEvent()
        end

        if cmd == "/twitter" then
            if msg ~= nil then
              local user_id = vRP.getUserId(source)
              local identity = vRP.getUserIdentity(user_id)
                TriggerClientEvent("sendTwitterMessage", -1, source, name, tostring(msg),user_id,identity)
            end
            CancelEvent()
        end
	else
	    local user_id = vRP.getUserId(source)
        local identity = vRP.getUserIdentity(user_id)
		if not WasEventCanceled() then
			TriggerClientEvent('sendProximityMessage', -1, source, name, message,user_id,identity)
        	CancelEvent()
		end
	end

	TriggerEvent('chatMessage', source, name, message)
end)