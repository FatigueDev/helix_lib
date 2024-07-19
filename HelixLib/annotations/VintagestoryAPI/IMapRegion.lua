---@meta

-- 2D Map data for a 16x16 area of chunk columns. Holds a few maps for the chunk generation.
---@class IMapRegion
---@field BlockPatchMaps table Density maps for block patches
---@field FlowerMap IntDataMap2D Currently unuseds
---@field ShrubMap IntDataMap2D Holds a shrub density map
---@field ForestMap IntDataMap2D Holds a forest density map
---@field BeachMap IntDataMap2D Holds a beach strength map
---@field OceanMap IntDataMap2D
---@field UpheavelMap IntDataMap2D
---@field LandformMap IntDataMap2D Holds the landform indices
---@field ClimateMap IntDataMap2D Holds temperature and rain fall. 16-23 bits = Red = temperature 8-15 bits = Green = rain 0-7 bits = Blue = unused 
---@field GeologicProvinceMap IntDataMap2D Holds the geologic province indices
---@field RockStrata IntDataMap2D[] Holds the rock strata noise maps
---@field ModData table Holds the raw mod data.
---@field ModMaps table Holds the mod mappings.
---@field OreMaps table Gets the ore map for the given item.
---@field OreMapVerticalDistortTop IntDataMap2D
---@field OreMapVerticalDistortBottom IntDataMap2D
---@field GeneratedStructures table List of structures that were generated in this region
---@field DirtyForSaving boolean
IMapRegion = {}


---@return table
function IMapRegion.get_BlockPatchMaps() end

---@param value table
function IMapRegion.set_BlockPatchMaps(value) end

---@return IntDataMap2D # A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function IMapRegion.get_FlowerMap() end

---@param value IntDataMap2D A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function IMapRegion.set_FlowerMap(value) end

---@return IntDataMap2D # A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function IMapRegion.get_ShrubMap() end

---@param value IntDataMap2D A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function IMapRegion.set_ShrubMap(value) end

---@return IntDataMap2D # A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function IMapRegion.get_ForestMap() end

---@param value IntDataMap2D A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function IMapRegion.set_ForestMap(value) end

---@return IntDataMap2D # A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function IMapRegion.get_BeachMap() end

---@param value IntDataMap2D A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function IMapRegion.set_BeachMap(value) end

---@return IntDataMap2D # A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function IMapRegion.get_OceanMap() end

---@param value IntDataMap2D A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function IMapRegion.set_OceanMap(value) end

---@return IntDataMap2D # A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function IMapRegion.get_UpheavelMap() end

---@param value IntDataMap2D A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function IMapRegion.set_UpheavelMap(value) end

---@return IntDataMap2D # A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function IMapRegion.get_LandformMap() end

---@param value IntDataMap2D A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function IMapRegion.set_LandformMap(value) end

---@return IntDataMap2D # A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function IMapRegion.get_ClimateMap() end

---@param value IntDataMap2D A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function IMapRegion.set_ClimateMap(value) end

---@return IntDataMap2D # A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function IMapRegion.get_GeologicProvinceMap() end

---@param value IntDataMap2D A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function IMapRegion.set_GeologicProvinceMap(value) end

---@return IntDataMap2D[] # A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function IMapRegion.get_RockStrata() end

---@param value IntDataMap2D[] A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function IMapRegion.set_RockStrata(value) end

---@return table
function IMapRegion.get_ModData() end

---@return table
function IMapRegion.get_ModMaps() end

---@return table
function IMapRegion.get_OreMaps() end

---@return IntDataMap2D # A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function IMapRegion.get_OreMapVerticalDistortTop() end

---@return IntDataMap2D # A datastructure to hold 2 dimensional data in the form of ints.  Can be used to perfrom bilinear interpolation between individual values
function IMapRegion.get_OreMapVerticalDistortBottom() end

---@return table
function IMapRegion.get_GeneratedStructures() end

---@return boolean
function IMapRegion.get_DirtyForSaving() end

---@param value boolean
function IMapRegion.set_DirtyForSaving(value) end

-- Server: Allows setting of arbitrary, permanently stored moddata of this map region.
-- Client: Not implemented. Map chunk Moddata is not synced from server to client
---@param key string
---@param data number
function IMapRegion.SetModdata(key, data) end

-- Server: Removes the permanently stored data. 
-- Client: Not implemented. Map chunk Moddata is not synced from server to client
---@param key string
function IMapRegion.RemoveModdata(key) end

-- Server: Retrieve arbitrary, permanently stored mod data
-- Client: Not implemented. Map chunk Moddata is not synced from server to client
---@param key string
---@return number
function IMapRegion.GetModdata(key) end

---@param key string
---@param data T
function IMapRegion.SetModdata(key, data) end

-- Server: Retrieve arbitrary, permanently stored mod data
-- Client: Not implemented. Map chunk Moddata is not synced from server to client
---@param key string
---@return T
function IMapRegion.GetModdata(key) end

-- A thread-safe way to add a new GeneratedStructure, also marks DirtyForSaving = true
---@param generatedStructure GeneratedStructure
function IMapRegion.AddGeneratedStructure(generatedStructure) end


