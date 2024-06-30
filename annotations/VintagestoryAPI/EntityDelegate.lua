---@meta

---@class EntityDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
EntityDelegate = {}

---@param object userdata
---@param method IntPtr
---@return EntityDelegate
function EntityDelegate.ctor(object, method) end

---@param entity Entity The basic class for all entities in the game
function EntityDelegate.Invoke(entity) end

---@param entity Entity The basic class for all entities in the game
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function EntityDelegate.BeginInvoke(entity, callback, object) end

---@param result IAsyncResult
function EntityDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function EntityDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function EntityDelegate.Equals(obj) end

---@return function
function EntityDelegate.GetInvocationList() end

---@return number
function EntityDelegate.GetHashCode() end

---@return userdata
function EntityDelegate.get_Target() end

---@return userdata
function EntityDelegate.Clone() end

---@param args userdata
---@return userdata
function EntityDelegate.DynamicInvoke(args) end

---@return function
function EntityDelegate.get_Method() end

---@return userdata
function EntityDelegate.GetType() end

---@return string
function EntityDelegate.ToString() end


