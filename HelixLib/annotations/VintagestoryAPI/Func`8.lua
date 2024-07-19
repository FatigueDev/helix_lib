---@meta

---@class Func`8: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
Func`8 = {}

---@param object userdata
---@param method IntPtr
---@return Func`8
function Func`8.ctor(object, method) end

---@param t1 T1
---@param t2 T2
---@param t3 T3
---@param t4 T4
---@param t5 T5
---@param t6 T6
---@param t7 T7
---@return TResult
function Func`8.Invoke(t1, t2, t3, t4, t5, t6, t7) end

---@param t1 T1
---@param t2 T2
---@param t3 T3
---@param t4 T4
---@param t5 T5
---@param t6 T6
---@param t7 T7
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function Func`8.BeginInvoke(t1, t2, t3, t4, t5, t6, t7, callback, object) end

---@param result IAsyncResult
---@return TResult
function Func`8.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function Func`8.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function Func`8.Equals(obj) end

---@return function
function Func`8.GetInvocationList() end

---@return number
function Func`8.GetHashCode() end

---@return userdata
function Func`8.get_Target() end

---@return userdata
function Func`8.Clone() end

---@param args userdata
---@return userdata
function Func`8.DynamicInvoke(args) end

---@return function
function Func`8.get_Method() end

---@return userdata
function Func`8.GetType() end

---@return string
function Func`8.ToString() end


