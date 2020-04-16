
local items = {}

local function play_drink(player)
  local seq = {
    {"mp_player_intdrink","intro_bottle",1},
    {"mp_player_intdrink","loop_bottle",1},
    {"mp_player_intdrink","outro_bottle",1}
  }

  vRPclient._playAnim(player,true,seq,false)
end

local pills_choices = {}
pills_choices["Tomar"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id then
	if vRPclient.isInComa(player) then
	  vRPclient.notify(player,"Você está em coma.")
	else
	  if vRP.tryGetInventoryItem(user_id,"pills",1) then
		vRPclient._varyHealth(player,25)
		vRPclient._notify(player,"~g~ Tomando pílulas.")
		play_drink(player)
		vRP.closeMenu(player)
	  end
	end
  end
end}

items["pills"] = {"Analgésico","Um medicamento analségico.",function(args) return pills_choices end,0.1}

return items
