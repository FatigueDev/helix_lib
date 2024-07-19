---@meta

---@class CreateCachableObjectDelegate`1: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
CreateCachableObjectDelegate`1 = {}

---@param object userdata
---@param method IntPtr
---@return CreateCachableObjectDelegate`1
function CreateCachableObjectDelegate`1.ctor(object, method) end

---@return T
function CreateCachableObjectDelegate`1.Invoke() end

---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function CreateCachableObjectDelegate`1.BeginInvoke(callback, object) end

---@param result IAsyncResult
---@return T
function CreateCachableObjectDelegate`1.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function CreateCachableObjectDelegate`1.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function CreateCachableObjectDelegate`1.Equals(obj) end

---@return function
function CreateCachableObjectDelegate`1.GetInvocationList() end

---@return number
function CreateCachableObjectDelegate`1.GetHashCode() end

---@return userdata
function CreateCachableObjectDelegate`1.get_Target() end

---@return userdata
function CreateCachableObjectDelegate`1.Clone() end

---@param args userdata
---@return userdata
function CreateCachableObjectDelegate`1.DynamicInvoke(args) end

---@return function
function CreateCachableObjectDelegate`1.get_Method() end

---@return userdata
function CreateCachableObjectDelegate`1.GetType() end

---@return string
function CreateCachableObjectDelegate`1.ToString() end


