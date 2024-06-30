---@meta

---@class ServerSystemHeartbeat: ServerSystem, ServerSystem
---@field millisecondsSinceStart number
---@field millisecondsSinceStartSeperateThread number
ServerSystemHeartbeat = {}

---@param server ServerMain
---@return ServerSystemHeartbeat
function ServerSystemHeartbeat.ctor(server) end

---@return number
function ServerSystemHeartbeat.GetUpdateInterval() end

function ServerSystemHeartbeat.OnBeginModsAndConfigReady() end

function ServerSystemHeartbeat.OnBeginRunGame() end

function ServerSystemHeartbeat.OnBeginShutdown() end

---@param dt number
function ServerSystemHeartbeat.OnServerTick(dt) end

function ServerSystemHeartbeat.SendHeartbeat() end

function ServerSystemHeartbeat.SendUnregister() end

function ServerSystemHeartbeat.OnSeparateThreadTick() end

---@param dt number
function ServerSystemHeartbeat.OnSeperateThreadTick(dt) end

function ServerSystemHeartbeat.OnRestart() end

function ServerSystemHeartbeat.OnBeginInitialization() end

function ServerSystemHeartbeat.OnBeginConfiguration() end

function ServerSystemHeartbeat.OnLoadAssets() end

function ServerSystemHeartbeat.OnFinalizeAssets() end

---@param savegame SaveGame
function ServerSystemHeartbeat.OnBeginGameReady(savegame) end

function ServerSystemHeartbeat.OnBeginWorldReady() end

function ServerSystemHeartbeat.OnSeperateThreadShutDown() end

---@param player ServerPlayer
function ServerSystemHeartbeat.OnPlayerJoin(player) end

---@param player ServerPlayer
function ServerSystemHeartbeat.OnPlayerSwitchGameMode(player) end

---@param player ServerPlayer
function ServerSystemHeartbeat.OnPlayerDisconnect(player) end

function ServerSystemHeartbeat.OnServerPause() end

function ServerSystemHeartbeat.OnServerResume() end

---@param player ServerPlayer
function ServerSystemHeartbeat.OnPlayerJoinPost(player) end

function ServerSystemHeartbeat.Dispose() end

---@return userdata
function ServerSystemHeartbeat.GetType() end

---@return string
function ServerSystemHeartbeat.ToString() end

---@param obj userdata
---@return boolean
function ServerSystemHeartbeat.Equals(obj) end

---@return number
function ServerSystemHeartbeat.GetHashCode() end


