---@meta

---@class InitializeDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
InitializeDelegate = {}

---@param object userdata
---@param method IntPtr
---@return InitializeDelegate
function InitializeDelegate.ctor(object, method) end

---@return number
function InitializeDelegate.Invoke() end

---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function InitializeDelegate.BeginInvoke(callback, object) end

---@param result IAsyncResult
---@return number
function InitializeDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function InitializeDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function InitializeDelegate.Equals(obj) end

---@return function
function InitializeDelegate.GetInvocationList() end

---@return number
function InitializeDelegate.GetHashCode() end

---@return userdata
function InitializeDelegate.get_Target() end

---@return userdata
function InitializeDelegate.Clone() end

---@param args userdata
---@return userdata
function InitializeDelegate.DynamicInvoke(args) end

---@return function
function InitializeDelegate.get_Method() end

---@return userdata
function InitializeDelegate.GetType() end

---@return string
function InitializeDelegate.ToString() end


