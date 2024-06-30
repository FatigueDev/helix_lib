---@meta

---@class VisibleTestDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
VisibleTestDelegate = {}

---@param object userdata
---@param method IntPtr
---@return VisibleTestDelegate
function VisibleTestDelegate.ctor(object, method) end

---@param culler FrustumCulling
---@return boolean
function VisibleTestDelegate.Invoke(culler) end

---@param culler FrustumCulling
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function VisibleTestDelegate.BeginInvoke(culler, callback, object) end

---@param result IAsyncResult
---@return boolean
function VisibleTestDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function VisibleTestDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function VisibleTestDelegate.Equals(obj) end

---@return function
function VisibleTestDelegate.GetInvocationList() end

---@return number
function VisibleTestDelegate.GetHashCode() end

---@return userdata
function VisibleTestDelegate.get_Target() end

---@return userdata
function VisibleTestDelegate.Clone() end

---@param args userdata
---@return userdata
function VisibleTestDelegate.DynamicInvoke(args) end

---@return function
function VisibleTestDelegate.get_Method() end

---@return userdata
function VisibleTestDelegate.GetType() end

---@return string
function VisibleTestDelegate.ToString() end


