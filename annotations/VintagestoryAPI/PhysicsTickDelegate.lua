---@meta

-- Called after a physics tick has happened
---@class PhysicsTickDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
PhysicsTickDelegate = {}

---@param object userdata
---@param method IntPtr
---@return PhysicsTickDelegate
function PhysicsTickDelegate.ctor(object, method) end

---@param accum number
---@param prevPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function PhysicsTickDelegate.Invoke(accum, prevPos) end

---@param accum number
---@param prevPos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function PhysicsTickDelegate.BeginInvoke(accum, prevPos, callback, object) end

---@param result IAsyncResult
function PhysicsTickDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function PhysicsTickDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function PhysicsTickDelegate.Equals(obj) end

---@return function
function PhysicsTickDelegate.GetInvocationList() end

---@return number
function PhysicsTickDelegate.GetHashCode() end

---@return userdata
function PhysicsTickDelegate.get_Target() end

---@return userdata
function PhysicsTickDelegate.Clone() end

---@param args userdata
---@return userdata
function PhysicsTickDelegate.DynamicInvoke(args) end

---@return function
function PhysicsTickDelegate.get_Method() end

---@return userdata
function PhysicsTickDelegate.GetType() end

---@return string
function PhysicsTickDelegate.ToString() end


