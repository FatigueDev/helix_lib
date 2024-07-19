---@meta

---@class ServerSystemAsync: ServerSystem, ServerSystem
---@field millisecondsSinceStart number
---@field millisecondsSinceStartSeperateThread number
ServerSystemAsync = {}

---@param server ServerMain
---@param name string
---@param system IAsyncServerSystem Mods can create server threads to carry out an asynchronous process, by implementing this interface and calling IServerApi.AddServerThread()
---@return ServerSystemAsync
function ServerSystemAsync.ctor(server, name, system) end

---@return number
function ServerSystemAsync.GetUpdateInterval() end

function ServerSystemAsync.OnSeparateThreadTick() end

function ServerSystemAsync.Dispose() end

---@param dt number
function ServerSystemAsync.OnServerTick(dt) end

---@param dt number
function ServerSystemAsync.OnSeperateThreadTick(dt) end

function ServerSystemAsync.OnRestart() end

function ServerSystemAsync.OnBeginInitialization() end

function ServerSystemAsync.OnBeginConfiguration() end

function ServerSystemAsync.OnLoadAssets() end

function ServerSystemAsync.OnFinalizeAssets() end

function ServerSystemAsync.OnBeginModsAndConfigReady() end

---@param savegame SaveGame
function ServerSystemAsync.OnBeginGameReady(savegame) end

function ServerSystemAsync.OnBeginWorldReady() end

function ServerSystemAsync.OnSeperateThreadShutDown() end

function ServerSystemAsync.OnBeginRunGame() end

function ServerSystemAsync.OnBeginShutdown() end

---@param player ServerPlayer
function ServerSystemAsync.OnPlayerJoin(player) end

---@param player ServerPlayer
function ServerSystemAsync.OnPlayerSwitchGameMode(player) end

---@param player ServerPlayer
function ServerSystemAsync.OnPlayerDisconnect(player) end

function ServerSystemAsync.OnServerPause() end

function ServerSystemAsync.OnServerResume() end

---@param player ServerPlayer
function ServerSystemAsync.OnPlayerJoinPost(player) end

---@return userdata
function ServerSystemAsync.GetType() end

---@return string
function ServerSystemAsync.ToString() end

---@param obj userdata
---@return boolean
function ServerSystemAsync.Equals(obj) end

---@return number
function ServerSystemAsync.GetHashCode() end


