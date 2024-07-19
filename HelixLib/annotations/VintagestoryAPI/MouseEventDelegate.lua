---@meta

---@class MouseEventDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
MouseEventDelegate = {}

---@param object userdata
---@param method IntPtr
---@return MouseEventDelegate
function MouseEventDelegate.ctor(object, method) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
function MouseEventDelegate.Invoke(e) end

---@param e MouseEvent This contains the data for what the mouse is currently doing.
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function MouseEventDelegate.BeginInvoke(e, callback, object) end

---@param result IAsyncResult
function MouseEventDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function MouseEventDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function MouseEventDelegate.Equals(obj) end

---@return function
function MouseEventDelegate.GetInvocationList() end

---@return number
function MouseEventDelegate.GetHashCode() end

---@return userdata
function MouseEventDelegate.get_Target() end

---@return userdata
function MouseEventDelegate.Clone() end

---@param args userdata
---@return userdata
function MouseEventDelegate.DynamicInvoke(args) end

---@return function
function MouseEventDelegate.get_Method() end

---@return userdata
function MouseEventDelegate.GetType() end

---@return string
function MouseEventDelegate.ToString() end


