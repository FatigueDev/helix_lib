---@meta

---@class OnGamePauseResume: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
OnGamePauseResume = {}

---@param object userdata
---@param method IntPtr
---@return OnGamePauseResume
function OnGamePauseResume.ctor(object, method) end

---@param isPaused boolean
function OnGamePauseResume.Invoke(isPaused) end

---@param isPaused boolean
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function OnGamePauseResume.BeginInvoke(isPaused, callback, object) end

---@param result IAsyncResult
function OnGamePauseResume.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function OnGamePauseResume.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function OnGamePauseResume.Equals(obj) end

---@return function
function OnGamePauseResume.GetInvocationList() end

---@return number
function OnGamePauseResume.GetHashCode() end

---@return userdata
function OnGamePauseResume.get_Target() end

---@return userdata
function OnGamePauseResume.Clone() end

---@param args userdata
---@return userdata
function OnGamePauseResume.DynamicInvoke(args) end

---@return function
function OnGamePauseResume.get_Method() end

---@return userdata
function OnGamePauseResume.GetType() end

---@return string
function OnGamePauseResume.ToString() end


