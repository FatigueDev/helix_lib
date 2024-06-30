---@meta

---@class UpnpCompleteDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
UpnpCompleteDelegate = {}

---@param object userdata
---@param method IntPtr
---@return UpnpCompleteDelegate
function UpnpCompleteDelegate.ctor(object, method) end

---@param success boolean
function UpnpCompleteDelegate.Invoke(success) end

---@param success boolean
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function UpnpCompleteDelegate.BeginInvoke(success, callback, object) end

---@param result IAsyncResult
function UpnpCompleteDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function UpnpCompleteDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function UpnpCompleteDelegate.Equals(obj) end

---@return function
function UpnpCompleteDelegate.GetInvocationList() end

---@return number
function UpnpCompleteDelegate.GetHashCode() end

---@return userdata
function UpnpCompleteDelegate.get_Target() end

---@return userdata
function UpnpCompleteDelegate.Clone() end

---@param args userdata
---@return userdata
function UpnpCompleteDelegate.DynamicInvoke(args) end

---@return function
function UpnpCompleteDelegate.get_Method() end

---@return userdata
function UpnpCompleteDelegate.GetType() end

---@return string
function UpnpCompleteDelegate.ToString() end


