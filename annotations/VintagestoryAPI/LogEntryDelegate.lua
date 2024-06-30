---@meta

---@class LogEntryDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
LogEntryDelegate = {}

---@param object userdata
---@param method IntPtr
---@return LogEntryDelegate
function LogEntryDelegate.ctor(object, method) end

---@param logType EnumLogType
---@param message string
---@param args userdata
function LogEntryDelegate.Invoke(logType, message, args) end

---@param logType EnumLogType
---@param message string
---@param args userdata
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function LogEntryDelegate.BeginInvoke(logType, message, args, callback, object) end

---@param result IAsyncResult
function LogEntryDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function LogEntryDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function LogEntryDelegate.Equals(obj) end

---@return function
function LogEntryDelegate.GetInvocationList() end

---@return number
function LogEntryDelegate.GetHashCode() end

---@return userdata
function LogEntryDelegate.get_Target() end

---@return userdata
function LogEntryDelegate.Clone() end

---@param args userdata
---@return userdata
function LogEntryDelegate.DynamicInvoke(args) end

---@return function
function LogEntryDelegate.get_Method() end

---@return userdata
function LogEntryDelegate.GetType() end

---@return string
function LogEntryDelegate.ToString() end


