---@meta

---@class Packet_InventoryContents
---@field ClientId number
---@field InventoryClass string
---@field InventoryId string
---@field Itemstacks Packet_ItemStack[]
---@field ItemstacksCount number
---@field ItemstacksLength number
---@field ClientIdFieldID number
---@field InventoryClassFieldID number
---@field InventoryIdFieldID number
---@field ItemstacksFieldID number
Packet_InventoryContents = {}

---@return Packet_InventoryContents
function Packet_InventoryContents.ctor() end

---@param value number
function Packet_InventoryContents.SetClientId(value) end

---@param value string
function Packet_InventoryContents.SetInventoryClass(value) end

---@param value string
function Packet_InventoryContents.SetInventoryId(value) end

---@return Packet_ItemStack[]
function Packet_InventoryContents.GetItemstacks() end

---@param value Packet_ItemStack[]
---@param count number
---@param length number
function Packet_InventoryContents.SetItemstacks(value, count, length) end

---@param value Packet_ItemStack[]
function Packet_InventoryContents.SetItemstacks(value) end

---@return number
function Packet_InventoryContents.GetItemstacksCount() end

---@param value Packet_ItemStack
function Packet_InventoryContents.ItemstacksAdd(value) end

---@return userdata
function Packet_InventoryContents.GetType() end

---@return string
function Packet_InventoryContents.ToString() end

---@param obj userdata
---@return boolean
function Packet_InventoryContents.Equals(obj) end

---@return number
function Packet_InventoryContents.GetHashCode() end


