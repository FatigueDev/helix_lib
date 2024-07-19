---@meta

---@class SuspendServerDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
SuspendServerDelegate = {}

---@param object userdata
---@param method IntPtr
---@return SuspendServerDelegate
function SuspendServerDelegate.ctor(object, method) end

---@return EnumSuspendState
function SuspendServerDelegate.Invoke() end

---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function SuspendServerDelegate.BeginInvoke(callback, object) end

---@param result IAsyncResult
---@return EnumSuspendState
function SuspendServerDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function SuspendServerDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function SuspendServerDelegate.Equals(obj) end

---@return function
function SuspendServerDelegate.GetInvocationList() end

---@return number
function SuspendServerDelegate.GetHashCode() end

---@return userdata
function SuspendServerDelegate.get_Target() end

---@return userdata
function SuspendServerDelegate.Clone() end

---@param args userdata
---@return userdata
function SuspendServerDelegate.DynamicInvoke(args) end

---@return function
function SuspendServerDelegate.get_Method() end

---@return userdata
function SuspendServerDelegate.GetType() end

---@return string
function SuspendServerDelegate.ToString() end


