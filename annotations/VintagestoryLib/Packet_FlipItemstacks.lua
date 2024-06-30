---@meta

---@class Packet_FlipItemstacks
---@field SourceInventoryId string
---@field TargetInventoryId string
---@field SourceSlot number
---@field TargetSlot number
---@field SourceLastChanged number
---@field TargetLastChanged number
---@field SourceTabIndex number
---@field TargetTabIndex number
---@field SourceInventoryIdFieldID number
---@field TargetInventoryIdFieldID number
---@field SourceSlotFieldID number
---@field TargetSlotFieldID number
---@field SourceLastChangedFieldID number
---@field TargetLastChangedFieldID number
---@field SourceTabIndexFieldID number
---@field TargetTabIndexFieldID number
Packet_FlipItemstacks = {}

---@return Packet_FlipItemstacks
function Packet_FlipItemstacks.ctor() end

---@param value string
function Packet_FlipItemstacks.SetSourceInventoryId(value) end

---@param value string
function Packet_FlipItemstacks.SetTargetInventoryId(value) end

---@param value number
function Packet_FlipItemstacks.SetSourceSlot(value) end

---@param value number
function Packet_FlipItemstacks.SetTargetSlot(value) end

---@param value number
function Packet_FlipItemstacks.SetSourceLastChanged(value) end

---@param value number
function Packet_FlipItemstacks.SetTargetLastChanged(value) end

---@param value number
function Packet_FlipItemstacks.SetSourceTabIndex(value) end

---@param value number
function Packet_FlipItemstacks.SetTargetTabIndex(value) end

---@return userdata
function Packet_FlipItemstacks.GetType() end

---@return string
function Packet_FlipItemstacks.ToString() end

---@param obj userdata
---@return boolean
function Packet_FlipItemstacks.Equals(obj) end

---@return number
function Packet_FlipItemstacks.GetHashCode() end


