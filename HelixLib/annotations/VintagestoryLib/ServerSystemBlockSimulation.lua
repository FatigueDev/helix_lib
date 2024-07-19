---@meta

---@class ServerSystemBlockSimulation: ServerSystem, ServerSystem
---@field millisecondsSinceStart number
---@field millisecondsSinceStartSeperateThread number
ServerSystemBlockSimulation = {}

---@param server ServerMain
---@return ServerSystemBlockSimulation
function ServerSystemBlockSimulation.ctor(server) end

function ServerSystemBlockSimulation.OnBeginInitialization() end

function ServerSystemBlockSimulation.OnLoadAssets() end

function ServerSystemBlockSimulation.OnBeginConfiguration() end

function ServerSystemBlockSimulation.OnBeginModsAndConfigReady() end

---@param player ServerPlayer
function ServerSystemBlockSimulation.OnPlayerJoin(player) end

---@param player ServerPlayer
function ServerSystemBlockSimulation.OnPlayerDisconnect(player) end

---@return number
function ServerSystemBlockSimulation.GetUpdateInterval() end

---@param dt number
function ServerSystemBlockSimulation.OnServerTick(dt) end

function ServerSystemBlockSimulation.OnSeparateThreadTick() end

---@param dt number
function ServerSystemBlockSimulation.OnSeperateThreadTick(dt) end

function ServerSystemBlockSimulation.OnRestart() end

function ServerSystemBlockSimulation.OnFinalizeAssets() end

---@param savegame SaveGame
function ServerSystemBlockSimulation.OnBeginGameReady(savegame) end

function ServerSystemBlockSimulation.OnBeginWorldReady() end

function ServerSystemBlockSimulation.OnSeperateThreadShutDown() end

function ServerSystemBlockSimulation.OnBeginRunGame() end

function ServerSystemBlockSimulation.OnBeginShutdown() end

---@param player ServerPlayer
function ServerSystemBlockSimulation.OnPlayerSwitchGameMode(player) end

function ServerSystemBlockSimulation.OnServerPause() end

function ServerSystemBlockSimulation.OnServerResume() end

---@param player ServerPlayer
function ServerSystemBlockSimulation.OnPlayerJoinPost(player) end

function ServerSystemBlockSimulation.Dispose() end

---@return userdata
function ServerSystemBlockSimulation.GetType() end

---@return string
function ServerSystemBlockSimulation.ToString() end

---@param obj userdata
---@return boolean
function ServerSystemBlockSimulation.Equals(obj) end

---@return number
function ServerSystemBlockSimulation.GetHashCode() end


