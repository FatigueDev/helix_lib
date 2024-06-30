---@meta

---@class fillCallback`1: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
fillCallback`1 = {}

---@param object userdata
---@param method IntPtr
---@return fillCallback`1
function fillCallback`1.ctor(object, method) end

---@param index number
---@return T
function fillCallback`1.Invoke(index) end

---@param index number
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function fillCallback`1.BeginInvoke(index, callback, object) end

---@param result IAsyncResult
---@return T
function fillCallback`1.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function fillCallback`1.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function fillCallback`1.Equals(obj) end

---@return function
function fillCallback`1.GetInvocationList() end

---@return number
function fillCallback`1.GetHashCode() end

---@return userdata
function fillCallback`1.get_Target() end

---@return userdata
function fillCallback`1.Clone() end

---@param args userdata
---@return userdata
function fillCallback`1.DynamicInvoke(args) end

---@return function
function fillCallback`1.get_Method() end

---@return userdata
function fillCallback`1.GetType() end

---@return string
function fillCallback`1.ToString() end


