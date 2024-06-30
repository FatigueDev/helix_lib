---@meta

---@class CreateSessionDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
CreateSessionDelegate = {}

---@param object userdata
---@param method IntPtr
---@return CreateSessionDelegate
function CreateSessionDelegate.ctor(object, method) end

---@param session IntPtr&
---@return number
function CreateSessionDelegate.Invoke(session) end

---@param session IntPtr&
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function CreateSessionDelegate.BeginInvoke(session, callback, object) end

---@param session IntPtr&
---@param result IAsyncResult
---@return number
function CreateSessionDelegate.EndInvoke(session, result) end

---@param info SerializationInfo
---@param context StreamingContext
function CreateSessionDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function CreateSessionDelegate.Equals(obj) end

---@return function
function CreateSessionDelegate.GetInvocationList() end

---@return number
function CreateSessionDelegate.GetHashCode() end

---@return userdata
function CreateSessionDelegate.get_Target() end

---@return userdata
function CreateSessionDelegate.Clone() end

---@param args userdata
---@return userdata
function CreateSessionDelegate.DynamicInvoke(args) end

---@return function
function CreateSessionDelegate.get_Method() end

---@return userdata
function CreateSessionDelegate.GetType() end

---@return string
function CreateSessionDelegate.ToString() end


