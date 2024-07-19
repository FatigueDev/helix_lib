---@meta

---@class MapRegionGeneratorDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
MapRegionGeneratorDelegate = {}

---@param object userdata
---@param method IntPtr
---@return MapRegionGeneratorDelegate
function MapRegionGeneratorDelegate.ctor(object, method) end

---@param mapRegion IMapRegion 2D Map data for a 16x16 area of chunk columns. Holds a few maps for the chunk generation.
---@param regionX number
---@param regionZ number
---@param chunkGenParams? ITreeAttribute Represents a List of nestable Attributes
function MapRegionGeneratorDelegate.Invoke(mapRegion, regionX, regionZ, chunkGenParams) end

---@param mapRegion IMapRegion 2D Map data for a 16x16 area of chunk columns. Holds a few maps for the chunk generation.
---@param regionX number
---@param regionZ number
---@param chunkGenParams ITreeAttribute Represents a List of nestable Attributes
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function MapRegionGeneratorDelegate.BeginInvoke(mapRegion, regionX, regionZ, chunkGenParams, callback, object) end

---@param result IAsyncResult
function MapRegionGeneratorDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function MapRegionGeneratorDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function MapRegionGeneratorDelegate.Equals(obj) end

---@return function
function MapRegionGeneratorDelegate.GetInvocationList() end

---@return number
function MapRegionGeneratorDelegate.GetHashCode() end

---@return userdata
function MapRegionGeneratorDelegate.get_Target() end

---@return userdata
function MapRegionGeneratorDelegate.Clone() end

---@param args userdata
---@return userdata
function MapRegionGeneratorDelegate.DynamicInvoke(args) end

---@return function
function MapRegionGeneratorDelegate.get_Method() end

---@return userdata
function MapRegionGeneratorDelegate.GetType() end

---@return string
function MapRegionGeneratorDelegate.ToString() end


