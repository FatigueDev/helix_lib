---@meta

---@class FindProfileByNameDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
FindProfileByNameDelegate = {}

---@param object userdata
---@param method IntPtr
---@return FindProfileByNameDelegate
function FindProfileByNameDelegate.ctor(object, method) end

---@param session IntPtr
---@param profileName string
---@param profile IntPtr&
---@return number
function FindProfileByNameDelegate.Invoke(session, profileName, profile) end

---@param session IntPtr
---@param profileName string
---@param profile IntPtr&
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function FindProfileByNameDelegate.BeginInvoke(session, profileName, profile, callback, object) end

---@param profile IntPtr&
---@param result IAsyncResult
---@return number
function FindProfileByNameDelegate.EndInvoke(profile, result) end

---@param info SerializationInfo
---@param context StreamingContext
function FindProfileByNameDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function FindProfileByNameDelegate.Equals(obj) end

---@return function
function FindProfileByNameDelegate.GetInvocationList() end

---@return number
function FindProfileByNameDelegate.GetHashCode() end

---@return userdata
function FindProfileByNameDelegate.get_Target() end

---@return userdata
function FindProfileByNameDelegate.Clone() end

---@param args userdata
---@return userdata
function FindProfileByNameDelegate.DynamicInvoke(args) end

---@return function
function FindProfileByNameDelegate.get_Method() end

---@return userdata
function FindProfileByNameDelegate.GetType() end

---@return string
function FindProfileByNameDelegate.ToString() end


