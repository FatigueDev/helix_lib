---@meta

---@class PlayerInventoryManager:  IPlayerInventoryManager
---@field InventoriesOrdered function
---@field ActiveTool Nullable`1
---@field ActiveHotbarSlotNumber number
---@field ActiveHotbarSlot ItemSlot
---@field MouseItemSlot ItemSlot
---@field OpenedInventories table
---@field CurrentHoveredSlot ItemSlot
---@field player IPlayer
---@field Inventories OrderedDictionary`2
---@field defaultInventories string
PlayerInventoryManager = {}

---@param AllInventories OrderedDictionary`2 Same as your normal C# Dictionary but ensures that the order in which the items are added is remembered. That way you can iterate over the dictionary with the insert order intact or set/get elements by index. Taken from http://www.codeproject.com/Articles/18615/OrderedDictionary-T-A-generic-implementation-of-IO Please be aware that this is not a very efficient implementation, recommed use only for small sets of data.
---@param player IPlayer Represents a player
---@return PlayerInventoryManager
function PlayerInventoryManager.ctor(AllInventories, player) end

---@return function
function PlayerInventoryManager.get_InventoriesOrdered() end

---@return Nullable`1
function PlayerInventoryManager.get_ActiveTool() end

---@return number
function PlayerInventoryManager.get_ActiveHotbarSlotNumber() end

---@param value number
function PlayerInventoryManager.set_ActiveHotbarSlotNumber(value) end

---@return ItemSlot # The default item slot to item stacks
function PlayerInventoryManager.get_ActiveHotbarSlot() end

---@return ItemSlot # The default item slot to item stacks
function PlayerInventoryManager.get_MouseItemSlot() end

---@return table
function PlayerInventoryManager.get_OpenedInventories() end

---@return ItemSlot # The default item slot to item stacks
function PlayerInventoryManager.get_CurrentHoveredSlot() end

---@param value ItemSlot The default item slot to item stacks
function PlayerInventoryManager.set_CurrentHoveredSlot(value) end

function PlayerInventoryManager.BroadcastHotbarSlot() end

---@param invid string
---@param slotNumber number
---@return boolean
function PlayerInventoryManager.IsVisibleHandSlot(invid, slotNumber) end

---@param inventoryClassName string
---@return string
function PlayerInventoryManager.GetInventoryName(inventoryClassName) end

---@param inventoryClassName string
---@return IInventory # Basic interface representing an item inventory
function PlayerInventoryManager.GetOwnInventory(inventoryClassName) end

---@param inventoryClassName string
---@return IInventory # Basic interface representing an item inventory
function PlayerInventoryManager.GetInventory(inventoryClassName) end

---@param slotId number
---@return ItemStack
function PlayerInventoryManager.GetHotbarItemstack(slotId) end

---@return IInventory # Basic interface representing an item inventory
function PlayerInventoryManager.GetHotbarInventory() end

---@param invID string
---@param invFound InventoryBase&
---@return boolean
function PlayerInventoryManager.GetInventory(invID, invFound) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation
---@param skipSlots? table
---@return ItemSlot # The default item slot to item stacks
function PlayerInventoryManager.GetBestSuitedSlot(sourceSlot, op, skipSlots) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param onlyPlayerInventory boolean
---@param op? ItemStackMoveOperation
---@param skipSlots? table
---@return ItemSlot # The default item slot to item stacks
function PlayerInventoryManager.GetBestSuitedSlot(sourceSlot, onlyPlayerInventory, op, skipSlots) end

---@param itemstack ItemStack
---@param slotNotifyEffect? boolean
---@return boolean
function PlayerInventoryManager.TryGiveItemstack(itemstack, slotNotifyEffect) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@param onlyPlayerInventory boolean
---@param slotNotifyEffect? boolean
---@return userdata
function PlayerInventoryManager.TryTransferAway(sourceSlot, op, onlyPlayerInventory, slotNotifyEffect) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@param onlyPlayerInventory boolean
---@param shiftClickDebugText string
---@param slotNotifyEffect? boolean
---@return userdata
function PlayerInventoryManager.TryTransferAway(sourceSlot, op, onlyPlayerInventory, shiftClickDebugText, slotNotifyEffect) end

function PlayerInventoryManager.DiscardAll() end

function PlayerInventoryManager.OnDeath() end

---@param inventory IInventory Basic interface representing an item inventory
---@return userdata
function PlayerInventoryManager.OpenInventory(inventory) end

---@param inventory IInventory Basic interface representing an item inventory
---@return userdata
function PlayerInventoryManager.CloseInventory(inventory) end

---@param inventory IInventory Basic interface representing an item inventory
---@return boolean
function PlayerInventoryManager.HasInventory(inventory) end

---@param player IPlayer Represents a player
---@param slot ItemSlot The default item slot to item stacks
function PlayerInventoryManager.NotifySlot(player, slot) end

---@param fullStack boolean
---@return boolean
function PlayerInventoryManager.DropMouseSlotItems(fullStack) end

---@param fullStack boolean
---@return boolean
function PlayerInventoryManager.DropHotbarSlotItems(fullStack) end

---@param inventory IInventory Basic interface representing an item inventory
function PlayerInventoryManager.DropAllInventoryItems(inventory) end

---@param mouseItemSlot ItemSlot The default item slot to item stacks
---@param fullStack boolean
---@return boolean
function PlayerInventoryManager.DropItem(mouseItemSlot, fullStack) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param targetSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@return userdata
function PlayerInventoryManager.TryTransferTo(sourceSlot, targetSlot, op) end

---@param matcher Func`2
---@return boolean
function PlayerInventoryManager.Find(matcher) end

---@return userdata
function PlayerInventoryManager.GetType() end

---@return string
function PlayerInventoryManager.ToString() end

---@param obj userdata
---@return boolean
function PlayerInventoryManager.Equals(obj) end

---@return number
function PlayerInventoryManager.GetHashCode() end


