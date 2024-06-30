---@meta

---@class ServerSystemEntitySpawner: ServerSystem, ServerSystem
---@field millisecondsSinceStart number
---@field millisecondsSinceStartSeperateThread number
ServerSystemEntitySpawner = {}

---@param server ServerMain
---@return ServerSystemEntitySpawner
function ServerSystemEntitySpawner.ctor(server) end

function ServerSystemEntitySpawner.OnBeginModsAndConfigReady() end

---@param savegame SaveGame
function ServerSystemEntitySpawner.OnBeginGameReady(savegame) end

function ServerSystemEntitySpawner.Dispose() end

---@return number
function ServerSystemEntitySpawner.GetUpdateInterval() end

---@param dt number
function ServerSystemEntitySpawner.OnServerTick(dt) end

function ServerSystemEntitySpawner.OnSeparateThreadTick() end

---@param dt number
function ServerSystemEntitySpawner.OnSeperateThreadTick(dt) end

function ServerSystemEntitySpawner.OnRestart() end

function ServerSystemEntitySpawner.OnBeginInitialization() end

function ServerSystemEntitySpawner.OnBeginConfiguration() end

function ServerSystemEntitySpawner.OnLoadAssets() end

function ServerSystemEntitySpawner.OnFinalizeAssets() end

function ServerSystemEntitySpawner.OnBeginWorldReady() end

function ServerSystemEntitySpawner.OnSeperateThreadShutDown() end

function ServerSystemEntitySpawner.OnBeginRunGame() end

function ServerSystemEntitySpawner.OnBeginShutdown() end

---@param player ServerPlayer
function ServerSystemEntitySpawner.OnPlayerJoin(player) end

---@param player ServerPlayer
function ServerSystemEntitySpawner.OnPlayerSwitchGameMode(player) end

---@param player ServerPlayer
function ServerSystemEntitySpawner.OnPlayerDisconnect(player) end

function ServerSystemEntitySpawner.OnServerPause() end

function ServerSystemEntitySpawner.OnServerResume() end

---@param player ServerPlayer
function ServerSystemEntitySpawner.OnPlayerJoinPost(player) end

---@return userdata
function ServerSystemEntitySpawner.GetType() end

---@return string
function ServerSystemEntitySpawner.ToString() end

---@param obj userdata
---@return boolean
function ServerSystemEntitySpawner.Equals(obj) end

---@return number
function ServerSystemEntitySpawner.GetHashCode() end


