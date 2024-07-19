---@meta

---@class EntityFilter: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
EntityFilter = {}

---@param object userdata
---@param method IntPtr
---@return EntityFilter
function EntityFilter.ctor(object, method) end

---@param entity Entity The basic class for all entities in the game
---@return boolean
function EntityFilter.Invoke(entity) end

---@param entity Entity The basic class for all entities in the game
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function EntityFilter.BeginInvoke(entity, callback, object) end

---@param result IAsyncResult
---@return boolean
function EntityFilter.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function EntityFilter.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function EntityFilter.Equals(obj) end

---@return function
function EntityFilter.GetInvocationList() end

---@return number
function EntityFilter.GetHashCode() end

---@return userdata
function EntityFilter.get_Target() end

---@return userdata
function EntityFilter.Clone() end

---@param args userdata
---@return userdata
function EntityFilter.DynamicInvoke(args) end

---@return function
function EntityFilter.get_Method() end

---@return userdata
function EntityFilter.GetType() end

---@return string
function EntityFilter.ToString() end


