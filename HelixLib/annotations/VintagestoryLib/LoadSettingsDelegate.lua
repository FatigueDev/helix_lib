---@meta

---@class LoadSettingsDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
LoadSettingsDelegate = {}

---@param object userdata
---@param method IntPtr
---@return LoadSettingsDelegate
function LoadSettingsDelegate.ctor(object, method) end

---@param session IntPtr
---@return number
function LoadSettingsDelegate.Invoke(session) end

---@param session IntPtr
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function LoadSettingsDelegate.BeginInvoke(session, callback, object) end

---@param result IAsyncResult
---@return number
function LoadSettingsDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function LoadSettingsDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function LoadSettingsDelegate.Equals(obj) end

---@return function
function LoadSettingsDelegate.GetInvocationList() end

---@return number
function LoadSettingsDelegate.GetHashCode() end

---@return userdata
function LoadSettingsDelegate.get_Target() end

---@return userdata
function LoadSettingsDelegate.Clone() end

---@param args userdata
---@return userdata
function LoadSettingsDelegate.DynamicInvoke(args) end

---@return function
function LoadSettingsDelegate.get_Method() end

---@return userdata
function LoadSettingsDelegate.GetType() end

---@return string
function LoadSettingsDelegate.ToString() end


