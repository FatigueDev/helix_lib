---@meta

-- Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@class ActionConsumable: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
ActionConsumable = {}

---@param object userdata
---@param method IntPtr
---@return ActionConsumable
function ActionConsumable.ctor(object, method) end

---@return boolean
function ActionConsumable.Invoke() end

---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function ActionConsumable.BeginInvoke(callback, object) end

---@param result IAsyncResult
---@return boolean
function ActionConsumable.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function ActionConsumable.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function ActionConsumable.Equals(obj) end

---@return function
function ActionConsumable.GetInvocationList() end

---@return number
function ActionConsumable.GetHashCode() end

---@return userdata
function ActionConsumable.get_Target() end

---@return userdata
function ActionConsumable.Clone() end

---@param args userdata
---@return userdata
function ActionConsumable.DynamicInvoke(args) end

---@return function
function ActionConsumable.get_Method() end

---@return userdata
function ActionConsumable.GetType() end

---@return string
function ActionConsumable.ToString() end


