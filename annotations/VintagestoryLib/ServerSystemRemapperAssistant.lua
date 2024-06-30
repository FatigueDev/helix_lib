---@meta

---@class ServerSystemRemapperAssistant: ServerSystem, ServerSystem
---@field millisecondsSinceStart number
---@field millisecondsSinceStartSeperateThread number
ServerSystemRemapperAssistant = {}

---@param server ServerMain
---@return ServerSystemRemapperAssistant
function ServerSystemRemapperAssistant.ctor(server) end

function ServerSystemRemapperAssistant.Dispose() end

function ServerSystemRemapperAssistant.OnFinalizeAssets() end

---@return number
function ServerSystemRemapperAssistant.GetUpdateInterval() end

---@param dt number
function ServerSystemRemapperAssistant.OnServerTick(dt) end

function ServerSystemRemapperAssistant.OnSeparateThreadTick() end

---@param dt number
function ServerSystemRemapperAssistant.OnSeperateThreadTick(dt) end

function ServerSystemRemapperAssistant.OnRestart() end

function ServerSystemRemapperAssistant.OnBeginInitialization() end

function ServerSystemRemapperAssistant.OnBeginConfiguration() end

function ServerSystemRemapperAssistant.OnLoadAssets() end

function ServerSystemRemapperAssistant.OnBeginModsAndConfigReady() end

---@param savegame SaveGame
function ServerSystemRemapperAssistant.OnBeginGameReady(savegame) end

function ServerSystemRemapperAssistant.OnBeginWorldReady() end

function ServerSystemRemapperAssistant.OnSeperateThreadShutDown() end

function ServerSystemRemapperAssistant.OnBeginRunGame() end

function ServerSystemRemapperAssistant.OnBeginShutdown() end

---@param player ServerPlayer
function ServerSystemRemapperAssistant.OnPlayerJoin(player) end

---@param player ServerPlayer
function ServerSystemRemapperAssistant.OnPlayerSwitchGameMode(player) end

---@param player ServerPlayer
function ServerSystemRemapperAssistant.OnPlayerDisconnect(player) end

function ServerSystemRemapperAssistant.OnServerPause() end

function ServerSystemRemapperAssistant.OnServerResume() end

---@param player ServerPlayer
function ServerSystemRemapperAssistant.OnPlayerJoinPost(player) end

---@return userdata
function ServerSystemRemapperAssistant.GetType() end

---@return string
function ServerSystemRemapperAssistant.ToString() end

---@param obj userdata
---@return boolean
function ServerSystemRemapperAssistant.Equals(obj) end

---@return number
function ServerSystemRemapperAssistant.GetHashCode() end


