---@meta

-- Should return sin(solar altitude angle). i.e. -1 for 90 degrees far below horizon, 0 for horizon and 1 for vertical
---@class SolarSphericalCoordsDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
SolarSphericalCoordsDelegate = {}

---@param object userdata
---@param method IntPtr
---@return SolarSphericalCoordsDelegate
function SolarSphericalCoordsDelegate.ctor(object, method) end

---@param posX number
---@param posZ number
---@param yearRel number
---@param dayRel number
---@return SolarSphericalCoords
function SolarSphericalCoordsDelegate.Invoke(posX, posZ, yearRel, dayRel) end

---@param posX number
---@param posZ number
---@param yearRel number
---@param dayRel number
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function SolarSphericalCoordsDelegate.BeginInvoke(posX, posZ, yearRel, dayRel, callback, object) end

---@param result IAsyncResult
---@return SolarSphericalCoords
function SolarSphericalCoordsDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function SolarSphericalCoordsDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function SolarSphericalCoordsDelegate.Equals(obj) end

---@return function
function SolarSphericalCoordsDelegate.GetInvocationList() end

---@return number
function SolarSphericalCoordsDelegate.GetHashCode() end

---@return userdata
function SolarSphericalCoordsDelegate.get_Target() end

---@return userdata
function SolarSphericalCoordsDelegate.Clone() end

---@param args userdata
---@return userdata
function SolarSphericalCoordsDelegate.DynamicInvoke(args) end

---@return function
function SolarSphericalCoordsDelegate.get_Method() end

---@return userdata
function SolarSphericalCoordsDelegate.GetType() end

---@return string
function SolarSphericalCoordsDelegate.ToString() end


