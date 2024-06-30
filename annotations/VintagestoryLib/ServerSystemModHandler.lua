---@meta

---@class ServerSystemModHandler: ServerSystem, ServerSystem
---@field millisecondsSinceStart number
---@field millisecondsSinceStartSeperateThread number
ServerSystemModHandler = {}

---@param server ServerMain
---@return ServerSystemModHandler
function ServerSystemModHandler.ctor(server) end

function ServerSystemModHandler.OnBeginInitialization() end

function ServerSystemModHandler.OnLoadAssets() end

function ServerSystemModHandler.OnFinalizeAssets() end

function ServerSystemModHandler.OnBeginConfiguration() end

function ServerSystemModHandler.OnBeginModsAndConfigReady() end

function ServerSystemModHandler.OnBeginWorldReady() end

---@param savegame SaveGame
function ServerSystemModHandler.OnBeginGameReady(savegame) end

function ServerSystemModHandler.OnBeginRunGame() end

function ServerSystemModHandler.OnBeginShutdown() end

---@return number
function ServerSystemModHandler.GetUpdateInterval() end

---@param dt number
function ServerSystemModHandler.OnServerTick(dt) end

function ServerSystemModHandler.OnSeparateThreadTick() end

---@param dt number
function ServerSystemModHandler.OnSeperateThreadTick(dt) end

function ServerSystemModHandler.OnRestart() end

function ServerSystemModHandler.OnSeperateThreadShutDown() end

---@param player ServerPlayer
function ServerSystemModHandler.OnPlayerJoin(player) end

---@param player ServerPlayer
function ServerSystemModHandler.OnPlayerSwitchGameMode(player) end

---@param player ServerPlayer
function ServerSystemModHandler.OnPlayerDisconnect(player) end

function ServerSystemModHandler.OnServerPause() end

function ServerSystemModHandler.OnServerResume() end

---@param player ServerPlayer
function ServerSystemModHandler.OnPlayerJoinPost(player) end

function ServerSystemModHandler.Dispose() end

---@return userdata
function ServerSystemModHandler.GetType() end

---@return string
function ServerSystemModHandler.ToString() end

---@param obj userdata
---@return boolean
function ServerSystemModHandler.Equals(obj) end

---@return number
function ServerSystemModHandler.GetHashCode() end


