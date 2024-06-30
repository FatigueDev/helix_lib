---@meta

---@class IPlayerDataManager
---@field PlayerDataByUid table Returns a copy of the player data dictionary loaded by the server. Thats the contents of Playerdata/playerdata.json
IPlayerDataManager = {}


---@return table
function IPlayerDataManager.get_PlayerDataByUid() end

-- Retrieve a players offline, world-agnostic data by player uid
---@param playerUid string
---@return IServerPlayerData # The player configuration that is world independent
function IPlayerDataManager.GetPlayerDataByUid(playerUid) end

-- Retrieve a players offline, world-agnostic data by his last known name
---@param name string
---@return IServerPlayerData # The player configuration that is world independent
function IPlayerDataManager.GetPlayerDataByLastKnownName(name) end

-- Resolves a player name to a player uid, independent on whether this player is online, offline or never even joined the server. This is done by contacting the auth server, so please use this method sparingly.
---@param playername string
---@param onPlayerReceived function
function IPlayerDataManager.ResolvePlayerName(playername, onPlayerReceived) end

-- Resolves a player uid to a player name, independent on whether this player is online, offline or never even joined the server. This is done by contacting the auth server, so please use this method sparingly.
---@param playeruid string
---@param onPlayerReceived function
function IPlayerDataManager.ResolvePlayerUid(playeruid, onPlayerReceived) end


