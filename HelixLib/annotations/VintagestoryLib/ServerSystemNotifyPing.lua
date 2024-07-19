---@meta

---@class ServerSystemNotifyPing: ServerSystem, ServerSystem
---@field millisecondsSinceStart number
---@field millisecondsSinceStartSeperateThread number
ServerSystemNotifyPing = {}

---@param server ServerMain
---@return ServerSystemNotifyPing
function ServerSystemNotifyPing.ctor(server) end

---@param dt number
function ServerSystemNotifyPing.OnServerTick(dt) end

---@return number
function ServerSystemNotifyPing.GetUpdateInterval() end

function ServerSystemNotifyPing.OnSeparateThreadTick() end

---@param dt number
function ServerSystemNotifyPing.OnSeperateThreadTick(dt) end

function ServerSystemNotifyPing.OnRestart() end

function ServerSystemNotifyPing.OnBeginInitialization() end

function ServerSystemNotifyPing.OnBeginConfiguration() end

function ServerSystemNotifyPing.OnLoadAssets() end

function ServerSystemNotifyPing.OnFinalizeAssets() end

function ServerSystemNotifyPing.OnBeginModsAndConfigReady() end

---@param savegame SaveGame
function ServerSystemNotifyPing.OnBeginGameReady(savegame) end

function ServerSystemNotifyPing.OnBeginWorldReady() end

function ServerSystemNotifyPing.OnSeperateThreadShutDown() end

function ServerSystemNotifyPing.OnBeginRunGame() end

function ServerSystemNotifyPing.OnBeginShutdown() end

---@param player ServerPlayer
function ServerSystemNotifyPing.OnPlayerJoin(player) end

---@param player ServerPlayer
function ServerSystemNotifyPing.OnPlayerSwitchGameMode(player) end

---@param player ServerPlayer
function ServerSystemNotifyPing.OnPlayerDisconnect(player) end

function ServerSystemNotifyPing.OnServerPause() end

function ServerSystemNotifyPing.OnServerResume() end

---@param player ServerPlayer
function ServerSystemNotifyPing.OnPlayerJoinPost(player) end

function ServerSystemNotifyPing.Dispose() end

---@return userdata
function ServerSystemNotifyPing.GetType() end

---@return string
function ServerSystemNotifyPing.ToString() end

---@param obj userdata
---@return boolean
function ServerSystemNotifyPing.Equals(obj) end

---@return number
function ServerSystemNotifyPing.GetHashCode() end


