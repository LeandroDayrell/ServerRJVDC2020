--[[
~r~ = Red
~b~ = Blue
~g~ = Green
~y~ = Yellow
~p~ = Purple
~o~ = Orange
~c~ = Grey?
~m~ = Darker Grey
~u~ = Black
~n~ = New Line
~s~ = Default White
~h~ = Bold Text
]]


local farm1 = {}
farm1[0] = {["x"] = 93.477554321289,["y"]= -1291.8569335938,["z"]= 29.268743515015} -- 93.477554321289,-1291.8569335938,29.268743515015

local farm2 = {}
farm2[0] = {["x"] = 845.36437988281,["y"]= 3048.5798339844,["z"]= 42.960983276367} -- 845.36437988281,3048.5798339844,42.960983276367

local farm3 = {}
farm2[0] = {["x"] = 885.46704101563,["y"]= -2108.97265625,["z"]= 30.775270462036} -- 885.46704101563,-2108.97265625,30.775270462036

local farm4 = {}
farm2[0] = {["x"] = 563.88793945313,["y"]= -3126.931640625,["z"]= 18.76861000061} -- 563.88793945313,-3126.931640625,18.76861000061

local farm5 = {}
farm2[0] = {["x"] = 454.12213134766,["y"]= -980.31683349609,["z"]= 30.689603805542} -- 454.12213134766,-980.31683349609,30.689603805542

local farm6 = {}
farm2[0] = {["x"] = -876.46911621094,["y"]= -1458.8293457031,["z"]= 7.5268054008484} -- -876.46911621094,-1458.8293457031,7.5268054008484

local farm7 = {}
farm2[0] = {["x"] = 856.04931640625,["y"]= 3053.2658691406,["z"]= 42.065105438232} -- 856.04931640625,3053.2658691406,42.065105438232

local farm8 = {}
farm2[0] = {["x"] = 896.88116455078,["y"]= -2114.7780761719,["z"]= 30.763401031494} -- 896.88116455078,-2114.7780761719,30.763401031494

local farm9 = {}
farm2[0] = {["x"] = -2679.3908691406,["y"]= 1332.6008300781,["z"]= 140.88143920898} -- -2679.3908691406,1332.6008300781,140.88143920898

Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(0)
        DrawMarker(27, 93.477554321289,-1291.8569335938,29.268743515015-1.0001, 0, 0, 0, 0, 0, 0, 1.0001,1.0001,1.0001, 0, 232, 255, 155, 0, 0, 0, 0, 0, 0, 0) -- CHAO 
		DrawMarker(27, 845.36437988281,3048.5798339844,42.960983276367-1.0001, 0, 0, 0, 0, 0, 0, 1.0001,1.0001,1.0001, 0, 232, 255, 155, 0, 0, 0, 0, 0, 0, 0) -- CHÃO
		DrawMarker(27, 885.46704101563,-2108.97265625,30.775270462036-1.0001, 0, 0, 0, 0, 0, 0, 1.0001,1.0001,1.0001, 0, 232, 255, 155, 0, 0, 0, 0, 0, 0, 0) -- CHÃO
		DrawMarker(27, 563.88793945313,-3126.931640625,18.76861000061-1.0001, 0, 0, 0, 0, 0, 0, 1.0001,1.0001,1.0001, 0, 232, 255, 155, 0, 0, 0, 0, 0, 0, 0) -- CHÃO
		DrawMarker(27, 454.12213134766,-980.31683349609,30.689603805542-1.0001, 0, 0, 0, 0, 0, 0, 1.0001,1.0001,1.0001, 0, 232, 255, 155, 0, 0, 0, 0, 0, 0, 0) -- CHÃO
		DrawMarker(27, -876.46911621094,-1458.8293457031,7.5268054008484-1.0001, 0, 0, 0, 0, 0, 0, 1.0001,1.0001,1.0001, 0, 232, 255, 155, 0, 0, 0, 0, 0, 0, 0) -- CHÃO
		DrawMarker(27, 856.04931640625,3053.2658691406,42.065105438232-1.0001, 0, 0, 0, 0, 0, 0, 1.0001,1.0001,1.0001, 0, 232, 255, 155, 0, 0, 0, 0, 0, 0, 0) -- CHÃO
		DrawMarker(27, 896.88116455078,-2114.7780761719,30.763401031494-1.0001, 0, 0, 0, 0, 0, 0, 1.0001,1.0001,1.0001, 0, 232, 255, 155, 0, 0, 0, 0, 0, 0, 0) -- CHÃO
		DrawMarker(27, -2679.3908691406,1332.6008300781,140.88143920898-1.0001, 0, 0, 0, 0, 0, 0, 1.0001,1.0001,1.0001, 0, 232, 255, 155, 0, 0, 0, 0, 0, 0, 0) -- CHÃO
            DrawText3DTag(farm1[0]["x"], farm1[0]["y"], farm1[0]["z"], "~s~Bau Da Yakuza") 
            DrawText3DTag(farm2[0]["x"], farm2[0]["y"], farm2[0]["z"] , "~r~Bau Da Milicia") --next point
            DrawText3DTag(farm3[0]["x"], farm3[0]["y"], farm3[0]["z"] , "~r~Bau Da MotoClub") --next point
            DrawText3DTag(farm4[0]["x"], farm4[0]["y"], farm4[0]["z"] , "~r~Bau Da Máfia") --next point
            DrawText3DTag(farm5[0]["x"], farm5[0]["y"], farm5[0]["z"] , "~r~Bau Da PMERJ") --next point
            DrawText3DTag(farm6[0]["x"], farm6[0]["y"], farm6[0]["z"] , "~r~Fabricar Armas ~o~Yakuza") --next point
            DrawText3DTag(farm7[0]["x"], farm7[0]["y"], farm7[0]["z"] , "~r~Fabricar Armas ~o~Milicia") --next point
            DrawText3DTag(farm8[0]["x"], farm8[0]["y"], farm8[0]["z"] , "~r~Fabricar Armas ~o~MotoClub") --next point
            DrawText3DTag(farm9[0]["x"], farm9[0]["y"], farm9[0]["z"] , "~r~Fabricar Armas ~o~Yakuza") --next point
    end
end)

function DrawText3DTag(x,y,z, text) 
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)

    local scale = (1/dist)*2
    local fov = (1/GetGameplayCamFov())*100
    local scale = scale*fov
    
    if onScreen then
        SetTextScale(0.7*scale, 1.2*scale)
        SetTextFont(2)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        World3dToScreen2d(x,y,z, 0)
        DrawText(_x,_y)
    end
end