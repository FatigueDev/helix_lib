---@meta

---@class ServerSystemBlockIdRemapper: ServerSystem, ServerSystem
---@field millisecondsSinceStart number
---@field millisecondsSinceStartSeperateThread number
ServerSystemBlockIdRemapper = {}

---@param server ServerMain
---@return ServerSystemBlockIdRemapper
function ServerSystemBlockIdRemapper.ctor(server) end

---@return table
function ServerSystemBlockIdRemapper.LoadStoredBlockCodesById() end

---@param storedBlockCodesById table
function ServerSystemBlockIdRemapper.StoreBlockCodesById(storedBlockCodesById) end

---@return number
function ServerSystemBlockIdRemapper.GetUpdateInterval() end

---@param dt number
function ServerSystemBlockIdRemapper.OnServerTick(dt) end

function ServerSystemBlockIdRemapper.OnSeparateThreadTick() end

---@param dt number
function ServerSystemBlockIdRemapper.OnSeperateThreadTick(dt) end

function ServerSystemBlockIdRemapper.OnRestart() end

function ServerSystemBlockIdRemapper.OnBeginInitialization() end

function ServerSystemBlockIdRemapper.OnBeginConfiguration() end

function ServerSystemBlockIdRemapper.OnLoadAssets() end

function ServerSystemBlockIdRemapper.OnFinalizeAssets() end

function ServerSystemBlockIdRemapper.OnBeginModsAndConfigReady() end

---@param savegame SaveGame
function ServerSystemBlockIdRemapper.OnBeginGameReady(savegame) end

function ServerSystemBlockIdRemapper.OnBeginWorldReady() end

function ServerSystemBlockIdRemapper.OnSeperateThreadShutDown() end

function ServerSystemBlockIdRemapper.OnBeginRunGame() end

function ServerSystemBlockIdRemapper.OnBeginShutdown() end

---@param player ServerPlayer
function ServerSystemBlockIdRemapper.OnPlayerJoin(player) end

---@param player ServerPlayer
function ServerSystemBlockIdRemapper.OnPlayerSwitchGameMode(player) end

---@param player ServerPlayer
function ServerSystemBlockIdRemapper.OnPlayerDisconnect(player) end

function ServerSystemBlockIdRemapper.OnServerPause() end

function ServerSystemBlockIdRemapper.OnServerResume() end

---@param player ServerPlayer
function ServerSystemBlockIdRemapper.OnPlayerJoinPost(player) end

function ServerSystemBlockIdRemapper.Dispose() end

---@return userdata
function ServerSystemBlockIdRemapper.GetType() end

---@return string
function ServerSystemBlockIdRemapper.ToString() end

---@param obj userdata
---@return boolean
function ServerSystemBlockIdRemapper.Equals(obj) end

---@return number
function ServerSystemBlockIdRemapper.GetHashCode() end


