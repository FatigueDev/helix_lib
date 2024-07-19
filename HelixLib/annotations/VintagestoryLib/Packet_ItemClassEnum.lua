---@meta

---@class Packet_ItemClassEnum
---@field Block number
---@field Item number
Packet_ItemClassEnum = {}

---@return Packet_ItemClassEnum
function Packet_ItemClassEnum.ctor() end

---@return userdata
function Packet_ItemClassEnum.GetType() end

---@return string
function Packet_ItemClassEnum.ToString() end

---@param obj userdata
---@return boolean
function Packet_ItemClassEnum.Equals(obj) end

---@return number
function Packet_ItemClassEnum.GetHashCode() end


