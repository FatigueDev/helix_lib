---@meta

-- Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@class ActionConsumable`2: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
ActionConsumable`2 = {}

---@param object userdata
---@param method IntPtr
---@return ActionConsumable`2
function ActionConsumable`2.ctor(object, method) end

---@param t1 T1
---@param t2 T2
---@return boolean
function ActionConsumable`2.Invoke(t1, t2) end

---@param t1 T1
---@param t2 T2
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function ActionConsumable`2.BeginInvoke(t1, t2, callback, object) end

---@param result IAsyncResult
---@return boolean
function ActionConsumable`2.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function ActionConsumable`2.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function ActionConsumable`2.Equals(obj) end

---@return function
function ActionConsumable`2.GetInvocationList() end

---@return number
function ActionConsumable`2.GetHashCode() end

---@return userdata
function ActionConsumable`2.get_Target() end

---@return userdata
function ActionConsumable`2.Clone() end

---@param args userdata
---@return userdata
function ActionConsumable`2.DynamicInvoke(args) end

---@return function
function ActionConsumable`2.get_Method() end

---@return userdata
function ActionConsumable`2.GetType() end

---@return string
function ActionConsumable`2.ToString() end


