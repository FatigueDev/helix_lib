---@meta

-- Triggered when the server loaded a chunk column from disk or generated a new one
---@class ChunkColumnLoadedDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
ChunkColumnLoadedDelegate = {}

---@param object userdata
---@param method IntPtr
---@return ChunkColumnLoadedDelegate
function ChunkColumnLoadedDelegate.ctor(object, method) end

---@param chunkCoord Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@param chunks IWorldChunk[]
function ChunkColumnLoadedDelegate.Invoke(chunkCoord, chunks) end

---@param chunkCoord Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@param chunks IWorldChunk[]
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function ChunkColumnLoadedDelegate.BeginInvoke(chunkCoord, chunks, callback, object) end

---@param result IAsyncResult
function ChunkColumnLoadedDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function ChunkColumnLoadedDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function ChunkColumnLoadedDelegate.Equals(obj) end

---@return function
function ChunkColumnLoadedDelegate.GetInvocationList() end

---@return number
function ChunkColumnLoadedDelegate.GetHashCode() end

---@return userdata
function ChunkColumnLoadedDelegate.get_Target() end

---@return userdata
function ChunkColumnLoadedDelegate.Clone() end

---@param args userdata
---@return userdata
function ChunkColumnLoadedDelegate.DynamicInvoke(args) end

---@return function
function ChunkColumnLoadedDelegate.get_Method() end

---@return userdata
function ChunkColumnLoadedDelegate.GetType() end

---@return string
function ChunkColumnLoadedDelegate.ToString() end


