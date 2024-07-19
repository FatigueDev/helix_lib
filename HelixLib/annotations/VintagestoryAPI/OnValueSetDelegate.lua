---@meta

---@class OnValueSetDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
OnValueSetDelegate = {}

---@param object userdata
---@param method IntPtr
---@return OnValueSetDelegate
function OnValueSetDelegate.ctor(object, method) end

---@param elementCode string
---@param newValue string
function OnValueSetDelegate.Invoke(elementCode, newValue) end

---@param elementCode string
---@param newValue string
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function OnValueSetDelegate.BeginInvoke(elementCode, newValue, callback, object) end

---@param result IAsyncResult
function OnValueSetDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function OnValueSetDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function OnValueSetDelegate.Equals(obj) end

---@return function
function OnValueSetDelegate.GetInvocationList() end

---@return number
function OnValueSetDelegate.GetHashCode() end

---@return userdata
function OnValueSetDelegate.get_Target() end

---@return userdata
function OnValueSetDelegate.Clone() end

---@param args userdata
---@return userdata
function OnValueSetDelegate.DynamicInvoke(args) end

---@return function
function OnValueSetDelegate.get_Method() end

---@return userdata
function OnValueSetDelegate.GetType() end

---@return string
function OnValueSetDelegate.ToString() end


