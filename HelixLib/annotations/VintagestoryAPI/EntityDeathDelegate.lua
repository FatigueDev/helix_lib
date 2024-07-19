---@meta

---@class EntityDeathDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
EntityDeathDelegate = {}

---@param object userdata
---@param method IntPtr
---@return EntityDeathDelegate
function EntityDeathDelegate.ctor(object, method) end

---@param entity Entity The basic class for all entities in the game
---@param damageSource DamageSource
function EntityDeathDelegate.Invoke(entity, damageSource) end

---@param entity Entity The basic class for all entities in the game
---@param damageSource DamageSource
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function EntityDeathDelegate.BeginInvoke(entity, damageSource, callback, object) end

---@param result IAsyncResult
function EntityDeathDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function EntityDeathDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function EntityDeathDelegate.Equals(obj) end

---@return function
function EntityDeathDelegate.GetInvocationList() end

---@return number
function EntityDeathDelegate.GetHashCode() end

---@return userdata
function EntityDeathDelegate.get_Target() end

---@return userdata
function EntityDeathDelegate.Clone() end

---@param args userdata
---@return userdata
function EntityDeathDelegate.DynamicInvoke(args) end

---@return function
function EntityDeathDelegate.get_Method() end

---@return userdata
function EntityDeathDelegate.GetType() end

---@return string
function EntityDeathDelegate.ToString() end


