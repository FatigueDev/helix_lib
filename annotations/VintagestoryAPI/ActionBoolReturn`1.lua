---@meta

-- Returns true if the action/event was successfull.
---@class ActionBoolReturn`1: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
ActionBoolReturn`1 = {}

---@param object userdata
---@param method IntPtr
---@return ActionBoolReturn`1
function ActionBoolReturn`1.ctor(object, method) end

---@param t T
---@return boolean
function ActionBoolReturn`1.Invoke(t) end

---@param t T
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function ActionBoolReturn`1.BeginInvoke(t, callback, object) end

---@param result IAsyncResult
---@return boolean
function ActionBoolReturn`1.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function ActionBoolReturn`1.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function ActionBoolReturn`1.Equals(obj) end

---@return function
function ActionBoolReturn`1.GetInvocationList() end

---@return number
function ActionBoolReturn`1.GetHashCode() end

---@return userdata
function ActionBoolReturn`1.get_Target() end

---@return userdata
function ActionBoolReturn`1.Clone() end

---@param args userdata
---@return userdata
function ActionBoolReturn`1.DynamicInvoke(args) end

---@return function
function ActionBoolReturn`1.get_Method() end

---@return userdata
function ActionBoolReturn`1.GetType() end

---@return string
function ActionBoolReturn`1.ToString() end


