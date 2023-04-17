
local url = "https://github.com/doran08/Doran-s-tests/tree/63c50fc2453ae3cb00d0134d64a4aa0d33d62c2b/Scripts"

local games = {

}

for i,v in next, games do
    games[i] = table.concat(v:split(' '), '_')
end

local name = games[game.PlaceId] or games[game.GameId]
return loadstring(game:HttpGet(url.. "/"..(name or "Universal")..".lua"))()
