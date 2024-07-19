---@meta

---@class ModDbResponseDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
ModDbResponseDelegate = {}

---@param object userdata
---@param method IntPtr
---@return ModDbResponseDelegate
function ModDbResponseDelegate.ctor(object, method) end

---@param status EnumModDbResponse
---@param responseText string
function ModDbResponseDelegate.Invoke(status, responseText) end

---@param status EnumModDbResponse
---@param responseText string
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function ModDbResponseDelegate.BeginInvoke(status, responseText, callback, object) end

---@param result IAsyncResult
function ModDbResponseDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function ModDbResponseDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function ModDbResponseDelegate.Equals(obj) end

---@return function
function ModDbResponseDelegate.GetInvocationList() end

---@return number
function ModDbResponseDelegate.GetHashCode() end

---@return userdata
function ModDbResponseDelegate.get_Target() end

---@return userdata
function ModDbResponseDelegate.Clone() end

---@param args userdata
---@return userdata
function ModDbResponseDelegate.DynamicInvoke(args) end

---@return function
function ModDbResponseDelegate.get_Method() end

---@return userdata
function ModDbResponseDelegate.GetType() end

---@return string
function ModDbResponseDelegate.ToString() end


