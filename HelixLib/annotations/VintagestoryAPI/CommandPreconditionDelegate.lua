---@meta

---@class CommandPreconditionDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
CommandPreconditionDelegate = {}

---@param object userdata
---@param method IntPtr
---@return CommandPreconditionDelegate
function CommandPreconditionDelegate.ctor(object, method) end

---@param args TextCommandCallingArgs
---@return TextCommandResult
function CommandPreconditionDelegate.Invoke(args) end

---@param args TextCommandCallingArgs
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function CommandPreconditionDelegate.BeginInvoke(args, callback, object) end

---@param result IAsyncResult
---@return TextCommandResult
function CommandPreconditionDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function CommandPreconditionDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function CommandPreconditionDelegate.Equals(obj) end

---@return function
function CommandPreconditionDelegate.GetInvocationList() end

---@return number
function CommandPreconditionDelegate.GetHashCode() end

---@return userdata
function CommandPreconditionDelegate.get_Target() end

---@return userdata
function CommandPreconditionDelegate.Clone() end

---@param args userdata
---@return userdata
function CommandPreconditionDelegate.DynamicInvoke(args) end

---@return function
function CommandPreconditionDelegate.get_Method() end

---@return userdata
function CommandPreconditionDelegate.GetType() end

---@return string
function CommandPreconditionDelegate.ToString() end


