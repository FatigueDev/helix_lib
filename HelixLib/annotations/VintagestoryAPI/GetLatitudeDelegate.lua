---@meta

---@class GetLatitudeDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
GetLatitudeDelegate = {}

---@param object userdata
---@param method IntPtr
---@return GetLatitudeDelegate
function GetLatitudeDelegate.ctor(object, method) end

---@param posZ number
---@return number
function GetLatitudeDelegate.Invoke(posZ) end

---@param posZ number
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function GetLatitudeDelegate.BeginInvoke(posZ, callback, object) end

---@param result IAsyncResult
---@return number
function GetLatitudeDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function GetLatitudeDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function GetLatitudeDelegate.Equals(obj) end

---@return function
function GetLatitudeDelegate.GetInvocationList() end

---@return number
function GetLatitudeDelegate.GetHashCode() end

---@return userdata
function GetLatitudeDelegate.get_Target() end

---@return userdata
function GetLatitudeDelegate.Clone() end

---@param args userdata
---@return userdata
function GetLatitudeDelegate.DynamicInvoke(args) end

---@return function
function GetLatitudeDelegate.get_Method() end

---@return userdata
function GetLatitudeDelegate.GetType() end

---@return string
function GetLatitudeDelegate.ToString() end


