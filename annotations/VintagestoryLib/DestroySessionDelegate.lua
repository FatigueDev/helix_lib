---@meta

---@class DestroySessionDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
DestroySessionDelegate = {}

---@param object userdata
---@param method IntPtr
---@return DestroySessionDelegate
function DestroySessionDelegate.ctor(object, method) end

---@param session IntPtr
---@return number
function DestroySessionDelegate.Invoke(session) end

---@param session IntPtr
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function DestroySessionDelegate.BeginInvoke(session, callback, object) end

---@param result IAsyncResult
---@return number
function DestroySessionDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function DestroySessionDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function DestroySessionDelegate.Equals(obj) end

---@return function
function DestroySessionDelegate.GetInvocationList() end

---@return number
function DestroySessionDelegate.GetHashCode() end

---@return userdata
function DestroySessionDelegate.get_Target() end

---@return userdata
function DestroySessionDelegate.Clone() end

---@param args userdata
---@return userdata
function DestroySessionDelegate.DynamicInvoke(args) end

---@return function
function DestroySessionDelegate.get_Method() end

---@return userdata
function DestroySessionDelegate.GetType() end

---@return string
function DestroySessionDelegate.ToString() end


