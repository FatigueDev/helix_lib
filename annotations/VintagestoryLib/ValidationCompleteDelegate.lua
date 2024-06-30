---@meta

---@class ValidationCompleteDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
ValidationCompleteDelegate = {}

---@param object userdata
---@param method IntPtr
---@return ValidationCompleteDelegate
function ValidationCompleteDelegate.ctor(object, method) end

---@param response EnumServerResponse
---@param playerEntitlements string
---@param errorReason string
function ValidationCompleteDelegate.Invoke(response, playerEntitlements, errorReason) end

---@param response EnumServerResponse
---@param playerEntitlements string
---@param errorReason string
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function ValidationCompleteDelegate.BeginInvoke(response, playerEntitlements, errorReason, callback, object) end

---@param result IAsyncResult
function ValidationCompleteDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function ValidationCompleteDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function ValidationCompleteDelegate.Equals(obj) end

---@return function
function ValidationCompleteDelegate.GetInvocationList() end

---@return number
function ValidationCompleteDelegate.GetHashCode() end

---@return userdata
function ValidationCompleteDelegate.get_Target() end

---@return userdata
function ValidationCompleteDelegate.Clone() end

---@param args userdata
---@return userdata
function ValidationCompleteDelegate.DynamicInvoke(args) end

---@return function
function ValidationCompleteDelegate.get_Method() end

---@return userdata
function ValidationCompleteDelegate.GetType() end

---@return string
function ValidationCompleteDelegate.ToString() end


