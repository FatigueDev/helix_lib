---@meta

---@class CanSpawnNearbyDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
CanSpawnNearbyDelegate = {}

---@param object userdata
---@param method IntPtr
---@return CanSpawnNearbyDelegate
function CanSpawnNearbyDelegate.ctor(object, method) end

---@param type EntityProperties
---@param spawnPosition Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param sc RuntimeSpawnConditions
---@return boolean
function CanSpawnNearbyDelegate.Invoke(type, spawnPosition, sc) end

---@param type EntityProperties
---@param spawnPosition Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param sc RuntimeSpawnConditions
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function CanSpawnNearbyDelegate.BeginInvoke(type, spawnPosition, sc, callback, object) end

---@param result IAsyncResult
---@return boolean
function CanSpawnNearbyDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function CanSpawnNearbyDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function CanSpawnNearbyDelegate.Equals(obj) end

---@return function
function CanSpawnNearbyDelegate.GetInvocationList() end

---@return number
function CanSpawnNearbyDelegate.GetHashCode() end

---@return userdata
function CanSpawnNearbyDelegate.get_Target() end

---@return userdata
function CanSpawnNearbyDelegate.Clone() end

---@param args userdata
---@return userdata
function CanSpawnNearbyDelegate.DynamicInvoke(args) end

---@return function
function CanSpawnNearbyDelegate.get_Method() end

---@return userdata
function CanSpawnNearbyDelegate.GetType() end

---@return string
function CanSpawnNearbyDelegate.ToString() end


