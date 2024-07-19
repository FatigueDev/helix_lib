---@meta

---@class Packet_ServerLevelInitialize
---@field ServerChunkSize number
---@field ServerMapChunkSize number
---@field ServerMapRegionSize number
---@field MaxViewDistance number
---@field ServerChunkSizeFieldID number
---@field ServerMapChunkSizeFieldID number
---@field ServerMapRegionSizeFieldID number
---@field MaxViewDistanceFieldID number
Packet_ServerLevelInitialize = {}

---@return Packet_ServerLevelInitialize
function Packet_ServerLevelInitialize.ctor() end

---@param value number
function Packet_ServerLevelInitialize.SetServerChunkSize(value) end

---@param value number
function Packet_ServerLevelInitialize.SetServerMapChunkSize(value) end

---@param value number
function Packet_ServerLevelInitialize.SetServerMapRegionSize(value) end

---@param value number
function Packet_ServerLevelInitialize.SetMaxViewDistance(value) end

---@return userdata
function Packet_ServerLevelInitialize.GetType() end

---@return string
function Packet_ServerLevelInitialize.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerLevelInitialize.Equals(obj) end

---@return number
function Packet_ServerLevelInitialize.GetHashCode() end


