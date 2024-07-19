---@meta

---@class TransformFunction: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
TransformFunction = {}

---@param object userdata
---@param method IntPtr
---@return TransformFunction
function TransformFunction.ctor(object, method) end

---@param firstvalue number
---@param factor number
---@param sequence number
---@return number
function TransformFunction.Invoke(firstvalue, factor, sequence) end

---@param firstvalue number
---@param factor number
---@param sequence number
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function TransformFunction.BeginInvoke(firstvalue, factor, sequence, callback, object) end

---@param result IAsyncResult
---@return number
function TransformFunction.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function TransformFunction.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function TransformFunction.Equals(obj) end

---@return function
function TransformFunction.GetInvocationList() end

---@return number
function TransformFunction.GetHashCode() end

---@return userdata
function TransformFunction.get_Target() end

---@return userdata
function TransformFunction.Clone() end

---@param args userdata
---@return userdata
function TransformFunction.DynamicInvoke(args) end

---@return function
function TransformFunction.get_Method() end

---@return userdata
function TransformFunction.GetType() end

---@return string
function TransformFunction.ToString() end


