---@meta

-- Returns true if the action/event was successfull.
---@class ActionBoolReturn`2: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
ActionBoolReturn`2 = {}

---@param object userdata
---@param method IntPtr
---@return ActionBoolReturn`2
function ActionBoolReturn`2.ctor(object, method) end

---@param t1 T1
---@param t2 T2
---@return boolean
function ActionBoolReturn`2.Invoke(t1, t2) end

---@param t1 T1
---@param t2 T2
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function ActionBoolReturn`2.BeginInvoke(t1, t2, callback, object) end

---@param result IAsyncResult
---@return boolean
function ActionBoolReturn`2.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function ActionBoolReturn`2.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function ActionBoolReturn`2.Equals(obj) end

---@return function
function ActionBoolReturn`2.GetInvocationList() end

---@return number
function ActionBoolReturn`2.GetHashCode() end

---@return userdata
function ActionBoolReturn`2.get_Target() end

---@return userdata
function ActionBoolReturn`2.Clone() end

---@param args userdata
---@return userdata
function ActionBoolReturn`2.DynamicInvoke(args) end

---@return function
function ActionBoolReturn`2.get_Method() end

---@return userdata
function ActionBoolReturn`2.GetType() end

---@return string
function ActionBoolReturn`2.ToString() end


