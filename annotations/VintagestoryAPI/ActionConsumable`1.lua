---@meta

-- Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@class ActionConsumable`1: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
ActionConsumable`1 = {}

---@param object userdata
---@param method IntPtr
---@return ActionConsumable`1
function ActionConsumable`1.ctor(object, method) end

---@param t1 T
---@return boolean
function ActionConsumable`1.Invoke(t1) end

---@param t1 T
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function ActionConsumable`1.BeginInvoke(t1, callback, object) end

---@param result IAsyncResult
---@return boolean
function ActionConsumable`1.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function ActionConsumable`1.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function ActionConsumable`1.Equals(obj) end

---@return function
function ActionConsumable`1.GetInvocationList() end

---@return number
function ActionConsumable`1.GetHashCode() end

---@return userdata
function ActionConsumable`1.get_Target() end

---@return userdata
function ActionConsumable`1.Clone() end

---@param args userdata
---@return userdata
function ActionConsumable`1.DynamicInvoke(args) end

---@return function
function ActionConsumable`1.get_Method() end

---@return userdata
function ActionConsumable`1.GetType() end

---@return string
function ActionConsumable`1.ToString() end


