---@meta

---@class GetProfileInfoDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
GetProfileInfoDelegate = {}

---@param object userdata
---@param method IntPtr
---@return GetProfileInfoDelegate
function GetProfileInfoDelegate.ctor(object, method) end

---@param session IntPtr
---@param profile IntPtr
---@param profileInfo OptimusProfile&
---@return number
function GetProfileInfoDelegate.Invoke(session, profile, profileInfo) end

---@param session IntPtr
---@param profile IntPtr
---@param profileInfo OptimusProfile&
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function GetProfileInfoDelegate.BeginInvoke(session, profile, profileInfo, callback, object) end

---@param profileInfo OptimusProfile&
---@param result IAsyncResult
---@return number
function GetProfileInfoDelegate.EndInvoke(profileInfo, result) end

---@param info SerializationInfo
---@param context StreamingContext
function GetProfileInfoDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function GetProfileInfoDelegate.Equals(obj) end

---@return function
function GetProfileInfoDelegate.GetInvocationList() end

---@return number
function GetProfileInfoDelegate.GetHashCode() end

---@return userdata
function GetProfileInfoDelegate.get_Target() end

---@return userdata
function GetProfileInfoDelegate.Clone() end

---@param args userdata
---@return userdata
function GetProfileInfoDelegate.DynamicInvoke(args) end

---@return function
function GetProfileInfoDelegate.get_Method() end

---@return userdata
function GetProfileInfoDelegate.GetType() end

---@return string
function GetProfileInfoDelegate.ToString() end


