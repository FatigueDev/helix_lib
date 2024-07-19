---@meta

---@class IngameErrorDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
IngameErrorDelegate = {}

---@param object userdata
---@param method IntPtr
---@return IngameErrorDelegate
function IngameErrorDelegate.ctor(object, method) end

---@param sender userdata
---@param errorCode string
---@param text string
function IngameErrorDelegate.Invoke(sender, errorCode, text) end

---@param sender userdata
---@param errorCode string
---@param text string
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function IngameErrorDelegate.BeginInvoke(sender, errorCode, text, callback, object) end

---@param result IAsyncResult
function IngameErrorDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function IngameErrorDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function IngameErrorDelegate.Equals(obj) end

---@return function
function IngameErrorDelegate.GetInvocationList() end

---@return number
function IngameErrorDelegate.GetHashCode() end

---@return userdata
function IngameErrorDelegate.get_Target() end

---@return userdata
function IngameErrorDelegate.Clone() end

---@param args userdata
---@return userdata
function IngameErrorDelegate.DynamicInvoke(args) end

---@return function
function IngameErrorDelegate.get_Method() end

---@return userdata
function IngameErrorDelegate.GetType() end

---@return string
function IngameErrorDelegate.ToString() end


