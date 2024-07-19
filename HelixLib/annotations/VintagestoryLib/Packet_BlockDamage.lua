---@meta

---@class Packet_BlockDamage
---@field PosX number
---@field PosY number
---@field PosZ number
---@field Facing number
---@field Damage number
---@field PosXFieldID number
---@field PosYFieldID number
---@field PosZFieldID number
---@field FacingFieldID number
---@field DamageFieldID number
Packet_BlockDamage = {}

---@return Packet_BlockDamage
function Packet_BlockDamage.ctor() end

---@param value number
function Packet_BlockDamage.SetPosX(value) end

---@param value number
function Packet_BlockDamage.SetPosY(value) end

---@param value number
function Packet_BlockDamage.SetPosZ(value) end

---@param value number
function Packet_BlockDamage.SetFacing(value) end

---@param value number
function Packet_BlockDamage.SetDamage(value) end

---@return userdata
function Packet_BlockDamage.GetType() end

---@return string
function Packet_BlockDamage.ToString() end

---@param obj userdata
---@return boolean
function Packet_BlockDamage.Equals(obj) end

---@return number
function Packet_BlockDamage.GetHashCode() end


