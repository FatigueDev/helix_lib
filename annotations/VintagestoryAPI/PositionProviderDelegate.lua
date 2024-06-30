---@meta

---@class PositionProviderDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
PositionProviderDelegate = {}

---@param object userdata
---@param method IntPtr
---@return PositionProviderDelegate
function PositionProviderDelegate.ctor(object, method) end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function PositionProviderDelegate.Invoke() end

---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function PositionProviderDelegate.BeginInvoke(callback, object) end

---@param result IAsyncResult
---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function PositionProviderDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function PositionProviderDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function PositionProviderDelegate.Equals(obj) end

---@return function
function PositionProviderDelegate.GetInvocationList() end

---@return number
function PositionProviderDelegate.GetHashCode() end

---@return userdata
function PositionProviderDelegate.get_Target() end

---@return userdata
function PositionProviderDelegate.Clone() end

---@param args userdata
---@return userdata
function PositionProviderDelegate.DynamicInvoke(args) end

---@return function
function PositionProviderDelegate.get_Method() end

---@return userdata
function PositionProviderDelegate.GetType() end

---@return string
function PositionProviderDelegate.ToString() end


