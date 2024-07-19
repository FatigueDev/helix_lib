---@meta

---@class DeleteProfileDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
DeleteProfileDelegate = {}

---@param object userdata
---@param method IntPtr
---@return DeleteProfileDelegate
function DeleteProfileDelegate.ctor(object, method) end

---@param session IntPtr
---@param profile IntPtr
---@return number
function DeleteProfileDelegate.Invoke(session, profile) end

---@param session IntPtr
---@param profile IntPtr
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function DeleteProfileDelegate.BeginInvoke(session, profile, callback, object) end

---@param result IAsyncResult
---@return number
function DeleteProfileDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function DeleteProfileDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function DeleteProfileDelegate.Equals(obj) end

---@return function
function DeleteProfileDelegate.GetInvocationList() end

---@return number
function DeleteProfileDelegate.GetHashCode() end

---@return userdata
function DeleteProfileDelegate.get_Target() end

---@return userdata
function DeleteProfileDelegate.Clone() end

---@param args userdata
---@return userdata
function DeleteProfileDelegate.DynamicInvoke(args) end

---@return function
function DeleteProfileDelegate.get_Method() end

---@return userdata
function DeleteProfileDelegate.GetType() end

---@return string
function DeleteProfileDelegate.ToString() end


