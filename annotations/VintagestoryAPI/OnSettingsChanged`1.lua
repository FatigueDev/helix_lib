---@meta

---@class OnSettingsChanged`1: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
OnSettingsChanged`1 = {}

---@param object userdata
---@param method IntPtr
---@return OnSettingsChanged`1
function OnSettingsChanged`1.ctor(object, method) end

---@param newValue T
function OnSettingsChanged`1.Invoke(newValue) end

---@param newValue T
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function OnSettingsChanged`1.BeginInvoke(newValue, callback, object) end

---@param result IAsyncResult
function OnSettingsChanged`1.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function OnSettingsChanged`1.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function OnSettingsChanged`1.Equals(obj) end

---@return function
function OnSettingsChanged`1.GetInvocationList() end

---@return number
function OnSettingsChanged`1.GetHashCode() end

---@return userdata
function OnSettingsChanged`1.get_Target() end

---@return userdata
function OnSettingsChanged`1.Clone() end

---@param args userdata
---@return userdata
function OnSettingsChanged`1.DynamicInvoke(args) end

---@return function
function OnSettingsChanged`1.get_Method() end

---@return userdata
function OnSettingsChanged`1.GetType() end

---@return string
function OnSettingsChanged`1.ToString() end


