---@meta

---@class ServerSystemEntityCodeRemapper: ServerSystem, ServerSystem
---@field millisecondsSinceStart number
---@field millisecondsSinceStartSeperateThread number
ServerSystemEntityCodeRemapper = {}

---@param server ServerMain
---@return ServerSystemEntityCodeRemapper
function ServerSystemEntityCodeRemapper.ctor(server) end

---@return number
function ServerSystemEntityCodeRemapper.GetUpdateInterval() end

---@param dt number
function ServerSystemEntityCodeRemapper.OnServerTick(dt) end

function ServerSystemEntityCodeRemapper.OnSeparateThreadTick() end

---@param dt number
function ServerSystemEntityCodeRemapper.OnSeperateThreadTick(dt) end

function ServerSystemEntityCodeRemapper.OnRestart() end

function ServerSystemEntityCodeRemapper.OnBeginInitialization() end

function ServerSystemEntityCodeRemapper.OnBeginConfiguration() end

function ServerSystemEntityCodeRemapper.OnLoadAssets() end

function ServerSystemEntityCodeRemapper.OnFinalizeAssets() end

function ServerSystemEntityCodeRemapper.OnBeginModsAndConfigReady() end

---@param savegame SaveGame
function ServerSystemEntityCodeRemapper.OnBeginGameReady(savegame) end

function ServerSystemEntityCodeRemapper.OnBeginWorldReady() end

function ServerSystemEntityCodeRemapper.OnSeperateThreadShutDown() end

function ServerSystemEntityCodeRemapper.OnBeginRunGame() end

function ServerSystemEntityCodeRemapper.OnBeginShutdown() end

---@param player ServerPlayer
function ServerSystemEntityCodeRemapper.OnPlayerJoin(player) end

---@param player ServerPlayer
function ServerSystemEntityCodeRemapper.OnPlayerSwitchGameMode(player) end

---@param player ServerPlayer
function ServerSystemEntityCodeRemapper.OnPlayerDisconnect(player) end

function ServerSystemEntityCodeRemapper.OnServerPause() end

function ServerSystemEntityCodeRemapper.OnServerResume() end

---@param player ServerPlayer
function ServerSystemEntityCodeRemapper.OnPlayerJoinPost(player) end

function ServerSystemEntityCodeRemapper.Dispose() end

---@return userdata
function ServerSystemEntityCodeRemapper.GetType() end

---@return string
function ServerSystemEntityCodeRemapper.ToString() end

---@param obj userdata
---@return boolean
function ServerSystemEntityCodeRemapper.Equals(obj) end

---@return number
function ServerSystemEntityCodeRemapper.GetHashCode() end


