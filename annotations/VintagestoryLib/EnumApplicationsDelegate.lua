---@meta

---@class EnumApplicationsDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
EnumApplicationsDelegate = {}

---@param object userdata
---@param method IntPtr
---@return EnumApplicationsDelegate
function EnumApplicationsDelegate.ctor(object, method) end

---@param session IntPtr
---@param profile IntPtr
---@param startIndex number
---@param appCount number
---@param allApplications OptimusApplication*
---@return number
function EnumApplicationsDelegate.Invoke(session, profile, startIndex, appCount, allApplications) end

---@param session IntPtr
---@param profile IntPtr
---@param startIndex number
---@param appCount number
---@param allApplications OptimusApplication*
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function EnumApplicationsDelegate.BeginInvoke(session, profile, startIndex, appCount, allApplications, callback, object) end

---@param appCount number
---@param result IAsyncResult
---@return number
function EnumApplicationsDelegate.EndInvoke(appCount, result) end

---@param info SerializationInfo
---@param context StreamingContext
function EnumApplicationsDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function EnumApplicationsDelegate.Equals(obj) end

---@return function
function EnumApplicationsDelegate.GetInvocationList() end

---@return number
function EnumApplicationsDelegate.GetHashCode() end

---@return userdata
function EnumApplicationsDelegate.get_Target() end

---@return userdata
function EnumApplicationsDelegate.Clone() end

---@param args userdata
---@return userdata
function EnumApplicationsDelegate.DynamicInvoke(args) end

---@return function
function EnumApplicationsDelegate.get_Method() end

---@return userdata
function EnumApplicationsDelegate.GetType() end

---@return string
function EnumApplicationsDelegate.ToString() end


