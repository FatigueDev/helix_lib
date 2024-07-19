---@meta

---@class ModInstallProgressUpdate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
ModInstallProgressUpdate = {}

---@param object userdata
---@param method IntPtr
---@return ModInstallProgressUpdate
function ModInstallProgressUpdate.ctor(object, method) end

---@param message string
---@param installState EnumModInstallState
function ModInstallProgressUpdate.Invoke(message, installState) end

---@param message string
---@param installState EnumModInstallState
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function ModInstallProgressUpdate.BeginInvoke(message, installState, callback, object) end

---@param result IAsyncResult
function ModInstallProgressUpdate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function ModInstallProgressUpdate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function ModInstallProgressUpdate.Equals(obj) end

---@return function
function ModInstallProgressUpdate.GetInvocationList() end

---@return number
function ModInstallProgressUpdate.GetHashCode() end

---@return userdata
function ModInstallProgressUpdate.get_Target() end

---@return userdata
function ModInstallProgressUpdate.Clone() end

---@param args userdata
---@return userdata
function ModInstallProgressUpdate.DynamicInvoke(args) end

---@return function
function ModInstallProgressUpdate.get_Method() end

---@return userdata
function ModInstallProgressUpdate.GetType() end

---@return string
function ModInstallProgressUpdate.ToString() end


