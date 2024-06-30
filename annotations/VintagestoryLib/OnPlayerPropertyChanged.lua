---@meta

---@class OnPlayerPropertyChanged: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
OnPlayerPropertyChanged = {}

---@param object userdata
---@param method IntPtr
---@return OnPlayerPropertyChanged
function OnPlayerPropertyChanged.ctor(object, method) end

---@param oldValues TrackedPlayerProperties
---@param newValues TrackedPlayerProperties
function OnPlayerPropertyChanged.Invoke(oldValues, newValues) end

---@param oldValues TrackedPlayerProperties
---@param newValues TrackedPlayerProperties
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function OnPlayerPropertyChanged.BeginInvoke(oldValues, newValues, callback, object) end

---@param result IAsyncResult
function OnPlayerPropertyChanged.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function OnPlayerPropertyChanged.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function OnPlayerPropertyChanged.Equals(obj) end

---@return function
function OnPlayerPropertyChanged.GetInvocationList() end

---@return number
function OnPlayerPropertyChanged.GetHashCode() end

---@return userdata
function OnPlayerPropertyChanged.get_Target() end

---@return userdata
function OnPlayerPropertyChanged.Clone() end

---@param args userdata
---@return userdata
function OnPlayerPropertyChanged.DynamicInvoke(args) end

---@return function
function OnPlayerPropertyChanged.get_Method() end

---@return userdata
function OnPlayerPropertyChanged.GetType() end

---@return string
function OnPlayerPropertyChanged.ToString() end


