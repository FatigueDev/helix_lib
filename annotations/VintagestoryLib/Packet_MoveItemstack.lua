---@meta

---@class Packet_MoveItemstack
---@field SourceInventoryId string
---@field TargetInventoryId string
---@field SourceSlot number
---@field TargetSlot number
---@field Quantity number
---@field SourceLastChanged number
---@field TargetLastChanged number
---@field MouseButton number
---@field Modifiers number
---@field Priority number
---@field TabIndex number
---@field SourceInventoryIdFieldID number
---@field TargetInventoryIdFieldID number
---@field SourceSlotFieldID number
---@field TargetSlotFieldID number
---@field QuantityFieldID number
---@field SourceLastChangedFieldID number
---@field TargetLastChangedFieldID number
---@field MouseButtonFieldID number
---@field ModifiersFieldID number
---@field PriorityFieldID number
---@field TabIndexFieldID number
Packet_MoveItemstack = {}

---@return Packet_MoveItemstack
function Packet_MoveItemstack.ctor() end

---@param value string
function Packet_MoveItemstack.SetSourceInventoryId(value) end

---@param value string
function Packet_MoveItemstack.SetTargetInventoryId(value) end

---@param value number
function Packet_MoveItemstack.SetSourceSlot(value) end

---@param value number
function Packet_MoveItemstack.SetTargetSlot(value) end

---@param value number
function Packet_MoveItemstack.SetQuantity(value) end

---@param value number
function Packet_MoveItemstack.SetSourceLastChanged(value) end

---@param value number
function Packet_MoveItemstack.SetTargetLastChanged(value) end

---@param value number
function Packet_MoveItemstack.SetMouseButton(value) end

---@param value number
function Packet_MoveItemstack.SetModifiers(value) end

---@param value number
function Packet_MoveItemstack.SetPriority(value) end

---@param value number
function Packet_MoveItemstack.SetTabIndex(value) end

---@return userdata
function Packet_MoveItemstack.GetType() end

---@return string
function Packet_MoveItemstack.ToString() end

---@param obj userdata
---@return boolean
function Packet_MoveItemstack.Equals(obj) end

---@return number
function Packet_MoveItemstack.GetHashCode() end


