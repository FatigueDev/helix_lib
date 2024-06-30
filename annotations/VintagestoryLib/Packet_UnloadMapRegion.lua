---@meta

---@class Packet_UnloadMapRegion
---@field RegionX number
---@field RegionZ number
---@field RegionXFieldID number
---@field RegionZFieldID number
Packet_UnloadMapRegion = {}

---@return Packet_UnloadMapRegion
function Packet_UnloadMapRegion.ctor() end

---@param value number
function Packet_UnloadMapRegion.SetRegionX(value) end

---@param value number
function Packet_UnloadMapRegion.SetRegionZ(value) end

---@return userdata
function Packet_UnloadMapRegion.GetType() end

---@return string
function Packet_UnloadMapRegion.ToString() end

---@param obj userdata
---@return boolean
function Packet_UnloadMapRegion.Equals(obj) end

---@return number
function Packet_UnloadMapRegion.GetHashCode() end


