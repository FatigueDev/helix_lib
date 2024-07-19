---@meta

---@class ServerSystemAutoSaveGame: ServerSystem, ServerSystem
---@field millisecondsSinceStart number
---@field millisecondsSinceStartSeperateThread number
ServerSystemAutoSaveGame = {}

---@param server ServerMain
---@return ServerSystemAutoSaveGame
function ServerSystemAutoSaveGame.ctor(server) end

---@return number
function ServerSystemAutoSaveGame.GetUpdateInterval() end

---@param dt number
function ServerSystemAutoSaveGame.OnServerTick(dt) end

function ServerSystemAutoSaveGame.OnSeparateThreadTick() end

---@param dt number
function ServerSystemAutoSaveGame.OnSeperateThreadTick(dt) end

function ServerSystemAutoSaveGame.OnRestart() end

function ServerSystemAutoSaveGame.OnBeginInitialization() end

function ServerSystemAutoSaveGame.OnBeginConfiguration() end

function ServerSystemAutoSaveGame.OnLoadAssets() end

function ServerSystemAutoSaveGame.OnFinalizeAssets() end

function ServerSystemAutoSaveGame.OnBeginModsAndConfigReady() end

---@param savegame SaveGame
function ServerSystemAutoSaveGame.OnBeginGameReady(savegame) end

function ServerSystemAutoSaveGame.OnBeginWorldReady() end

function ServerSystemAutoSaveGame.OnSeperateThreadShutDown() end

function ServerSystemAutoSaveGame.OnBeginRunGame() end

function ServerSystemAutoSaveGame.OnBeginShutdown() end

---@param player ServerPlayer
function ServerSystemAutoSaveGame.OnPlayerJoin(player) end

---@param player ServerPlayer
function ServerSystemAutoSaveGame.OnPlayerSwitchGameMode(player) end

---@param player ServerPlayer
function ServerSystemAutoSaveGame.OnPlayerDisconnect(player) end

function ServerSystemAutoSaveGame.OnServerPause() end

function ServerSystemAutoSaveGame.OnServerResume() end

---@param player ServerPlayer
function ServerSystemAutoSaveGame.OnPlayerJoinPost(player) end

function ServerSystemAutoSaveGame.Dispose() end

---@return userdata
function ServerSystemAutoSaveGame.GetType() end

---@return string
function ServerSystemAutoSaveGame.ToString() end

---@param obj userdata
---@return boolean
function ServerSystemAutoSaveGame.Equals(obj) end

---@return number
function ServerSystemAutoSaveGame.GetHashCode() end


