---@meta

---@class CreateProfileDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
CreateProfileDelegate = {}

---@param object userdata
---@param method IntPtr
---@return CreateProfileDelegate
function CreateProfileDelegate.ctor(object, method) end

---@param session IntPtr
---@param profileInfo OptimusProfile&
---@param profile IntPtr&
---@return number
function CreateProfileDelegate.Invoke(session, profileInfo, profile) end

---@param session IntPtr
---@param profileInfo OptimusProfile&
---@param profile IntPtr&
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function CreateProfileDelegate.BeginInvoke(session, profileInfo, profile, callback, object) end

---@param profileInfo OptimusProfile&
---@param profile IntPtr&
---@param result IAsyncResult
---@return number
function CreateProfileDelegate.EndInvoke(profileInfo, profile, result) end

---@param info SerializationInfo
---@param context StreamingContext
function CreateProfileDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function CreateProfileDelegate.Equals(obj) end

---@return function
function CreateProfileDelegate.GetInvocationList() end

---@return number
function CreateProfileDelegate.GetHashCode() end

---@return userdata
function CreateProfileDelegate.get_Target() end

---@return userdata
function CreateProfileDelegate.Clone() end

---@param args userdata
---@return userdata
function CreateProfileDelegate.DynamicInvoke(args) end

---@return function
function CreateProfileDelegate.get_Method() end

---@return userdata
function CreateProfileDelegate.GetType() end

---@return string
function CreateProfileDelegate.ToString() end


