---@meta

---@class OnGetWindSpeedDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
OnGetWindSpeedDelegate = {}

---@param object userdata
---@param method IntPtr
---@return OnGetWindSpeedDelegate
function OnGetWindSpeedDelegate.ctor(object, method) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param windSpeed Vec3d&
function OnGetWindSpeedDelegate.Invoke(pos, windSpeed) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param windSpeed Vec3d&
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function OnGetWindSpeedDelegate.BeginInvoke(pos, windSpeed, callback, object) end

---@param windSpeed Vec3d&
---@param result IAsyncResult
function OnGetWindSpeedDelegate.EndInvoke(windSpeed, result) end

---@param info SerializationInfo
---@param context StreamingContext
function OnGetWindSpeedDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function OnGetWindSpeedDelegate.Equals(obj) end

---@return function
function OnGetWindSpeedDelegate.GetInvocationList() end

---@return number
function OnGetWindSpeedDelegate.GetHashCode() end

---@return userdata
function OnGetWindSpeedDelegate.get_Target() end

---@return userdata
function OnGetWindSpeedDelegate.Clone() end

---@param args userdata
---@return userdata
function OnGetWindSpeedDelegate.DynamicInvoke(args) end

---@return function
function OnGetWindSpeedDelegate.get_Method() end

---@return userdata
function OnGetWindSpeedDelegate.GetType() end

---@return string
function OnGetWindSpeedDelegate.ToString() end


