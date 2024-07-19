---@meta

---@class ConnectedClient
---@field ServerData ServerPlayerData
---@field Entityplayer EntityPlayer
---@field WorldData ServerWorldPlayerData
---@field Position EntityPos
---@field ChunkPos BlockPos
---@field PlayerName string
---@field IsLocalConnection boolean
---@field IsPlayingClient boolean
---@field ServerAssetsSent boolean
---@field State EnumClientState
---@field LastChatMessageTotalMs number
---@field Socket NetConnection
---@field AuditFlySuspicion number
---@field AuditFlySuspicionPrintedTotalMs number
---@field LastAuditFlySuspicionTotalMs number
---@field TotalFlySuspicions number
---@field TotalTeleSupicions number
---@field LoginToken string
---@field previousControls EntityControls
---@field Player ServerPlayer
---@field SentPlayerUid string
---@field IsNewEntityPlayer boolean
---@field stopSent boolean
---@field MillisecsAtConnect number
---@field ChunkSent HashSet`1
---@field MapChunkSent HashSet`1
---@field MapRegionSent HashSet`1
---@field CurrentChunkSentRadius number
---@field IsInventoryDirty boolean
---@field IsPlayerStatsDirty boolean
---@field TrackedEntities table
---@field Id number
---@field forceSendChunks HashSet`1
---@field forceSendMapChunks HashSet`1
---@field IsQueryClient boolean
---@field FromSocketListener NetServer
---@field Received table
---@field Ping Ping
---@field LastPing number
---@field FallbackPlayerName string
ConnectedClient = {}

---@param clientId number
---@return ConnectedClient
function ConnectedClient.ctor(clientId) end

---@return ServerPlayerData
function ConnectedClient.get_ServerData() end

---@return EntityPlayer
function ConnectedClient.get_Entityplayer() end

---@return ServerWorldPlayerData
function ConnectedClient.get_WorldData() end

---@param value ServerWorldPlayerData
function ConnectedClient.set_WorldData(value) end

---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function ConnectedClient.get_Position() end

---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function ConnectedClient.get_ChunkPos() end

---@return string
function ConnectedClient.get_PlayerName() end

---@return boolean
function ConnectedClient.get_IsLocalConnection() end

---@return boolean
function ConnectedClient.get_IsPlayingClient() end

---@return boolean
function ConnectedClient.get_ServerAssetsSent() end

---@param value boolean
function ConnectedClient.set_ServerAssetsSent(value) end

---@return EnumClientState # The current connection state of a player thats currently connecting to the server
function ConnectedClient.get_State() end

---@param value EnumClientState The current connection state of a player thats currently connecting to the server
function ConnectedClient.set_State(value) end

---@return number
function ConnectedClient.get_LastChatMessageTotalMs() end

---@param value number
function ConnectedClient.set_LastChatMessageTotalMs(value) end

---@return NetConnection
function ConnectedClient.get_Socket() end

---@param value NetConnection
function ConnectedClient.set_Socket(value) end

---@param server ServerMain
---@param playername string
---@param playerUid string
function ConnectedClient.LoadOrCreatePlayerData(server, playername, playerUid) end

---@param index3d number
---@return boolean
function ConnectedClient.DidSendChunk(index3d) end

---@param index2d number
---@return boolean
function ConnectedClient.DidSendMapChunk(index2d) end

---@param index2d number
---@return boolean
function ConnectedClient.DidSendMapRegion(index2d) end

---@param index2d number
function ConnectedClient.SetMapRegionSent(index2d) end

---@param index3d number
function ConnectedClient.SetChunkSent(index3d) end

---@param index2d number
function ConnectedClient.SetMapChunkSent(index2d) end

---@param index2d number
function ConnectedClient.RemoveMapRegionSent(index2d) end

---@param index3d number
function ConnectedClient.RemoveChunkSent(index3d) end

---@param index2d number
function ConnectedClient.RemoveMapChunkSent(index2d) end

---@return string
function ConnectedClient.ToString() end

function ConnectedClient.CloseConnection() end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function ConnectedClient.ShouldReceiveUpdatesForPos(pos) end

---@return userdata
function ConnectedClient.GetType() end

---@param obj userdata
---@return boolean
function ConnectedClient.Equals(obj) end

---@return number
function ConnectedClient.GetHashCode() end


