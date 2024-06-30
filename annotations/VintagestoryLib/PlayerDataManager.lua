---@meta

---@class PlayerDataManager:  IPlayerDataManager, IGroupManager, IPermissionManager
---@field WorldDataByUID table
---@field PlayerGroupsById table
---@field PlayerDataByUid table
---@field BannedPlayers table
---@field WhitelistedPlayers table
---@field playerDataDirty boolean
---@field playerGroupsDirty boolean
---@field bannedListDirty boolean
---@field whiteListDirty boolean
PlayerDataManager = {}

---@param server ServerMain
---@return PlayerDataManager
function PlayerDataManager.ctor(server) end

function PlayerDataManager.Load() end

---@param sender ConnectedClient
---@param receiver ConnectedClient
---@return PlayerGroup
function PlayerDataManager.PlayerGroupForPrivateMessage(sender, receiver) end

---@param playerUid string
---@return boolean
function PlayerDataManager.CanCreatePlayerGroup(playerUid) end

---@param name string
---@return PlayerGroup
function PlayerDataManager.GetPlayerGroupByName(name) end

---@param group PlayerGroup
function PlayerDataManager.AddPlayerGroup(group) end

---@param group PlayerGroup
function PlayerDataManager.RemovePlayerGroup(group) end

---@param playerUID string
---@param playerName? string
---@return ServerPlayerData
function PlayerDataManager.GetOrCreateServerPlayerData(playerUID, playerName) end

---@param playername string
---@return ServerPlayerData
function PlayerDataManager.GetServerPlayerDataByLastKnownPlayername(playername) end

---@param playername string
---@param playeruid string
---@return boolean
function PlayerDataManager.UnWhitelistPlayer(playername, playeruid) end

---@param playername string
---@param playeruid string
---@param byPlayername string
---@param reason? string
---@param untildate? Nullable`1
function PlayerDataManager.WhitelistPlayer(playername, playeruid, byPlayername, reason, untildate) end

---@param playername string
---@param playeruid string
---@return PlayerEntry
function PlayerDataManager.GetPlayerBan(playername, playeruid) end

---@param playername string
---@param playeruid string
---@return PlayerEntry
function PlayerDataManager.GetPlayerWhitelist(playername, playeruid) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param role IPlayerRole
function PlayerDataManager.SetRole(player, role) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param roleCode string
function PlayerDataManager.SetRole(player, roleCode) end

---@param code string
---@return IPlayerRole
function PlayerDataManager.GetRole(code) end

---@param code string
---@param shortdescription string
---@param adminAutoGrant? boolean
function PlayerDataManager.RegisterPrivilege(code, shortdescription, adminAutoGrant) end

---@param code string
function PlayerDataManager.GrantTemporaryPrivilege(code) end

---@param code string
function PlayerDataManager.DropTemporaryPrivilege(code) end

---@param playerUID string
---@param code string
---@param permanent? boolean
---@return boolean
function PlayerDataManager.GrantPrivilege(playerUID, code, permanent) end

---@param playerUID string
---@param code string
---@return boolean
function PlayerDataManager.DenyPrivilege(playerUID, code) end

---@param playerUID string
---@param code string
---@return boolean
function PlayerDataManager.RemovePrivilegeDenial(playerUID, code) end

---@param playerUID string
---@param code string
---@param permanent? boolean
---@return boolean
function PlayerDataManager.RevokePrivilege(playerUID, code, permanent) end

---@param groupCode string
---@param privilegeCode string
---@return boolean
function PlayerDataManager.AddPrivilegeToGroup(groupCode, privilegeCode) end

---@param groupCode string
---@param privilegeCode string
---@return boolean
function PlayerDataManager.RemovePrivilegeFromGroup(groupCode, privilegeCode) end

---@param player number
---@return number
function PlayerDataManager.GetPlayerPermissionLevel(player) end

---@param playerUid string
---@return IServerPlayerData # The player configuration that is world independent
function PlayerDataManager.GetPlayerDataByUid(playerUid) end

---@param name string
---@return IServerPlayerData # The player configuration that is world independent
function PlayerDataManager.GetPlayerDataByLastKnownName(name) end

---@param playername string
---@param onPlayerReceived function
function PlayerDataManager.ResolvePlayerName(playername, onPlayerReceived) end

---@param playeruid string
---@param onPlayerReceived function
function PlayerDataManager.ResolvePlayerUid(playeruid, onPlayerReceived) end

---@return userdata
function PlayerDataManager.GetType() end

---@return string
function PlayerDataManager.ToString() end

---@param obj userdata
---@return boolean
function PlayerDataManager.Equals(obj) end

---@return number
function PlayerDataManager.GetHashCode() end


