---@meta

---@class ServerSystemUpnp: ServerSystem, ServerSystem
---@field millisecondsSinceStart number
---@field millisecondsSinceStartSeperateThread number
ServerSystemUpnp = {}

---@param server ServerMain
---@return ServerSystemUpnp
function ServerSystemUpnp.ctor(server) end

function ServerSystemUpnp.OnBeginRunGame() end

function ServerSystemUpnp.Initiate() end

function ServerSystemUpnp.Dispose() end

---@return number
function ServerSystemUpnp.GetUpdateInterval() end

---@param dt number
function ServerSystemUpnp.OnServerTick(dt) end

function ServerSystemUpnp.OnSeparateThreadTick() end

---@param dt number
function ServerSystemUpnp.OnSeperateThreadTick(dt) end

function ServerSystemUpnp.OnRestart() end

function ServerSystemUpnp.OnBeginInitialization() end

function ServerSystemUpnp.OnBeginConfiguration() end

function ServerSystemUpnp.OnLoadAssets() end

function ServerSystemUpnp.OnFinalizeAssets() end

function ServerSystemUpnp.OnBeginModsAndConfigReady() end

---@param savegame SaveGame
function ServerSystemUpnp.OnBeginGameReady(savegame) end

function ServerSystemUpnp.OnBeginWorldReady() end

function ServerSystemUpnp.OnSeperateThreadShutDown() end

function ServerSystemUpnp.OnBeginShutdown() end

---@param player ServerPlayer
function ServerSystemUpnp.OnPlayerJoin(player) end

---@param player ServerPlayer
function ServerSystemUpnp.OnPlayerSwitchGameMode(player) end

---@param player ServerPlayer
function ServerSystemUpnp.OnPlayerDisconnect(player) end

function ServerSystemUpnp.OnServerPause() end

function ServerSystemUpnp.OnServerResume() end

---@param player ServerPlayer
function ServerSystemUpnp.OnPlayerJoinPost(player) end

---@return userdata
function ServerSystemUpnp.GetType() end

---@return string
function ServerSystemUpnp.ToString() end

---@param obj userdata
---@return boolean
function ServerSystemUpnp.Equals(obj) end

---@return number
function ServerSystemUpnp.GetHashCode() end


