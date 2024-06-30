---@meta

-- Triggered when the server loaded a map region from disk or generated a new one
---@class MapRegionLoadedDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
MapRegionLoadedDelegate = {}

---@param object userdata
---@param method IntPtr
---@return MapRegionLoadedDelegate
function MapRegionLoadedDelegate.ctor(object, method) end

---@param mapCoord Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@param region IMapRegion 2D Map data for a 16x16 area of chunk columns. Holds a few maps for the chunk generation.
function MapRegionLoadedDelegate.Invoke(mapCoord, region) end

---@param mapCoord Vec2i Represents a vector of 2 ints. Go bug Tyron if you need more utility methods in this class.
---@param region IMapRegion 2D Map data for a 16x16 area of chunk columns. Holds a few maps for the chunk generation.
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function MapRegionLoadedDelegate.BeginInvoke(mapCoord, region, callback, object) end

---@param result IAsyncResult
function MapRegionLoadedDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function MapRegionLoadedDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function MapRegionLoadedDelegate.Equals(obj) end

---@return function
function MapRegionLoadedDelegate.GetInvocationList() end

---@return number
function MapRegionLoadedDelegate.GetHashCode() end

---@return userdata
function MapRegionLoadedDelegate.get_Target() end

---@return userdata
function MapRegionLoadedDelegate.Clone() end

---@param args userdata
---@return userdata
function MapRegionLoadedDelegate.DynamicInvoke(args) end

---@return function
function MapRegionLoadedDelegate.get_Method() end

---@return userdata
function MapRegionLoadedDelegate.GetType() end

---@return string
function MapRegionLoadedDelegate.ToString() end


