---@meta

---@class Func`2: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
Func`2 = {}

---@param object userdata
---@param method IntPtr
---@return Func`2
function Func`2.ctor(object, method) end

---@param t1 T1
---@return TResult
function Func`2.Invoke(t1) end

---@param t1 T1
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function Func`2.BeginInvoke(t1, callback, object) end

---@param result IAsyncResult
---@return TResult
function Func`2.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function Func`2.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function Func`2.Equals(obj) end

---@return function
function Func`2.GetInvocationList() end

---@return number
function Func`2.GetHashCode() end

---@return userdata
function Func`2.get_Target() end

---@return userdata
function Func`2.Clone() end

---@param args userdata
---@return userdata
function Func`2.DynamicInvoke(args) end

---@return function
function Func`2.get_Method() end

---@return userdata
function Func`2.GetType() end

---@return string
function Func`2.ToString() end


