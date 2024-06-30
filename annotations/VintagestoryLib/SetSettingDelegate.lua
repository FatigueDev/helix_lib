---@meta

---@class SetSettingDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
SetSettingDelegate = {}

---@param object userdata
---@param method IntPtr
---@return SetSettingDelegate
function SetSettingDelegate.ctor(object, method) end

---@param session IntPtr
---@param profile IntPtr
---@param setting OptimusSetting&
---@return number
function SetSettingDelegate.Invoke(session, profile, setting) end

---@param session IntPtr
---@param profile IntPtr
---@param setting OptimusSetting&
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function SetSettingDelegate.BeginInvoke(session, profile, setting, callback, object) end

---@param setting OptimusSetting&
---@param result IAsyncResult
---@return number
function SetSettingDelegate.EndInvoke(setting, result) end

---@param info SerializationInfo
---@param context StreamingContext
function SetSettingDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function SetSettingDelegate.Equals(obj) end

---@return function
function SetSettingDelegate.GetInvocationList() end

---@return number
function SetSettingDelegate.GetHashCode() end

---@return userdata
function SetSettingDelegate.get_Target() end

---@return userdata
function SetSettingDelegate.Clone() end

---@param args userdata
---@return userdata
function SetSettingDelegate.DynamicInvoke(args) end

---@return function
function SetSettingDelegate.get_Method() end

---@return userdata
function SetSettingDelegate.GetType() end

---@return string
function SetSettingDelegate.ToString() end


