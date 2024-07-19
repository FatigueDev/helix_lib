---@meta

---@class ServerySystemPlayerGroups: ServerSystem, ServerSystem
---@field PlayerGroupsByUid table
---@field DisbandRequests table
---@field InviteRequests table
---@field millisecondsSinceStart number
---@field millisecondsSinceStartSeperateThread number
ServerySystemPlayerGroups = {}

---@param server ServerMain
---@return ServerySystemPlayerGroups
function ServerySystemPlayerGroups.ctor(server) end

---@return table
function ServerySystemPlayerGroups.get_PlayerGroupsByUid() end

---@param player ServerPlayer
function ServerySystemPlayerGroups.OnPlayerJoinPost(player) end

---@param player ServerPlayer
function ServerySystemPlayerGroups.OnPlayerDisconnect(player) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function ServerySystemPlayerGroups.SendPlayerGroups(player) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param playergroup PlayerGroup
function ServerySystemPlayerGroups.SendPlayerGroup(player, playergroup) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param playergroup PlayerGroup
---@param membership PlayerGroupMembership
function ServerySystemPlayerGroups.SendPlayerGroup(player, playergroup, membership) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param targetGroupid number
---@param priv EnumPlayerGroupPrivilege
---@param targetPlayerUid? string
---@return boolean
function ServerySystemPlayerGroups.HasPlayerPrivilege(player, targetGroupid, priv, targetPlayerUid) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param targetGroupid number
---@return PlayerGroupMembership
function ServerySystemPlayerGroups.GetGroupMemberShip(player, targetGroupid) end

---@param playerUID string
---@param targetGroupid number
---@return PlayerGroupMembership
function ServerySystemPlayerGroups.GetGroupMemberShip(playerUID, targetGroupid) end

---@return number
function ServerySystemPlayerGroups.GetUpdateInterval() end

---@param dt number
function ServerySystemPlayerGroups.OnServerTick(dt) end

function ServerySystemPlayerGroups.OnSeparateThreadTick() end

---@param dt number
function ServerySystemPlayerGroups.OnSeperateThreadTick(dt) end

function ServerySystemPlayerGroups.OnRestart() end

function ServerySystemPlayerGroups.OnBeginInitialization() end

function ServerySystemPlayerGroups.OnBeginConfiguration() end

function ServerySystemPlayerGroups.OnLoadAssets() end

function ServerySystemPlayerGroups.OnFinalizeAssets() end

function ServerySystemPlayerGroups.OnBeginModsAndConfigReady() end

---@param savegame SaveGame
function ServerySystemPlayerGroups.OnBeginGameReady(savegame) end

function ServerySystemPlayerGroups.OnBeginWorldReady() end

function ServerySystemPlayerGroups.OnSeperateThreadShutDown() end

function ServerySystemPlayerGroups.OnBeginRunGame() end

function ServerySystemPlayerGroups.OnBeginShutdown() end

---@param player ServerPlayer
function ServerySystemPlayerGroups.OnPlayerJoin(player) end

---@param player ServerPlayer
function ServerySystemPlayerGroups.OnPlayerSwitchGameMode(player) end

function ServerySystemPlayerGroups.OnServerPause() end

function ServerySystemPlayerGroups.OnServerResume() end

function ServerySystemPlayerGroups.Dispose() end

---@return userdata
function ServerySystemPlayerGroups.GetType() end

---@return string
function ServerySystemPlayerGroups.ToString() end

---@param obj userdata
---@return boolean
function ServerySystemPlayerGroups.Equals(obj) end

---@return number
function ServerySystemPlayerGroups.GetHashCode() end


