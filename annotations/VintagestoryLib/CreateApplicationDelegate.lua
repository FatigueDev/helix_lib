---@meta

---@class CreateApplicationDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
CreateApplicationDelegate = {}

---@param object userdata
---@param method IntPtr
---@return CreateApplicationDelegate
function CreateApplicationDelegate.ctor(object, method) end

---@param session IntPtr
---@param profile IntPtr
---@param application OptimusApplication&
---@return number
function CreateApplicationDelegate.Invoke(session, profile, application) end

---@param session IntPtr
---@param profile IntPtr
---@param application OptimusApplication&
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function CreateApplicationDelegate.BeginInvoke(session, profile, application, callback, object) end

---@param application OptimusApplication&
---@param result IAsyncResult
---@return number
function CreateApplicationDelegate.EndInvoke(application, result) end

---@param info SerializationInfo
---@param context StreamingContext
function CreateApplicationDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function CreateApplicationDelegate.Equals(obj) end

---@return function
function CreateApplicationDelegate.GetInvocationList() end

---@return number
function CreateApplicationDelegate.GetHashCode() end

---@return userdata
function CreateApplicationDelegate.get_Target() end

---@return userdata
function CreateApplicationDelegate.Clone() end

---@param args userdata
---@return userdata
function CreateApplicationDelegate.DynamicInvoke(args) end

---@return function
function CreateApplicationDelegate.get_Method() end

---@return userdata
function CreateApplicationDelegate.GetType() end

---@return string
function CreateApplicationDelegate.ToString() end


