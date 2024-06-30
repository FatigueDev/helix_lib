---@meta

---@class OnSrvActionComplete`1: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
OnSrvActionComplete`1 = {}

---@param object userdata
---@param method IntPtr
---@return OnSrvActionComplete`1
function OnSrvActionComplete`1.ctor(object, method) end

---@param reqStatus EnumAuthServerResponse
---@param response T
function OnSrvActionComplete`1.Invoke(reqStatus, response) end

---@param reqStatus EnumAuthServerResponse
---@param response T
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function OnSrvActionComplete`1.BeginInvoke(reqStatus, response, callback, object) end

---@param result IAsyncResult
function OnSrvActionComplete`1.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function OnSrvActionComplete`1.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function OnSrvActionComplete`1.Equals(obj) end

---@return function
function OnSrvActionComplete`1.GetInvocationList() end

---@return number
function OnSrvActionComplete`1.GetHashCode() end

---@return userdata
function OnSrvActionComplete`1.get_Target() end

---@return userdata
function OnSrvActionComplete`1.Clone() end

---@param args userdata
---@return userdata
function OnSrvActionComplete`1.DynamicInvoke(args) end

---@return function
function OnSrvActionComplete`1.get_Method() end

---@return userdata
function OnSrvActionComplete`1.GetType() end

---@return string
function OnSrvActionComplete`1.ToString() end


