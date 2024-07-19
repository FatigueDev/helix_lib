---@meta

---@class Func`3: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
Func`3 = {}

---@param object userdata
---@param method IntPtr
---@return Func`3
function Func`3.ctor(object, method) end

---@param t1 T1
---@param t2 T2
---@return TResult
function Func`3.Invoke(t1, t2) end

---@param t1 T1
---@param t2 T2
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function Func`3.BeginInvoke(t1, t2, callback, object) end

---@param result IAsyncResult
---@return TResult
function Func`3.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function Func`3.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function Func`3.Equals(obj) end

---@return function
function Func`3.GetInvocationList() end

---@return number
function Func`3.GetHashCode() end

---@return userdata
function Func`3.get_Target() end

---@return userdata
function Func`3.Clone() end

---@param args userdata
---@return userdata
function Func`3.DynamicInvoke(args) end

---@return function
function Func`3.get_Method() end

---@return userdata
function Func`3.GetType() end

---@return string
function Func`3.ToString() end


