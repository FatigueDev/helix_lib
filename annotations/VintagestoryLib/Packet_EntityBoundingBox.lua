---@meta

---@class Packet_EntityBoundingBox
---@field SizeX number
---@field SizeY number
---@field SizeZ number
---@field SizeXFieldID number
---@field SizeYFieldID number
---@field SizeZFieldID number
Packet_EntityBoundingBox = {}

---@return Packet_EntityBoundingBox
function Packet_EntityBoundingBox.ctor() end

---@param value number
function Packet_EntityBoundingBox.SetSizeX(value) end

---@param value number
function Packet_EntityBoundingBox.SetSizeY(value) end

---@param value number
function Packet_EntityBoundingBox.SetSizeZ(value) end

---@return userdata
function Packet_EntityBoundingBox.GetType() end

---@return string
function Packet_EntityBoundingBox.ToString() end

---@param obj userdata
---@return boolean
function Packet_EntityBoundingBox.Equals(obj) end

---@return number
function Packet_EntityBoundingBox.GetHashCode() end


