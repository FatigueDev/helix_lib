---@meta

---@class ServerSystemMacros: ServerSystem, ServerSystem
---@field millisecondsSinceStart number
---@field millisecondsSinceStartSeperateThread number
ServerSystemMacros = {}

---@param server ServerMain
---@return ServerSystemMacros
function ServerSystemMacros.ctor(server) end

---@param player ServerPlayer
function ServerSystemMacros.OnPlayerDisconnect(player) end

function ServerSystemMacros.OnBeginConfiguration() end

function ServerSystemMacros.LoadMacros() end

function ServerSystemMacros.SaveMacros() end

---@return number
function ServerSystemMacros.GetUpdateInterval() end

---@param dt number
function ServerSystemMacros.OnServerTick(dt) end

function ServerSystemMacros.OnSeparateThreadTick() end

---@param dt number
function ServerSystemMacros.OnSeperateThreadTick(dt) end

function ServerSystemMacros.OnRestart() end

function ServerSystemMacros.OnBeginInitialization() end

function ServerSystemMacros.OnLoadAssets() end

function ServerSystemMacros.OnFinalizeAssets() end

function ServerSystemMacros.OnBeginModsAndConfigReady() end

---@param savegame SaveGame
function ServerSystemMacros.OnBeginGameReady(savegame) end

function ServerSystemMacros.OnBeginWorldReady() end

function ServerSystemMacros.OnSeperateThreadShutDown() end

function ServerSystemMacros.OnBeginRunGame() end

function ServerSystemMacros.OnBeginShutdown() end

---@param player ServerPlayer
function ServerSystemMacros.OnPlayerJoin(player) end

---@param player ServerPlayer
function ServerSystemMacros.OnPlayerSwitchGameMode(player) end

function ServerSystemMacros.OnServerPause() end

function ServerSystemMacros.OnServerResume() end

---@param player ServerPlayer
function ServerSystemMacros.OnPlayerJoinPost(player) end

function ServerSystemMacros.Dispose() end

---@return userdata
function ServerSystemMacros.GetType() end

---@return string
function ServerSystemMacros.ToString() end

---@param obj userdata
---@return boolean
function ServerSystemMacros.Equals(obj) end

---@return number
function ServerSystemMacros.GetHashCode() end


