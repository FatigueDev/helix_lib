---@meta

---@class ChunkLoadedDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
ChunkLoadedDelegate = {}

---@param object userdata
---@param method IntPtr
---@return ChunkLoadedDelegate
function ChunkLoadedDelegate.ctor(object, method) end

---@param chunkpos Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function ChunkLoadedDelegate.Invoke(chunkpos) end

---@param chunkpos Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function ChunkLoadedDelegate.BeginInvoke(chunkpos, callback, object) end

---@param result IAsyncResult
function ChunkLoadedDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function ChunkLoadedDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function ChunkLoadedDelegate.Equals(obj) end

---@return function
function ChunkLoadedDelegate.GetInvocationList() end

---@return number
function ChunkLoadedDelegate.GetHashCode() end

---@return userdata
function ChunkLoadedDelegate.get_Target() end

---@return userdata
function ChunkLoadedDelegate.Clone() end

---@param args userdata
---@return userdata
function ChunkLoadedDelegate.DynamicInvoke(args) end

---@return function
function ChunkLoadedDelegate.get_Method() end

---@return userdata
function ChunkLoadedDelegate.GetType() end

---@return string
function ChunkLoadedDelegate.ToString() end


