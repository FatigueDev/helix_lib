---@meta

---@class WorldGenThreadDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
WorldGenThreadDelegate = {}

---@param object userdata
---@param method IntPtr
---@return WorldGenThreadDelegate
function WorldGenThreadDelegate.ctor(object, method) end

---@param chunkProvider IChunkProviderThread
function WorldGenThreadDelegate.Invoke(chunkProvider) end

---@param chunkProvider IChunkProviderThread
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function WorldGenThreadDelegate.BeginInvoke(chunkProvider, callback, object) end

---@param result IAsyncResult
function WorldGenThreadDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function WorldGenThreadDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function WorldGenThreadDelegate.Equals(obj) end

---@return function
function WorldGenThreadDelegate.GetInvocationList() end

---@return number
function WorldGenThreadDelegate.GetHashCode() end

---@return userdata
function WorldGenThreadDelegate.get_Target() end

---@return userdata
function WorldGenThreadDelegate.Clone() end

---@param args userdata
---@return userdata
function WorldGenThreadDelegate.DynamicInvoke(args) end

---@return function
function WorldGenThreadDelegate.get_Method() end

---@return userdata
function WorldGenThreadDelegate.GetType() end

---@return string
function WorldGenThreadDelegate.ToString() end


