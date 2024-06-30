---@meta

---@class ChunkServerThread: ServerThread, ServerThread, IChunkProvider
---@field Logger ILogger
---@field Alive boolean
---@field runOffThreadSaveNow boolean
---@field peekMode boolean
---@field additionalWorldGenThreadsCount number
---@field ShouldPause boolean
---@field serversystems ServerSystem[]
ChunkServerThread = {}

---@param server ServerMain
---@param threadname string
---@param cancellationToken CancellationToken
---@return ChunkServerThread
function ChunkServerThread.ctor(server, threadname, cancellationToken) end

---@return ILogger # Interface to the client's and server's event, debug and error logging utilty.
function ChunkServerThread.get_Logger() end

---@param posX number
---@param posY number
---@param posZ number
---@return ServerChunk
function ChunkServerThread.GetGeneratingChunkAtPos(posX, posY, posZ) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return ServerChunk
function ChunkServerThread.GetGeneratingChunkAtPos(pos) end

---@param posX number
---@param posZ number
---@return ChunkColumnLoadRequest
function ChunkServerThread.GetChunkRequestAtPos(posX, posZ) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@return number
function ChunkServerThread.ChunkIndex3D(chunkX, chunkY, chunkZ) end

---@return boolean
function ChunkServerThread.get_Alive() end

function ChunkServerThread.Process() end

function ChunkServerThread.ShutDown() end

---@return boolean
function ChunkServerThread.Update() end

function ChunkServerThread.OnBeginInitialization() end

function ChunkServerThread.OnBeginConfiguration() end

function ChunkServerThread.OnPrepareAssets() end

function ChunkServerThread.OnBeginLoadGamePre() end

---@param savegame SaveGame
function ChunkServerThread.OnBeginLoadGame(savegame) end

function ChunkServerThread.OnBeginRunGame() end

function ChunkServerThread.OnBeginShutdown() end

---@return userdata
function ChunkServerThread.GetType() end

---@return string
function ChunkServerThread.ToString() end

---@param obj userdata
---@return boolean
function ChunkServerThread.Equals(obj) end

---@return number
function ChunkServerThread.GetHashCode() end


