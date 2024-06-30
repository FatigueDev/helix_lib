---@meta

---@class Packet_MapRegion
---@field RegionX number
---@field RegionZ number
---@field LandformMap Packet_IntMap
---@field ForestMap Packet_IntMap
---@field ClimateMap Packet_IntMap
---@field GeologicProvinceMap Packet_IntMap
---@field GeneratedStructures Packet_GeneratedStructure[]
---@field GeneratedStructuresCount number
---@field GeneratedStructuresLength number
---@field Moddata number
---@field RegionXFieldID number
---@field RegionZFieldID number
---@field LandformMapFieldID number
---@field ForestMapFieldID number
---@field ClimateMapFieldID number
---@field GeologicProvinceMapFieldID number
---@field GeneratedStructuresFieldID number
---@field ModdataFieldID number
Packet_MapRegion = {}

---@return Packet_MapRegion
function Packet_MapRegion.ctor() end

---@param value number
function Packet_MapRegion.SetRegionX(value) end

---@param value number
function Packet_MapRegion.SetRegionZ(value) end

---@param value Packet_IntMap
function Packet_MapRegion.SetLandformMap(value) end

---@param value Packet_IntMap
function Packet_MapRegion.SetForestMap(value) end

---@param value Packet_IntMap
function Packet_MapRegion.SetClimateMap(value) end

---@param value Packet_IntMap
function Packet_MapRegion.SetGeologicProvinceMap(value) end

---@return Packet_GeneratedStructure[]
function Packet_MapRegion.GetGeneratedStructures() end

---@param value Packet_GeneratedStructure[]
---@param count number
---@param length number
function Packet_MapRegion.SetGeneratedStructures(value, count, length) end

---@param value Packet_GeneratedStructure[]
function Packet_MapRegion.SetGeneratedStructures(value) end

---@return number
function Packet_MapRegion.GetGeneratedStructuresCount() end

---@param value Packet_GeneratedStructure
function Packet_MapRegion.GeneratedStructuresAdd(value) end

---@param value number
function Packet_MapRegion.SetModdata(value) end

---@return userdata
function Packet_MapRegion.GetType() end

---@return string
function Packet_MapRegion.ToString() end

---@param obj userdata
---@return boolean
function Packet_MapRegion.Equals(obj) end

---@return number
function Packet_MapRegion.GetHashCode() end


