---@meta

-- Triggered just before a map region gets unloaded
---@class MapRegionUnloadDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
MapRegionUnloadDelegate = {}

---@param object userdata
---@param method IntPtr
---@return MapRegionUnloadDelegate
function MapRegionUnloadDelegate.ctor(object, method) end

---@param mapCoord Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@param region IMapRegion 2D Map data for a 16x16 area of chunk columns. Holds a few maps for the chunk generation.
function MapRegionUnloadDelegate.Invoke(mapCoord, region) end

---@param mapCoord Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@param region IMapRegion 2D Map data for a 16x16 area of chunk columns. Holds a few maps for the chunk generation.
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function MapRegionUnloadDelegate.BeginInvoke(mapCoord, region, callback, object) end

---@param result IAsyncResult
function MapRegionUnloadDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function MapRegionUnloadDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function MapRegionUnloadDelegate.Equals(obj) end

---@return function
function MapRegionUnloadDelegate.GetInvocationList() end

---@return number
function MapRegionUnloadDelegate.GetHashCode() end

---@return userdata
function MapRegionUnloadDelegate.get_Target() end

---@return userdata
function MapRegionUnloadDelegate.Clone() end

---@param args userdata
---@return userdata
function MapRegionUnloadDelegate.DynamicInvoke(args) end

---@return function
function MapRegionUnloadDelegate.get_Method() end

---@return userdata
function MapRegionUnloadDelegate.GetType() end

---@return string
function MapRegionUnloadDelegate.ToString() end


