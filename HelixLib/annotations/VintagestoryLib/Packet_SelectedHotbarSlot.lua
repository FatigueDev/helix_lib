---@meta

---@class Packet_SelectedHotbarSlot
---@field SlotNumber number
---@field ClientId number
---@field Itemstack Packet_ItemStack
---@field OffhandStack Packet_ItemStack
---@field SlotNumberFieldID number
---@field ClientIdFieldID number
---@field ItemstackFieldID number
---@field OffhandStackFieldID number
Packet_SelectedHotbarSlot = {}

---@return Packet_SelectedHotbarSlot
function Packet_SelectedHotbarSlot.ctor() end

---@param value number
function Packet_SelectedHotbarSlot.SetSlotNumber(value) end

---@param value number
function Packet_SelectedHotbarSlot.SetClientId(value) end

---@param value Packet_ItemStack
function Packet_SelectedHotbarSlot.SetItemstack(value) end

---@param value Packet_ItemStack
function Packet_SelectedHotbarSlot.SetOffhandStack(value) end

---@return userdata
function Packet_SelectedHotbarSlot.GetType() end

---@return string
function Packet_SelectedHotbarSlot.ToString() end

---@param obj userdata
---@return boolean
function Packet_SelectedHotbarSlot.Equals(obj) end

---@return number
function Packet_SelectedHotbarSlot.GetHashCode() end


