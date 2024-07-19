---@meta

---@class OnAmbientSoundScanCompleteDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
OnAmbientSoundScanCompleteDelegate = {}

---@param object userdata
---@param method IntPtr
---@return OnAmbientSoundScanCompleteDelegate
function OnAmbientSoundScanCompleteDelegate.ctor(object, method) end

---@param ambientSounds table
function OnAmbientSoundScanCompleteDelegate.Invoke(ambientSounds) end

---@param ambientSounds table
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function OnAmbientSoundScanCompleteDelegate.BeginInvoke(ambientSounds, callback, object) end

---@param result IAsyncResult
function OnAmbientSoundScanCompleteDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function OnAmbientSoundScanCompleteDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function OnAmbientSoundScanCompleteDelegate.Equals(obj) end

---@return function
function OnAmbientSoundScanCompleteDelegate.GetInvocationList() end

---@return number
function OnAmbientSoundScanCompleteDelegate.GetHashCode() end

---@return userdata
function OnAmbientSoundScanCompleteDelegate.get_Target() end

---@return userdata
function OnAmbientSoundScanCompleteDelegate.Clone() end

---@param args userdata
---@return userdata
function OnAmbientSoundScanCompleteDelegate.DynamicInvoke(args) end

---@return function
function OnAmbientSoundScanCompleteDelegate.get_Method() end

---@return userdata
function OnAmbientSoundScanCompleteDelegate.GetType() end

---@return string
function OnAmbientSoundScanCompleteDelegate.ToString() end


