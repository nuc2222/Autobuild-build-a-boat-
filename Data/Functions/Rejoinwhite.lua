local gameId = 537413528
local maxServerSize = 1

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
        player.Team = game.Teams.WhiteTeam
    end

    for _, server in ipairs(servers.data) do
        if isServerValid(server) then
            game:GetService("TeleportService"):TeleportToPlaceInstance(gameId, server.id)
            return
        end
    end
end

-- Join a valid server upon starting the game
joinValidServer()
