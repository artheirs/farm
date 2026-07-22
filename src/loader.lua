local GAMES = {
    [6739698191] = {
        name   = "Violence District",
        mobile = "https://api.luarmor.net/files/v4/loaders/3730a9e14bd1ad3cf5763a44162eeb36.lua",
    },
}

local UNIVERSE  = game.GameId
local PLACE     = game.PlaceId

local gameDef = GAMES[UNIVERSE]
if not gameDef then
    warn(string.format(
        "[ARTHEIRS-FARM] Game belum supported.\nUniverseId: %s · PlaceId: %s\nJoin Discord untuk request game baru.",
        tostring(UNIVERSE), tostring(PLACE)
    ))
    return
end

loadstring(game:HttpGet(gameDef.mobile))()
