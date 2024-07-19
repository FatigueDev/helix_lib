---@meta

---@class KeyEventDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
KeyEventDelegate = {}

---@param object userdata
---@param method IntPtr
---@return KeyEventDelegate
function KeyEventDelegate.ctor(object, method) end

---@param e KeyEvent
function KeyEventDelegate.Invoke(e) end

---@param e KeyEvent
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function KeyEventDelegate.BeginInvoke(e, callback, object) end

---@param result IAsyncResult
function KeyEventDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function KeyEventDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function KeyEventDelegate.Equals(obj) end

---@return function
function KeyEventDelegate.GetInvocationList() end

---@return number
function KeyEventDelegate.GetHashCode() end

---@return userdata
function KeyEventDelegate.get_Target() end

---@return userdata
function KeyEventDelegate.Clone() end

---@param args userdata
---@return userdata
function KeyEventDelegate.DynamicInvoke(args) end

---@return function
function KeyEventDelegate.get_Method() end

---@return userdata
function KeyEventDelegate.GetType() end

---@return string
function KeyEventDelegate.ToString() end


