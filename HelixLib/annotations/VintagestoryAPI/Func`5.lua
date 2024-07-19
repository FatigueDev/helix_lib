---@meta

---@class Func`5: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
Func`5 = {}

---@param object userdata
---@param method IntPtr
---@return Func`5
function Func`5.ctor(object, method) end

---@param t1 T1
---@param t2 T2
---@param t3 T3
---@param t4 T4
---@return TResult
function Func`5.Invoke(t1, t2, t3, t4) end

---@param t1 T1
---@param t2 T2
---@param t3 T3
---@param t4 T4
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function Func`5.BeginInvoke(t1, t2, t3, t4, callback, object) end

---@param result IAsyncResult
---@return TResult
function Func`5.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function Func`5.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function Func`5.Equals(obj) end

---@return function
function Func`5.GetInvocationList() end

---@return number
function Func`5.GetHashCode() end

---@return userdata
function Func`5.get_Target() end

---@return userdata
function Func`5.Clone() end

---@param args userdata
---@return userdata
function Func`5.DynamicInvoke(args) end

---@return function
function Func`5.get_Method() end

---@return userdata
function Func`5.GetType() end

---@return string
function Func`5.ToString() end


