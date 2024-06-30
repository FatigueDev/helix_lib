---@meta

---@class ServerSystem
---@field millisecondsSinceStart number
---@field millisecondsSinceStartSeperateThread number
ServerSystem = {}

---@param server ServerMain
---@return ServerSystem
function ServerSystem.ctor(server) end

---@return number
function ServerSystem.GetUpdateInterval() end

---@param dt number
function ServerSystem.OnServerTick(dt) end

function ServerSystem.OnSeparateThreadTick() end

---@param dt number
function ServerSystem.OnSeperateThreadTick(dt) end

function ServerSystem.OnRestart() end

function ServerSystem.OnBeginInitialization() end

function ServerSystem.OnBeginConfiguration() end

function ServerSystem.OnLoadAssets() end

function ServerSystem.OnFinalizeAssets() end

function ServerSystem.OnBeginModsAndConfigReady() end

---@param savegame SaveGame
function ServerSystem.OnBeginGameReady(savegame) end

function ServerSystem.OnBeginWorldReady() end

function ServerSystem.OnSeperateThreadShutDown() end

function ServerSystem.OnBeginRunGame() end

function ServerSystem.OnBeginShutdown() end

---@param player ServerPlayer
function ServerSystem.OnPlayerJoin(player) end

---@param player ServerPlayer
function ServerSystem.OnPlayerSwitchGameMode(player) end

---@param player ServerPlayer
function ServerSystem.OnPlayerDisconnect(player) end

function ServerSystem.OnServerPause() end

function ServerSystem.OnServerResume() end

---@param player ServerPlayer
function ServerSystem.OnPlayerJoinPost(player) end

function ServerSystem.Dispose() end

---@return userdata
function ServerSystem.GetType() end

---@return string
function ServerSystem.ToString() end

---@param obj userdata
---@return boolean
function ServerSystem.Equals(obj) end

---@return number
function ServerSystem.GetHashCode() end


