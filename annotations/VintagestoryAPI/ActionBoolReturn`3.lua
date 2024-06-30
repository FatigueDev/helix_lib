---@meta

-- Returns true if the action/event was successfull.
---@class ActionBoolReturn`3: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
ActionBoolReturn`3 = {}

---@param object userdata
---@param method IntPtr
---@return ActionBoolReturn`3
function ActionBoolReturn`3.ctor(object, method) end

---@param t1 T1
---@param t2 T2
---@param t3 T3
---@return boolean
function ActionBoolReturn`3.Invoke(t1, t2, t3) end

---@param t1 T1
---@param t2 T2
---@param t3 T3
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function ActionBoolReturn`3.BeginInvoke(t1, t2, t3, callback, object) end

---@param result IAsyncResult
---@return boolean
function ActionBoolReturn`3.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function ActionBoolReturn`3.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function ActionBoolReturn`3.Equals(obj) end

---@return function
function ActionBoolReturn`3.GetInvocationList() end

---@return number
function ActionBoolReturn`3.GetHashCode() end

---@return userdata
function ActionBoolReturn`3.get_Target() end

---@return userdata
function ActionBoolReturn`3.Clone() end

---@param args userdata
---@return userdata
function ActionBoolReturn`3.DynamicInvoke(args) end

---@return function
function ActionBoolReturn`3.get_Method() end

---@return userdata
function ActionBoolReturn`3.GetType() end

---@return string
function ActionBoolReturn`3.ToString() end


