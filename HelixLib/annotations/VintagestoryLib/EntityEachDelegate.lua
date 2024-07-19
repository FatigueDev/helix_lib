---@meta

---@class EntityEachDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
EntityEachDelegate = {}

---@param object userdata
---@param method IntPtr
---@return EntityEachDelegate
function EntityEachDelegate.ctor(object, method) end

---@param entity Entity The basic class for all entities in the game
---@return TextCommandResult
function EntityEachDelegate.Invoke(entity) end

---@param entity Entity The basic class for all entities in the game
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function EntityEachDelegate.BeginInvoke(entity, callback, object) end

---@param result IAsyncResult
---@return TextCommandResult
function EntityEachDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function EntityEachDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function EntityEachDelegate.Equals(obj) end

---@return function
function EntityEachDelegate.GetInvocationList() end

---@return number
function EntityEachDelegate.GetHashCode() end

---@return userdata
function EntityEachDelegate.get_Target() end

---@return userdata
function EntityEachDelegate.Clone() end

---@param args userdata
---@return userdata
function EntityEachDelegate.DynamicInvoke(args) end

---@return function
function EntityEachDelegate.get_Method() end

---@return userdata
function EntityEachDelegate.GetType() end

---@return string
function EntityEachDelegate.ToString() end


