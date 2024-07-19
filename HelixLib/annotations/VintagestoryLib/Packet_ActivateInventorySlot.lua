---@meta

---@class Packet_ActivateInventorySlot
---@field MouseButton number
---@field Modifiers number
---@field TargetInventoryId string
---@field TargetSlot number
---@field TargetLastChanged number
---@field TabIndex number
---@field Priority number
---@field Dir number
---@field MouseButtonFieldID number
---@field ModifiersFieldID number
---@field TargetInventoryIdFieldID number
---@field TargetSlotFieldID number
---@field TargetLastChangedFieldID number
---@field TabIndexFieldID number
---@field PriorityFieldID number
---@field DirFieldID number
Packet_ActivateInventorySlot = {}

---@return Packet_ActivateInventorySlot
function Packet_ActivateInventorySlot.ctor() end

---@param value number
function Packet_ActivateInventorySlot.SetMouseButton(value) end

---@param value number
function Packet_ActivateInventorySlot.SetModifiers(value) end

---@param value string
function Packet_ActivateInventorySlot.SetTargetInventoryId(value) end

---@param value number
function Packet_ActivateInventorySlot.SetTargetSlot(value) end

---@param value number
function Packet_ActivateInventorySlot.SetTargetLastChanged(value) end

---@param value number
function Packet_ActivateInventorySlot.SetTabIndex(value) end

---@param value number
function Packet_ActivateInventorySlot.SetPriority(value) end

---@param value number
function Packet_ActivateInventorySlot.SetDir(value) end

---@return userdata
function Packet_ActivateInventorySlot.GetType() end

---@return string
function Packet_ActivateInventorySlot.ToString() end

---@param obj userdata
---@return boolean
function Packet_ActivateInventorySlot.Equals(obj) end

---@return number
function Packet_ActivateInventorySlot.GetHashCode() end


