---@meta

---@class Func`4: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
Func`4 = {}

---@param object userdata
---@param method IntPtr
---@return Func`4
function Func`4.ctor(object, method) end

---@param t1 T1
---@param t2 T2
---@param t3 T3
---@return TResult
function Func`4.Invoke(t1, t2, t3) end

---@param t1 T1
---@param t2 T2
---@param t3 T3
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function Func`4.BeginInvoke(t1, t2, t3, callback, object) end

---@param result IAsyncResult
---@return TResult
function Func`4.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function Func`4.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function Func`4.Equals(obj) end

---@return function
function Func`4.GetInvocationList() end

---@return number
function Func`4.GetHashCode() end

---@return userdata
function Func`4.get_Target() end

---@return userdata
function Func`4.Clone() end

---@param args userdata
---@return userdata
function Func`4.DynamicInvoke(args) end

---@return function
function Func`4.get_Method() end

---@return userdata
function Func`4.GetType() end

---@return string
function Func`4.ToString() end


