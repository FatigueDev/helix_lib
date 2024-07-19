---@meta

-- For handling dirty chunks
---@class ChunkDirtyDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
ChunkDirtyDelegate = {}

---@param object userdata
---@param method IntPtr
---@return ChunkDirtyDelegate
function ChunkDirtyDelegate.ctor(object, method) end

---@param chunkCoord Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@param chunk IWorldChunk
---@param reason EnumChunkDirtyReason
function ChunkDirtyDelegate.Invoke(chunkCoord, chunk, reason) end

---@param chunkCoord Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@param chunk IWorldChunk
---@param reason EnumChunkDirtyReason
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function ChunkDirtyDelegate.BeginInvoke(chunkCoord, chunk, reason, callback, object) end

---@param result IAsyncResult
function ChunkDirtyDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function ChunkDirtyDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function ChunkDirtyDelegate.Equals(obj) end

---@return function
function ChunkDirtyDelegate.GetInvocationList() end

---@return number
function ChunkDirtyDelegate.GetHashCode() end

---@return userdata
function ChunkDirtyDelegate.get_Target() end

---@return userdata
function ChunkDirtyDelegate.Clone() end

---@param args userdata
---@return userdata
function ChunkDirtyDelegate.DynamicInvoke(args) end

---@return function
function ChunkDirtyDelegate.get_Method() end

---@return userdata
function ChunkDirtyDelegate.GetType() end

---@return string
function ChunkDirtyDelegate.ToString() end


