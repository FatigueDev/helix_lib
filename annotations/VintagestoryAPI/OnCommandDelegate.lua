---@meta

---@class OnCommandDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
OnCommandDelegate = {}

---@param object userdata
---@param method IntPtr
---@return OnCommandDelegate
function OnCommandDelegate.ctor(object, method) end

---@param args TextCommandCallingArgs
---@return TextCommandResult
function OnCommandDelegate.Invoke(args) end

---@param args TextCommandCallingArgs
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function OnCommandDelegate.BeginInvoke(args, callback, object) end

---@param result IAsyncResult
---@return TextCommandResult
function OnCommandDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function OnCommandDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function OnCommandDelegate.Equals(obj) end

---@return function
function OnCommandDelegate.GetInvocationList() end

---@return number
function OnCommandDelegate.GetHashCode() end

---@return userdata
function OnCommandDelegate.get_Target() end

---@return userdata
function OnCommandDelegate.Clone() end

---@param args userdata
---@return userdata
function OnCommandDelegate.DynamicInvoke(args) end

---@return function
function OnCommandDelegate.get_Method() end

---@return userdata
function OnCommandDelegate.GetType() end

---@return string
function OnCommandDelegate.ToString() end


