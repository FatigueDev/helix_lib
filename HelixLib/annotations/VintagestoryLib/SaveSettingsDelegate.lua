---@meta

---@class SaveSettingsDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
SaveSettingsDelegate = {}

---@param object userdata
---@param method IntPtr
---@return SaveSettingsDelegate
function SaveSettingsDelegate.ctor(object, method) end

---@param session IntPtr
---@return number
function SaveSettingsDelegate.Invoke(session) end

---@param session IntPtr
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function SaveSettingsDelegate.BeginInvoke(session, callback, object) end

---@param result IAsyncResult
---@return number
function SaveSettingsDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function SaveSettingsDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function SaveSettingsDelegate.Equals(obj) end

---@return function
function SaveSettingsDelegate.GetInvocationList() end

---@return number
function SaveSettingsDelegate.GetHashCode() end

---@return userdata
function SaveSettingsDelegate.get_Target() end

---@return userdata
function SaveSettingsDelegate.Clone() end

---@param args userdata
---@return userdata
function SaveSettingsDelegate.DynamicInvoke(args) end

---@return function
function SaveSettingsDelegate.get_Method() end

---@return userdata
function SaveSettingsDelegate.GetType() end

---@return string
function SaveSettingsDelegate.ToString() end


