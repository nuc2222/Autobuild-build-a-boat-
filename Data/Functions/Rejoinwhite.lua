local gameId = 537413528
local maxServerSize = 3
local maxPing = 100

-- Function to check if a server meets the requirements
local function isServerValid(server)
    -- Check server size
    if server.MaxPlayers <= maxServerSize then
        -- Check server ping
        if server.Ping <= maxPing then
            return true
        end
    end
    return false
end

-- Function to find and join a valid server
local function joinValidServer()
    local servers = game:GetService("HttpService"):JSONDecode(game:HttpGetAsync("https://games.roblox.com/v1/games/"..gameId.."/servers/Public?sortOrder=Asc&limit=100"))

    for _, server in ipairs(servers.data) do
        if isServerValid(server) then
            game:GetService("TeleportService"):TeleportToPlaceInstance(gameId, server.id)
            break
        end
    end
end

-- Join a valid server upon starting the game
joinValidServer()
