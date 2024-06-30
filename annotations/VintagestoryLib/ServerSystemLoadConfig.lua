---@meta

---@class ServerSystemLoadConfig: ServerSystem, ServerSystem
---@field millisecondsSinceStart number
---@field millisecondsSinceStartSeperateThread number
ServerSystemLoadConfig = {}

---@param server ServerMain
---@return ServerSystemLoadConfig
function ServerSystemLoadConfig.ctor(server) end

---@return number
function ServerSystemLoadConfig.GetUpdateInterval() end

---@param dt number
function ServerSystemLoadConfig.OnServerTick(dt) end

function ServerSystemLoadConfig.OnBeginConfiguration() end

---@param server ServerMain
function ServerSystemLoadConfig.EnsureConfigExists(server) end

function ServerSystemLoadConfig.OnBeginRunGame() end

---@param server ServerMain
function ServerSystemLoadConfig.GenerateConfig(server) end

---@param server ServerMain
function ServerSystemLoadConfig.LoadConfig(server) end

---@param server ServerMain
function ServerSystemLoadConfig.SaveConfig(server) end

function ServerSystemLoadConfig.OnSeparateThreadTick() end

---@param dt number
function ServerSystemLoadConfig.OnSeperateThreadTick(dt) end

function ServerSystemLoadConfig.OnRestart() end

function ServerSystemLoadConfig.OnBeginInitialization() end

function ServerSystemLoadConfig.OnLoadAssets() end

function ServerSystemLoadConfig.OnFinalizeAssets() end

function ServerSystemLoadConfig.OnBeginModsAndConfigReady() end

---@param savegame SaveGame
function ServerSystemLoadConfig.OnBeginGameReady(savegame) end

function ServerSystemLoadConfig.OnBeginWorldReady() end

function ServerSystemLoadConfig.OnSeperateThreadShutDown() end

function ServerSystemLoadConfig.OnBeginShutdown() end

---@param player ServerPlayer
function ServerSystemLoadConfig.OnPlayerJoin(player) end

---@param player ServerPlayer
function ServerSystemLoadConfig.OnPlayerSwitchGameMode(player) end

---@param player ServerPlayer
function ServerSystemLoadConfig.OnPlayerDisconnect(player) end

function ServerSystemLoadConfig.OnServerPause() end

function ServerSystemLoadConfig.OnServerResume() end

---@param player ServerPlayer
function ServerSystemLoadConfig.OnPlayerJoinPost(player) end

function ServerSystemLoadConfig.Dispose() end

---@return userdata
function ServerSystemLoadConfig.GetType() end

---@return string
function ServerSystemLoadConfig.ToString() end

---@param obj userdata
---@return boolean
function ServerSystemLoadConfig.Equals(obj) end

---@return number
function ServerSystemLoadConfig.GetHashCode() end


