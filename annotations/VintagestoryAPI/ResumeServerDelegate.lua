---@meta

---@class ResumeServerDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
ResumeServerDelegate = {}

---@param object userdata
---@param method IntPtr
---@return ResumeServerDelegate
function ResumeServerDelegate.ctor(object, method) end

function ResumeServerDelegate.Invoke() end

---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function ResumeServerDelegate.BeginInvoke(callback, object) end

---@param result IAsyncResult
function ResumeServerDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function ResumeServerDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function ResumeServerDelegate.Equals(obj) end

---@return function
function ResumeServerDelegate.GetInvocationList() end

---@return number
function ResumeServerDelegate.GetHashCode() end

---@return userdata
function ResumeServerDelegate.get_Target() end

---@return userdata
function ResumeServerDelegate.Clone() end

---@param args userdata
---@return userdata
function ResumeServerDelegate.DynamicInvoke(args) end

---@return function
function ResumeServerDelegate.get_Method() end

---@return userdata
function ResumeServerDelegate.GetType() end

---@return string
function ResumeServerDelegate.ToString() end


