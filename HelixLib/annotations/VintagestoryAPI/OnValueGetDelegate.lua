---@meta

---@class OnValueGetDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
OnValueGetDelegate = {}

---@param object userdata
---@param method IntPtr
---@return OnValueGetDelegate
function OnValueGetDelegate.ctor(object, method) end

---@param elementCode string
---@return string
function OnValueGetDelegate.Invoke(elementCode) end

---@param elementCode string
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function OnValueGetDelegate.BeginInvoke(elementCode, callback, object) end

---@param result IAsyncResult
---@return string
function OnValueGetDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function OnValueGetDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function OnValueGetDelegate.Equals(obj) end

---@return function
function OnValueGetDelegate.GetInvocationList() end

---@return number
function OnValueGetDelegate.GetHashCode() end

---@return userdata
function OnValueGetDelegate.get_Target() end

---@return userdata
function OnValueGetDelegate.Clone() end

---@param args userdata
---@return userdata
function OnValueGetDelegate.DynamicInvoke(args) end

---@return function
function OnValueGetDelegate.get_Method() end

---@return userdata
function OnValueGetDelegate.GetType() end

---@return string
function OnValueGetDelegate.ToString() end


