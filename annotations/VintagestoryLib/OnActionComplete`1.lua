---@meta

---@class OnActionComplete`1: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
OnActionComplete`1 = {}

---@param object userdata
---@param method IntPtr
---@return OnActionComplete`1
function OnActionComplete`1.ctor(object, method) end

---@param reqStatus EnumAuthServerResponse
---@param response T
function OnActionComplete`1.Invoke(reqStatus, response) end

---@param reqStatus EnumAuthServerResponse
---@param response T
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function OnActionComplete`1.BeginInvoke(reqStatus, response, callback, object) end

---@param result IAsyncResult
function OnActionComplete`1.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function OnActionComplete`1.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function OnActionComplete`1.Equals(obj) end

---@return function
function OnActionComplete`1.GetInvocationList() end

---@return number
function OnActionComplete`1.GetHashCode() end

---@return userdata
function OnActionComplete`1.get_Target() end

---@return userdata
function OnActionComplete`1.Clone() end

---@param args userdata
---@return userdata
function OnActionComplete`1.DynamicInvoke(args) end

---@return function
function OnActionComplete`1.get_Method() end

---@return userdata
function OnActionComplete`1.GetType() end

---@return string
function OnActionComplete`1.ToString() end


