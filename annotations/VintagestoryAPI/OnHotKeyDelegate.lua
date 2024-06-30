---@meta

---@class OnHotKeyDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
OnHotKeyDelegate = {}

---@param object userdata
---@param method IntPtr
---@return OnHotKeyDelegate
function OnHotKeyDelegate.ctor(object, method) end

---@param hotkeycode string
---@param keyComb KeyCombination Mapping of an input key combination.   Note: the "key" might also be a mouse button if a hotkey has been configured to be activated by a mouse button
function OnHotKeyDelegate.Invoke(hotkeycode, keyComb) end

---@param hotkeycode string
---@param keyComb KeyCombination Mapping of an input key combination.   Note: the "key" might also be a mouse button if a hotkey has been configured to be activated by a mouse button
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function OnHotKeyDelegate.BeginInvoke(hotkeycode, keyComb, callback, object) end

---@param result IAsyncResult
function OnHotKeyDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function OnHotKeyDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function OnHotKeyDelegate.Equals(obj) end

---@return function
function OnHotKeyDelegate.GetInvocationList() end

---@return number
function OnHotKeyDelegate.GetHashCode() end

---@return userdata
function OnHotKeyDelegate.get_Target() end

---@return userdata
function OnHotKeyDelegate.Clone() end

---@param args userdata
---@return userdata
function OnHotKeyDelegate.DynamicInvoke(args) end

---@return function
function OnHotKeyDelegate.get_Method() end

---@return userdata
function OnHotKeyDelegate.GetType() end

---@return string
function OnHotKeyDelegate.ToString() end


