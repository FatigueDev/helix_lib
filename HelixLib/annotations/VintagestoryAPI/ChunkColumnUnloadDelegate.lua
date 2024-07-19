---@meta

-- Triggered just before a chunk column gets unloaded
---@class ChunkColumnUnloadDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
ChunkColumnUnloadDelegate = {}

---@param object userdata
---@param method IntPtr
---@return ChunkColumnUnloadDelegate
function ChunkColumnUnloadDelegate.ctor(object, method) end

---@param chunkCoord Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ChunkColumnUnloadDelegate.Invoke(chunkCoord) end

---@param chunkCoord Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function ChunkColumnUnloadDelegate.BeginInvoke(chunkCoord, callback, object) end

---@param result IAsyncResult
function ChunkColumnUnloadDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function ChunkColumnUnloadDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function ChunkColumnUnloadDelegate.Equals(obj) end

---@return function
function ChunkColumnUnloadDelegate.GetInvocationList() end

---@return number
function ChunkColumnUnloadDelegate.GetHashCode() end

---@return userdata
function ChunkColumnUnloadDelegate.get_Target() end

---@return userdata
function ChunkColumnUnloadDelegate.Clone() end

---@param args userdata
---@return userdata
function ChunkColumnUnloadDelegate.DynamicInvoke(args) end

---@return function
function ChunkColumnUnloadDelegate.get_Method() end

---@return userdata
function ChunkColumnUnloadDelegate.GetType() end

---@return string
function ChunkColumnUnloadDelegate.ToString() end


