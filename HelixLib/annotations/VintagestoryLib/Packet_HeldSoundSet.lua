---@meta

---@class Packet_HeldSoundSet
---@field Idle string
---@field Equip string
---@field Unequip string
---@field Attack string
---@field IdleFieldID number
---@field EquipFieldID number
---@field UnequipFieldID number
---@field AttackFieldID number
Packet_HeldSoundSet = {}

---@return Packet_HeldSoundSet
function Packet_HeldSoundSet.ctor() end

---@param value string
function Packet_HeldSoundSet.SetIdle(value) end

---@param value string
function Packet_HeldSoundSet.SetEquip(value) end

---@param value string
function Packet_HeldSoundSet.SetUnequip(value) end

---@param value string
function Packet_HeldSoundSet.SetAttack(value) end

---@return userdata
function Packet_HeldSoundSet.GetType() end

---@return string
function Packet_HeldSoundSet.ToString() end

---@param obj userdata
---@return boolean
function Packet_HeldSoundSet.Equals(obj) end

---@return number
function Packet_HeldSoundSet.GetHashCode() end


