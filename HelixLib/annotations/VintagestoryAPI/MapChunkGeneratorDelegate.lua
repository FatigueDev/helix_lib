---@meta

---@class MapChunkGeneratorDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
MapChunkGeneratorDelegate = {}

---@param object userdata
---@param method IntPtr
---@return MapChunkGeneratorDelegate
function MapChunkGeneratorDelegate.ctor(object, method) end

---@param mapChunk IMapChunk Holds 2 dimensional data for one chunk column
---@param chunkX number
---@param chunkZ number
function MapChunkGeneratorDelegate.Invoke(mapChunk, chunkX, chunkZ) end

---@param mapChunk IMapChunk Holds 2 dimensional data for one chunk column
---@param chunkX number
---@param chunkZ number
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function MapChunkGeneratorDelegate.BeginInvoke(mapChunk, chunkX, chunkZ, callback, object) end

---@param result IAsyncResult
function MapChunkGeneratorDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function MapChunkGeneratorDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function MapChunkGeneratorDelegate.Equals(obj) end

---@return function
function MapChunkGeneratorDelegate.GetInvocationList() end

---@return number
function MapChunkGeneratorDelegate.GetHashCode() end

---@return userdata
function MapChunkGeneratorDelegate.get_Target() end

---@return userdata
function MapChunkGeneratorDelegate.Clone() end

---@param args userdata
---@return userdata
function MapChunkGeneratorDelegate.DynamicInvoke(args) end

---@return function
function MapChunkGeneratorDelegate.get_Method() end

---@return userdata
function MapChunkGeneratorDelegate.GetType() end

---@return string
function MapChunkGeneratorDelegate.ToString() end


