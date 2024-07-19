---@meta

---@class Packet_ItemStack
---@field ItemClass number
---@field ItemId number
---@field StackSize number
---@field Attributes number
---@field ItemClassFieldID number
---@field ItemIdFieldID number
---@field StackSizeFieldID number
---@field AttributesFieldID number
Packet_ItemStack = {}

---@return Packet_ItemStack
function Packet_ItemStack.ctor() end

---@param value number
function Packet_ItemStack.SetItemClass(value) end

---@param value number
function Packet_ItemStack.SetItemId(value) end

---@param value number
function Packet_ItemStack.SetStackSize(value) end

---@param value number
function Packet_ItemStack.SetAttributes(value) end

---@return userdata
function Packet_ItemStack.GetType() end

---@return string
function Packet_ItemStack.ToString() end

---@param obj userdata
---@return boolean
function Packet_ItemStack.Equals(obj) end

---@return number
function Packet_ItemStack.GetHashCode() end


