---@meta

---@class TrySpawnEntityDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
TrySpawnEntityDelegate = {}

---@param object userdata
---@param method IntPtr
---@return TrySpawnEntityDelegate
function TrySpawnEntityDelegate.ctor(object, method) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param properties EntityProperties&
---@param spawnPosition Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param herdId number
---@return boolean
function TrySpawnEntityDelegate.Invoke(blockAccessor, properties, spawnPosition, herdId) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param properties EntityProperties&
---@param spawnPosition Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param herdId number
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function TrySpawnEntityDelegate.BeginInvoke(blockAccessor, properties, spawnPosition, herdId, callback, object) end

---@param properties EntityProperties&
---@param result IAsyncResult
---@return boolean
function TrySpawnEntityDelegate.EndInvoke(properties, result) end

---@param info SerializationInfo
---@param context StreamingContext
function TrySpawnEntityDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function TrySpawnEntityDelegate.Equals(obj) end

---@return function
function TrySpawnEntityDelegate.GetInvocationList() end

---@return number
function TrySpawnEntityDelegate.GetHashCode() end

---@return userdata
function TrySpawnEntityDelegate.get_Target() end

---@return userdata
function TrySpawnEntityDelegate.Clone() end

---@param args userdata
---@return userdata
function TrySpawnEntityDelegate.DynamicInvoke(args) end

---@return function
function TrySpawnEntityDelegate.get_Method() end

---@return userdata
function TrySpawnEntityDelegate.GetType() end

---@return string
function TrySpawnEntityDelegate.ToString() end


