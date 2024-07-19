---@meta

---@class ServerMapRegion:  IMapRegion
---@field OreMapVerticalDistortTop IntDataMap2D
---@field OreMapVerticalDistortBottom IntDataMap2D
---@field BlockPatchMaps table
---@field LandformMap IntDataMap2D
---@field ForestMap IntDataMap2D
---@field ClimateMap IntDataMap2D
---@field GeologicProvinceMap IntDataMap2D
---@field BushMap IntDataMap2D
---@field FlowerMap IntDataMap2D
---@field OreMaps table
---@field ModData table
---@field ModMaps table
---@field GeneratedStructures table
---@field RockStrata IntDataMap2D[]
---@field BeachMap IntDataMap2D
---@field UpheavelMap IntDataMap2D
---@field OceanMap IntDataMap2D
---@field DirtyForSaving boolean
---@field NeighbourRegionsChecked boolean
---@field loadedTotalMs number
ServerMapRegion = {}

---@return ServerMapRegion
function ServerMapRegion.ctor() end

---@return IntDataMap2D # A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function ServerMapRegion.get_OreMapVerticalDistortTop() end

---@param value IntDataMap2D A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function ServerMapRegion.set_OreMapVerticalDistortTop(value) end

---@return IntDataMap2D # A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function ServerMapRegion.get_OreMapVerticalDistortBottom() end

---@param value IntDataMap2D A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function ServerMapRegion.set_OreMapVerticalDistortBottom(value) end

---@return table
function ServerMapRegion.get_BlockPatchMaps() end

---@param value table
function ServerMapRegion.set_BlockPatchMaps(value) end

---@return ServerMapRegion
function ServerMapRegion.CreateNew() end

---@param newStructure GeneratedStructure
function ServerMapRegion.AddGeneratedStructure(newStructure) end

---@param serializedMapRegion number
---@return ServerMapRegion
function ServerMapRegion.FromBytes(serializedMapRegion) end

---@return number
function ServerMapRegion.ToBytes() end

---@param regionX number
---@param regionZ number
---@return Packet_Server
function ServerMapRegion.ToPacket(regionX, regionZ) end

---@param map IntDataMap2D A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
---@return Packet_IntMap
function ServerMapRegion.ToPacket(map) end

---@param key string
---@param data number
function ServerMapRegion.SetModdata(key, data) end

---@param key string
function ServerMapRegion.RemoveModdata(key) end

---@param key string
---@return number
function ServerMapRegion.GetModdata(key) end

---@param key string
---@param data T
function ServerMapRegion.SetModdata(key, data) end

---@param key string
---@return T
function ServerMapRegion.GetModdata(key) end

---@return userdata
function ServerMapRegion.GetType() end

---@return string
function ServerMapRegion.ToString() end

---@param obj userdata
---@return boolean
function ServerMapRegion.Equals(obj) end

---@return number
function ServerMapRegion.GetHashCode() end


