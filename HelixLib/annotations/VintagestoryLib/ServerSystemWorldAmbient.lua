---@meta

---@class ServerSystemWorldAmbient: ServerSystem, ServerSystem
---@field millisecondsSinceStart number
---@field millisecondsSinceStartSeperateThread number
ServerSystemWorldAmbient = {}

---@param server ServerMain
---@return ServerSystemWorldAmbient
function ServerSystemWorldAmbient.ctor(server) end

---@param player ServerPlayer
function ServerSystemWorldAmbient.OnPlayerJoin(player) end

---@param savegame SaveGame
function ServerSystemWorldAmbient.OnBeginGameReady(savegame) end

---@return number
function ServerSystemWorldAmbient.GetUpdateInterval() end

---@param dt number
function ServerSystemWorldAmbient.OnServerTick(dt) end

function ServerSystemWorldAmbient.OnSeparateThreadTick() end

---@param dt number
function ServerSystemWorldAmbient.OnSeperateThreadTick(dt) end

function ServerSystemWorldAmbient.OnRestart() end

function ServerSystemWorldAmbient.OnBeginInitialization() end

function ServerSystemWorldAmbient.OnBeginConfiguration() end

function ServerSystemWorldAmbient.OnLoadAssets() end

function ServerSystemWorldAmbient.OnFinalizeAssets() end

function ServerSystemWorldAmbient.OnBeginModsAndConfigReady() end

function ServerSystemWorldAmbient.OnBeginWorldReady() end

function ServerSystemWorldAmbient.OnSeperateThreadShutDown() end

function ServerSystemWorldAmbient.OnBeginRunGame() end

function ServerSystemWorldAmbient.OnBeginShutdown() end

---@param player ServerPlayer
function ServerSystemWorldAmbient.OnPlayerSwitchGameMode(player) end

---@param player ServerPlayer
function ServerSystemWorldAmbient.OnPlayerDisconnect(player) end

function ServerSystemWorldAmbient.OnServerPause() end

function ServerSystemWorldAmbient.OnServerResume() end

---@param player ServerPlayer
function ServerSystemWorldAmbient.OnPlayerJoinPost(player) end

function ServerSystemWorldAmbient.Dispose() end

---@return userdata
function ServerSystemWorldAmbient.GetType() end

---@return string
function ServerSystemWorldAmbient.ToString() end

---@param obj userdata
---@return boolean
function ServerSystemWorldAmbient.Equals(obj) end

---@return number
function ServerSystemWorldAmbient.GetHashCode() end


