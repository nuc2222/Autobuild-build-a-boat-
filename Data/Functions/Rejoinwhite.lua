local gameId = 537413528
local maxServerSize = 33

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

    for _, server in ipairs(servers.data) do
        if isServerValid(server) then
            game:GetService("TeleportService"):TeleportToPlaceInstance(gameId, server.id)
            return
        end
    end

    -- If no suitable server is found, switch teams and try again
    local player = game.Players.LocalPlayer
    player.TeamColor = BrickColor.new("white")

    for _, server in ipairs(servers.data) do
        if isServerValid(server) then
            game:GetService("TeleportService"):TeleportToPlaceInstance(gameId, server.id)
            return
        end
    end
end

-- Join a valid server upon starting the game
joinValidServer()
