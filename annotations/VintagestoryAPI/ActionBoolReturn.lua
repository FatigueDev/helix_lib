---@meta

-- Return true if the action/event was successfull
---@class ActionBoolReturn: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
ActionBoolReturn = {}

---@param object userdata
---@param method IntPtr
---@return ActionBoolReturn
function ActionBoolReturn.ctor(object, method) end

---@return boolean
function ActionBoolReturn.Invoke() end

---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function ActionBoolReturn.BeginInvoke(callback, object) end

---@param result IAsyncResult
---@return boolean
function ActionBoolReturn.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function ActionBoolReturn.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function ActionBoolReturn.Equals(obj) end

---@return function
function ActionBoolReturn.GetInvocationList() end

---@return number
function ActionBoolReturn.GetHashCode() end

---@return userdata
function ActionBoolReturn.get_Target() end

---@return userdata
function ActionBoolReturn.Clone() end

---@param args userdata
---@return userdata
function ActionBoolReturn.DynamicInvoke(args) end

---@return function
function ActionBoolReturn.get_Method() end

---@return userdata
function ActionBoolReturn.GetType() end

---@return string
function ActionBoolReturn.ToString() end


