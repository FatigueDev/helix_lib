---@meta

---@class ServerSystemEntityPhysics: ServerSystem, ServerSystem, LoadBalancedTask
---@field millisecondsSinceStart number
---@field millisecondsSinceStartSeperateThread number
ServerSystemEntityPhysics = {}

---@param server ServerMain
---@return ServerSystemEntityPhysics
function ServerSystemEntityPhysics.ctor(server) end

function ServerSystemEntityPhysics.Dispose() end

---@return number
function ServerSystemEntityPhysics.GetUpdateInterval() end

---@param dt number
function ServerSystemEntityPhysics.OnServerTick(dt) end

function ServerSystemEntityPhysics.DoWork() end

---@param threadnum number
function ServerSystemEntityPhysics.StartWorkerThread(threadnum) end

---@param e Exception
function ServerSystemEntityPhysics.HandleException(e) end

---@return boolean
function ServerSystemEntityPhysics.ShouldExit() end

function ServerSystemEntityPhysics.OnSeparateThreadTick() end

---@param dt number
function ServerSystemEntityPhysics.OnSeperateThreadTick(dt) end

function ServerSystemEntityPhysics.OnRestart() end

function ServerSystemEntityPhysics.OnBeginInitialization() end

function ServerSystemEntityPhysics.OnBeginConfiguration() end

function ServerSystemEntityPhysics.OnLoadAssets() end

function ServerSystemEntityPhysics.OnFinalizeAssets() end

function ServerSystemEntityPhysics.OnBeginModsAndConfigReady() end

---@param savegame SaveGame
function ServerSystemEntityPhysics.OnBeginGameReady(savegame) end

function ServerSystemEntityPhysics.OnBeginWorldReady() end

function ServerSystemEntityPhysics.OnSeperateThreadShutDown() end

function ServerSystemEntityPhysics.OnBeginRunGame() end

function ServerSystemEntityPhysics.OnBeginShutdown() end

---@param player ServerPlayer
function ServerSystemEntityPhysics.OnPlayerJoin(player) end

---@param player ServerPlayer
function ServerSystemEntityPhysics.OnPlayerSwitchGameMode(player) end

---@param player ServerPlayer
function ServerSystemEntityPhysics.OnPlayerDisconnect(player) end

function ServerSystemEntityPhysics.OnServerPause() end

function ServerSystemEntityPhysics.OnServerResume() end

---@param player ServerPlayer
function ServerSystemEntityPhysics.OnPlayerJoinPost(player) end

---@return userdata
function ServerSystemEntityPhysics.GetType() end

---@return string
function ServerSystemEntityPhysics.ToString() end

---@param obj userdata
---@return boolean
function ServerSystemEntityPhysics.Equals(obj) end

---@return number
function ServerSystemEntityPhysics.GetHashCode() end


