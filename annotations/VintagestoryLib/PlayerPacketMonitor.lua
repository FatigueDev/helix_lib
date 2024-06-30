---@meta

---@class PlayerPacketMonitor: ServerSystem, ServerSystem
---@field millisecondsSinceStart number
---@field millisecondsSinceStartSeperateThread number
---@field ServerMonitorConfig nil
PlayerPacketMonitor = {}

---@param server ServerMain
---@return PlayerPacketMonitor
function PlayerPacketMonitor.ctor(server) end

---@return number
function PlayerPacketMonitor.GetUpdateInterval() end

---@param clientid number
---@return boolean
function PlayerPacketMonitor.RemoveMonitorClient(clientid) end

---@param dt number
function PlayerPacketMonitor.OnServerTick(dt) end

---@param clientId number
---@param packet Packet_Client
---@return boolean
function PlayerPacketMonitor.CheckPacket(clientId, packet) end

function PlayerPacketMonitor.SaveConfig() end

function PlayerPacketMonitor.OnSeparateThreadTick() end

---@param dt number
function PlayerPacketMonitor.OnSeperateThreadTick(dt) end

function PlayerPacketMonitor.OnRestart() end

function PlayerPacketMonitor.OnBeginInitialization() end

function PlayerPacketMonitor.OnBeginConfiguration() end

function PlayerPacketMonitor.OnLoadAssets() end

function PlayerPacketMonitor.OnFinalizeAssets() end

function PlayerPacketMonitor.OnBeginModsAndConfigReady() end

---@param savegame SaveGame
function PlayerPacketMonitor.OnBeginGameReady(savegame) end

function PlayerPacketMonitor.OnBeginWorldReady() end

function PlayerPacketMonitor.OnSeperateThreadShutDown() end

function PlayerPacketMonitor.OnBeginRunGame() end

function PlayerPacketMonitor.OnBeginShutdown() end

---@param player ServerPlayer
function PlayerPacketMonitor.OnPlayerJoin(player) end

---@param player ServerPlayer
function PlayerPacketMonitor.OnPlayerSwitchGameMode(player) end

---@param player ServerPlayer
function PlayerPacketMonitor.OnPlayerDisconnect(player) end

function PlayerPacketMonitor.OnServerPause() end

function PlayerPacketMonitor.OnServerResume() end

---@param player ServerPlayer
function PlayerPacketMonitor.OnPlayerJoinPost(player) end

function PlayerPacketMonitor.Dispose() end

---@return userdata
function PlayerPacketMonitor.GetType() end

---@return string
function PlayerPacketMonitor.ToString() end

---@param obj userdata
---@return boolean
function PlayerPacketMonitor.Equals(obj) end

---@return number
function PlayerPacketMonitor.GetHashCode() end


