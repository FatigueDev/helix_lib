---@meta

-- Return false to stop spawning particles
---@class ContinousParticleSpawnTaskDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
ContinousParticleSpawnTaskDelegate = {}

---@param object userdata
---@param method IntPtr
---@return ContinousParticleSpawnTaskDelegate
function ContinousParticleSpawnTaskDelegate.ctor(object, method) end

---@param dt number
---@param manager IAsyncParticleManager
---@return boolean
function ContinousParticleSpawnTaskDelegate.Invoke(dt, manager) end

---@param dt number
---@param manager IAsyncParticleManager
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function ContinousParticleSpawnTaskDelegate.BeginInvoke(dt, manager, callback, object) end

---@param result IAsyncResult
---@return boolean
function ContinousParticleSpawnTaskDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function ContinousParticleSpawnTaskDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function ContinousParticleSpawnTaskDelegate.Equals(obj) end

---@return function
function ContinousParticleSpawnTaskDelegate.GetInvocationList() end

---@return number
function ContinousParticleSpawnTaskDelegate.GetHashCode() end

---@return userdata
function ContinousParticleSpawnTaskDelegate.get_Target() end

---@return userdata
function ContinousParticleSpawnTaskDelegate.Clone() end

---@param args userdata
---@return userdata
function ContinousParticleSpawnTaskDelegate.DynamicInvoke(args) end

---@return function
function ContinousParticleSpawnTaskDelegate.get_Method() end

---@return userdata
function ContinousParticleSpawnTaskDelegate.GetType() end

---@return string
function ContinousParticleSpawnTaskDelegate.ToString() end


