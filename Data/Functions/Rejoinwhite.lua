local gameId = "537413528"
local maxServerSize = 4

local function joinRandomServer()
    local servers = game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/"..gameId.."/servers/Public?sortOrder=Asc&limit=100"))

    if #servers.data > 0 then
        local randomServer = servers.data[math.random(1, #servers.data)]
        if randomServer.playing < maxServerSize then
            game:GetService("TeleportService"):TeleportToPlaceInstance(gameId, randomServer.id)
        end
    else
        print("No servers found.")
    end
end

while true do
    local player = game.Players.LocalPlayer
    if string.lower(player.Team.Name) ~= "white" then
        joinRandomServer()
    else
        print("enjoy white team")
        break
    end
    wait(5) -- Adjust the wait time as needed
end
