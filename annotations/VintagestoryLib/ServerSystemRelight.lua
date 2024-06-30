---@meta

---@class ServerSystemRelight: ServerSystem, ServerSystem
---@field chunkIlluminator ChunkIlluminator
---@field millisecondsSinceStart number
---@field millisecondsSinceStartSeperateThread number
ServerSystemRelight = {}

---@param server ServerMain
---@return ServerSystemRelight
function ServerSystemRelight.ctor(server) end

---@param savegame SaveGame
function ServerSystemRelight.OnBeginGameReady(savegame) end

function ServerSystemRelight.OnSeparateThreadTick() end

---@return number
function ServerSystemRelight.GetUpdateInterval() end

function ServerSystemRelight.ProcessLightingQueue() end

---@param task UpdateLightingTask
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function ServerSystemRelight.ProcessLightingTask(task, pos) end

---@param dt number
function ServerSystemRelight.OnServerTick(dt) end

---@param dt number
function ServerSystemRelight.OnSeperateThreadTick(dt) end

function ServerSystemRelight.OnRestart() end

function ServerSystemRelight.OnBeginInitialization() end

function ServerSystemRelight.OnBeginConfiguration() end

function ServerSystemRelight.OnLoadAssets() end

function ServerSystemRelight.OnFinalizeAssets() end

function ServerSystemRelight.OnBeginModsAndConfigReady() end

function ServerSystemRelight.OnBeginWorldReady() end

function ServerSystemRelight.OnSeperateThreadShutDown() end

function ServerSystemRelight.OnBeginRunGame() end

function ServerSystemRelight.OnBeginShutdown() end

---@param player ServerPlayer
function ServerSystemRelight.OnPlayerJoin(player) end

---@param player ServerPlayer
function ServerSystemRelight.OnPlayerSwitchGameMode(player) end

---@param player ServerPlayer
function ServerSystemRelight.OnPlayerDisconnect(player) end

function ServerSystemRelight.OnServerPause() end

function ServerSystemRelight.OnServerResume() end

---@param player ServerPlayer
function ServerSystemRelight.OnPlayerJoinPost(player) end

function ServerSystemRelight.Dispose() end

---@return userdata
function ServerSystemRelight.GetType() end

---@return string
function ServerSystemRelight.ToString() end

---@param obj userdata
---@return boolean
function ServerSystemRelight.Equals(obj) end

---@return number
function ServerSystemRelight.GetHashCode() end


