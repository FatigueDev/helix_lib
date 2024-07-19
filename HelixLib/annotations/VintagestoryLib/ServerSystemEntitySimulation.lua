---@meta

---@class ServerSystemEntitySimulation: ServerSystem, ServerSystem
---@field millisecondsSinceStart number
---@field millisecondsSinceStartSeperateThread number
ServerSystemEntitySimulation = {}

---@param server ServerMain
---@return ServerSystemEntitySimulation
function ServerSystemEntitySimulation.ctor(server) end

---@return number
function ServerSystemEntitySimulation.GetUpdateInterval() end

function ServerSystemEntitySimulation.OnBeginModsAndConfigReady() end

---@param player ServerPlayer
function ServerSystemEntitySimulation.OnPlayerJoin(player) end

---@param player ServerPlayer
function ServerSystemEntitySimulation.OnPlayerDisconnect(player) end

---@param dt number
function ServerSystemEntitySimulation.OnServerTick(dt) end

---@param server ServerMain
---@param entity Entity The basic class for all entities in the game
function ServerSystemEntitySimulation.UpdateEntityTickingFlag(server, entity) end

function ServerSystemEntitySimulation.OnSeparateThreadTick() end

---@param dt number
function ServerSystemEntitySimulation.OnSeperateThreadTick(dt) end

function ServerSystemEntitySimulation.OnRestart() end

function ServerSystemEntitySimulation.OnBeginInitialization() end

function ServerSystemEntitySimulation.OnBeginConfiguration() end

function ServerSystemEntitySimulation.OnLoadAssets() end

function ServerSystemEntitySimulation.OnFinalizeAssets() end

---@param savegame SaveGame
function ServerSystemEntitySimulation.OnBeginGameReady(savegame) end

function ServerSystemEntitySimulation.OnBeginWorldReady() end

function ServerSystemEntitySimulation.OnSeperateThreadShutDown() end

function ServerSystemEntitySimulation.OnBeginRunGame() end

function ServerSystemEntitySimulation.OnBeginShutdown() end

---@param player ServerPlayer
function ServerSystemEntitySimulation.OnPlayerSwitchGameMode(player) end

function ServerSystemEntitySimulation.OnServerPause() end

function ServerSystemEntitySimulation.OnServerResume() end

---@param player ServerPlayer
function ServerSystemEntitySimulation.OnPlayerJoinPost(player) end

function ServerSystemEntitySimulation.Dispose() end

---@return userdata
function ServerSystemEntitySimulation.GetType() end

---@return string
function ServerSystemEntitySimulation.ToString() end

---@param obj userdata
---@return boolean
function ServerSystemEntitySimulation.Equals(obj) end

---@return number
function ServerSystemEntitySimulation.GetHashCode() end


