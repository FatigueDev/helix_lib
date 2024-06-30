---@meta

---@class WindowResizedDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
WindowResizedDelegate = {}

---@param object userdata
---@param method IntPtr
---@return WindowResizedDelegate
function WindowResizedDelegate.ctor(object, method) end

---@param nowWidth number
---@param nowHeight number
function WindowResizedDelegate.Invoke(nowWidth, nowHeight) end

---@param nowWidth number
---@param nowHeight number
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function WindowResizedDelegate.BeginInvoke(nowWidth, nowHeight, callback, object) end

---@param result IAsyncResult
function WindowResizedDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function WindowResizedDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function WindowResizedDelegate.Equals(obj) end

---@return function
function WindowResizedDelegate.GetInvocationList() end

---@return number
function WindowResizedDelegate.GetHashCode() end

---@return userdata
function WindowResizedDelegate.get_Target() end

---@return userdata
function WindowResizedDelegate.Clone() end

---@param args userdata
---@return userdata
function WindowResizedDelegate.DynamicInvoke(args) end

---@return function
function WindowResizedDelegate.get_Method() end

---@return userdata
function WindowResizedDelegate.GetType() end

---@return string
function WindowResizedDelegate.ToString() end


