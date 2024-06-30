---@meta

---@class CmdPlayer: ServerSystem, ServerSystem
---@field millisecondsSinceStart number
---@field millisecondsSinceStartSeperateThread number
---@field PlayerEachDelegate nil
CmdPlayer = {}

---@param server ServerMain
---@return CmdPlayer
function CmdPlayer.ctor(server) end

---@param caller Caller
---@param targetPlayer PlayerUidName
---@param newRoleCode string
---@return TextCommandResult
function CmdPlayer.ChangeRole(caller, targetPlayer, newRoleCode) end

---@param args TextCommandCallingArgs
---@param onPlayer PlayerEachDelegate
---@return TextCommandResult
function CmdPlayer.Each(args, onPlayer) end

---@return number
function CmdPlayer.GetUpdateInterval() end

---@param dt number
function CmdPlayer.OnServerTick(dt) end

function CmdPlayer.OnSeparateThreadTick() end

---@param dt number
function CmdPlayer.OnSeperateThreadTick(dt) end

function CmdPlayer.OnRestart() end

function CmdPlayer.OnBeginInitialization() end

function CmdPlayer.OnBeginConfiguration() end

function CmdPlayer.OnLoadAssets() end

function CmdPlayer.OnFinalizeAssets() end

function CmdPlayer.OnBeginModsAndConfigReady() end

---@param savegame SaveGame
function CmdPlayer.OnBeginGameReady(savegame) end

function CmdPlayer.OnBeginWorldReady() end

function CmdPlayer.OnSeperateThreadShutDown() end

function CmdPlayer.OnBeginRunGame() end

function CmdPlayer.OnBeginShutdown() end

---@param player ServerPlayer
function CmdPlayer.OnPlayerJoin(player) end

---@param player ServerPlayer
function CmdPlayer.OnPlayerSwitchGameMode(player) end

---@param player ServerPlayer
function CmdPlayer.OnPlayerDisconnect(player) end

function CmdPlayer.OnServerPause() end

function CmdPlayer.OnServerResume() end

---@param player ServerPlayer
function CmdPlayer.OnPlayerJoinPost(player) end

function CmdPlayer.Dispose() end

---@return userdata
function CmdPlayer.GetType() end

---@return string
function CmdPlayer.ToString() end

---@param obj userdata
---@return boolean
function CmdPlayer.Equals(obj) end

---@return number
function CmdPlayer.GetHashCode() end


