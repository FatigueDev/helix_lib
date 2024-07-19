---@meta

---@class EntityDespawnDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
EntityDespawnDelegate = {}

---@param object userdata
---@param method IntPtr
---@return EntityDespawnDelegate
function EntityDespawnDelegate.ctor(object, method) end

---@param entity Entity The basic class for all entities in the game
---@param reasonData EntityDespawnData
function EntityDespawnDelegate.Invoke(entity, reasonData) end

---@param entity Entity The basic class for all entities in the game
---@param reasonData EntityDespawnData
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function EntityDespawnDelegate.BeginInvoke(entity, reasonData, callback, object) end

---@param result IAsyncResult
function EntityDespawnDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function EntityDespawnDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function EntityDespawnDelegate.Equals(obj) end

---@return function
function EntityDespawnDelegate.GetInvocationList() end

---@return number
function EntityDespawnDelegate.GetHashCode() end

---@return userdata
function EntityDespawnDelegate.get_Target() end

---@return userdata
function EntityDespawnDelegate.Clone() end

---@param args userdata
---@return userdata
function EntityDespawnDelegate.DynamicInvoke(args) end

---@return function
function EntityDespawnDelegate.get_Method() end

---@return userdata
function EntityDespawnDelegate.GetType() end

---@return string
function EntityDespawnDelegate.ToString() end


