---@meta

---@class FileDropDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
FileDropDelegate = {}

---@param object userdata
---@param method IntPtr
---@return FileDropDelegate
function FileDropDelegate.ctor(object, method) end

---@param e FileDropEvent
function FileDropDelegate.Invoke(e) end

---@param e FileDropEvent
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function FileDropDelegate.BeginInvoke(e, callback, object) end

---@param result IAsyncResult
function FileDropDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function FileDropDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function FileDropDelegate.Equals(obj) end

---@return function
function FileDropDelegate.GetInvocationList() end

---@return number
function FileDropDelegate.GetHashCode() end

---@return userdata
function FileDropDelegate.get_Target() end

---@return userdata
function FileDropDelegate.Clone() end

---@param args userdata
---@return userdata
function FileDropDelegate.DynamicInvoke(args) end

---@return function
function FileDropDelegate.get_Method() end

---@return userdata
function FileDropDelegate.GetType() end

---@return string
function FileDropDelegate.ToString() end


