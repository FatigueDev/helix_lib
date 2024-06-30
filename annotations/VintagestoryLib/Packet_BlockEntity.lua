---@meta

---@class Packet_BlockEntity
---@field Classname string
---@field PosX number
---@field PosY number
---@field PosZ number
---@field Data number
---@field ClassnameFieldID number
---@field PosXFieldID number
---@field PosYFieldID number
---@field PosZFieldID number
---@field DataFieldID number
Packet_BlockEntity = {}

---@return Packet_BlockEntity
function Packet_BlockEntity.ctor() end

---@param value string
function Packet_BlockEntity.SetClassname(value) end

---@param value number
function Packet_BlockEntity.SetPosX(value) end

---@param value number
function Packet_BlockEntity.SetPosY(value) end

---@param value number
function Packet_BlockEntity.SetPosZ(value) end

---@param value number
function Packet_BlockEntity.SetData(value) end

---@return userdata
function Packet_BlockEntity.GetType() end

---@return string
function Packet_BlockEntity.ToString() end

---@param obj userdata
---@return boolean
function Packet_BlockEntity.Equals(obj) end

---@return number
function Packet_BlockEntity.GetHashCode() end


