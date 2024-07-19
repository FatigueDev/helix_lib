---@meta

---@class ServerSystemItemIdRemapper: ServerSystem, ServerSystem
---@field millisecondsSinceStart number
---@field millisecondsSinceStartSeperateThread number
ServerSystemItemIdRemapper = {}

---@param server ServerMain
---@return ServerSystemItemIdRemapper
function ServerSystemItemIdRemapper.ctor(server) end

function ServerSystemItemIdRemapper.RemapItems() end

---@return table
function ServerSystemItemIdRemapper.LoadStoredItemCodesById() end

---@param storedItemCodesById table
function ServerSystemItemIdRemapper.StoreItemCodesById(storedItemCodesById) end

---@return number
function ServerSystemItemIdRemapper.GetUpdateInterval() end

---@param dt number
function ServerSystemItemIdRemapper.OnServerTick(dt) end

function ServerSystemItemIdRemapper.OnSeparateThreadTick() end

---@param dt number
function ServerSystemItemIdRemapper.OnSeperateThreadTick(dt) end

function ServerSystemItemIdRemapper.OnRestart() end

function ServerSystemItemIdRemapper.OnBeginInitialization() end

function ServerSystemItemIdRemapper.OnBeginConfiguration() end

function ServerSystemItemIdRemapper.OnLoadAssets() end

function ServerSystemItemIdRemapper.OnFinalizeAssets() end

function ServerSystemItemIdRemapper.OnBeginModsAndConfigReady() end

---@param savegame SaveGame
function ServerSystemItemIdRemapper.OnBeginGameReady(savegame) end

function ServerSystemItemIdRemapper.OnBeginWorldReady() end

function ServerSystemItemIdRemapper.OnSeperateThreadShutDown() end

function ServerSystemItemIdRemapper.OnBeginRunGame() end

function ServerSystemItemIdRemapper.OnBeginShutdown() end

---@param player ServerPlayer
function ServerSystemItemIdRemapper.OnPlayerJoin(player) end

---@param player ServerPlayer
function ServerSystemItemIdRemapper.OnPlayerSwitchGameMode(player) end

---@param player ServerPlayer
function ServerSystemItemIdRemapper.OnPlayerDisconnect(player) end

function ServerSystemItemIdRemapper.OnServerPause() end

function ServerSystemItemIdRemapper.OnServerResume() end

---@param player ServerPlayer
function ServerSystemItemIdRemapper.OnPlayerJoinPost(player) end

function ServerSystemItemIdRemapper.Dispose() end

---@return userdata
function ServerSystemItemIdRemapper.GetType() end

---@return string
function ServerSystemItemIdRemapper.ToString() end

---@param obj userdata
---@return boolean
function ServerSystemItemIdRemapper.Equals(obj) end

---@return number
function ServerSystemItemIdRemapper.GetHashCode() end


