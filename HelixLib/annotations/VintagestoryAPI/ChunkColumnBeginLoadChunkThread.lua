---@meta

-- Triggered immediately when the server loads a chunk column from disk or generates a new one, in the SupplyChunks thread (not the main thread)
---@class ChunkColumnBeginLoadChunkThread: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
ChunkColumnBeginLoadChunkThread = {}

---@param object userdata
---@param method IntPtr
---@return ChunkColumnBeginLoadChunkThread
function ChunkColumnBeginLoadChunkThread.ctor(object, method) end

---@param mapChunk IServerMapChunk
---@param chunkX number
---@param chunkZ number
---@param chunks IWorldChunk[]
function ChunkColumnBeginLoadChunkThread.Invoke(mapChunk, chunkX, chunkZ, chunks) end

---@param mapChunk IServerMapChunk
---@param chunkX number
---@param chunkZ number
---@param chunks IWorldChunk[]
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function ChunkColumnBeginLoadChunkThread.BeginInvoke(mapChunk, chunkX, chunkZ, chunks, callback, object) end

---@param result IAsyncResult
function ChunkColumnBeginLoadChunkThread.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function ChunkColumnBeginLoadChunkThread.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function ChunkColumnBeginLoadChunkThread.Equals(obj) end

---@return function
function ChunkColumnBeginLoadChunkThread.GetInvocationList() end

---@return number
function ChunkColumnBeginLoadChunkThread.GetHashCode() end

---@return userdata
function ChunkColumnBeginLoadChunkThread.get_Target() end

---@return userdata
function ChunkColumnBeginLoadChunkThread.Clone() end

---@param args userdata
---@return userdata
function ChunkColumnBeginLoadChunkThread.DynamicInvoke(args) end

---@return function
function ChunkColumnBeginLoadChunkThread.get_Method() end

---@return userdata
function ChunkColumnBeginLoadChunkThread.GetType() end

---@return string
function ChunkColumnBeginLoadChunkThread.ToString() end


