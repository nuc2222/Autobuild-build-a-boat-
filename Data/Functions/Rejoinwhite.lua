local gameId = 537413528
local maxServerSize = 10

-- Function to check if a server meets the requirements
local function isServerValid(server)
    -- Check server size (number of players)
    if server.playing <= maxServerSize then
        return true
    end
    return false
end

-- Function to find and join a valid server
local function joinValidServer()
    local servers = game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/"..gameId.."/servers/Public?sortOrder=Asc&limit=100"))

    local player = game.Players.LocalPlayer

    -- Check if the player is not on the white team
    if string.lower(player.Team.Name) ~= "white" then
        local validServers = {}

        for _, server in ipairs(servers.data) do
            if isServerValid(server) then
                table.insert(validServers, server)
            end
        end

        if #validServers > 0 then
            local randomServer = validServers[math.random(1, #validServers)]
            game:GetService("TeleportService"):TeleportToPlaceInstance(gameId, randomServer.id)
        else
            print("No valid servers found.")
        end
    end
end

-- Continuously check if player is on the white team and rejoin a random server if necessary
while true do
    joinValidServer()
    wait(5) -- Adjust the wait
