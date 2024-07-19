---@meta

---@class ServerConsoleClient: ConnectedClient, ConnectedClient
---@field ServerData ServerPlayerData
---@field IsPlayingClient boolean
---@field Entityplayer EntityPlayer
---@field WorldData ServerWorldPlayerData
---@field Position EntityPos
---@field ChunkPos BlockPos
---@field PlayerName string
---@field IsLocalConnection boolean
---@field ServerAssetsSent boolean
---@field State EnumClientState
---@field LastChatMessageTotalMs number
---@field Socket NetConnection
---@field serverdata ServerPlayerData
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
ServerConsoleClient = {}

---@param clientId number
---@return ServerConsoleClient
function ServerConsoleClient.ctor(clientId) end

---@return ServerPlayerData
function ServerConsoleClient.get_ServerData() end

---@return boolean
function ServerConsoleClient.get_IsPlayingClient() end

---@return string
function ServerConsoleClient.ToString() end

---@return EntityPlayer
function ServerConsoleClient.get_Entityplayer() end

---@return ServerWorldPlayerData
function ServerConsoleClient.get_WorldData() end

---@param value ServerWorldPlayerData
function ServerConsoleClient.set_WorldData(value) end

---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function ServerConsoleClient.get_Position() end

---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function ServerConsoleClient.get_ChunkPos() end

---@return string
function ServerConsoleClient.get_PlayerName() end

---@return boolean
function ServerConsoleClient.get_IsLocalConnection() end

---@return boolean
function ServerConsoleClient.get_ServerAssetsSent() end

---@param value boolean
function ServerConsoleClient.set_ServerAssetsSent(value) end

---@return EnumClientState # The current connection state of a player thats currently connecting to the server
function ServerConsoleClient.get_State() end

---@param value EnumClientState The current connection state of a player thats currently connecting to the server
function ServerConsoleClient.set_State(value) end

---@return number
function ServerConsoleClient.get_LastChatMessageTotalMs() end

---@param value number
function ServerConsoleClient.set_LastChatMessageTotalMs(value) end

---@return NetConnection
function ServerConsoleClient.get_Socket() end

---@param value NetConnection
function ServerConsoleClient.set_Socket(value) end

---@param server ServerMain
---@param playername string
---@param playerUid string
function ServerConsoleClient.LoadOrCreatePlayerData(server, playername, playerUid) end

---@param index3d number
---@return boolean
function ServerConsoleClient.DidSendChunk(index3d) end

---@param index2d number
---@return boolean
function ServerConsoleClient.DidSendMapChunk(index2d) end

---@param index2d number
---@return boolean
function ServerConsoleClient.DidSendMapRegion(index2d) end

---@param index2d number
function ServerConsoleClient.SetMapRegionSent(index2d) end

---@param index3d number
function ServerConsoleClient.SetChunkSent(index3d) end

---@param index2d number
function ServerConsoleClient.SetMapChunkSent(index2d) end

---@param index2d number
function ServerConsoleClient.RemoveMapRegionSent(index2d) end

---@param index3d number
function ServerConsoleClient.RemoveChunkSent(index3d) end

---@param index2d number
function ServerConsoleClient.RemoveMapChunkSent(index2d) end

function ServerConsoleClient.CloseConnection() end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function ServerConsoleClient.ShouldReceiveUpdatesForPos(pos) end

---@return userdata
function ServerConsoleClient.GetType() end

---@param obj userdata
---@return boolean
function ServerConsoleClient.Equals(obj) end

---@return number
function ServerConsoleClient.GetHashCode() end


