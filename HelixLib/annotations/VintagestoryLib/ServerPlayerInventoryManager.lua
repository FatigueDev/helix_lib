---@meta

---@class ServerPlayerInventoryManager: PlayerInventoryManager, PlayerInventoryManager, IPlayerInventoryManager
---@field CurrentHoveredSlot ItemSlot
---@field InventoriesOrdered function
---@field ActiveTool Nullable`1
---@field ActiveHotbarSlotNumber number
---@field ActiveHotbarSlot ItemSlot
---@field MouseItemSlot ItemSlot
---@field OpenedInventories table
---@field player IPlayer
---@field Inventories OrderedDictionary`2
ServerPlayerInventoryManager = {}

---@param AllInventories OrderedDictionary`2 Same as your normal C# Dictionary but ensures that the order in which the items are added is remembered. That way you can iterate over the dictionary with the insert order intact or set/get elements by index. Taken from http://www.codeproject.com/Articles/18615/OrderedDictionary-T-A-generic-implementation-of-IO Please be aware that this is not a very efficient implementation, recommed use only for small sets of data.
---@param player IPlayer Represents a player
---@param server ServerMain
---@return ServerPlayerInventoryManager
function ServerPlayerInventoryManager.ctor(AllInventories, player, server) end

---@return ItemSlot # The default item slot to item stacks
function ServerPlayerInventoryManager.get_CurrentHoveredSlot() end

---@param value ItemSlot The default item slot to item stacks
function ServerPlayerInventoryManager.set_CurrentHoveredSlot(value) end

function ServerPlayerInventoryManager.BroadcastHotbarSlot() end

---@param slot ItemSlot The default item slot to item stacks
---@param fullStack? boolean
---@return boolean
function ServerPlayerInventoryManager.DropItem(slot, fullStack) end

---@param toPlayer IPlayer Represents a player
---@param slot ItemSlot The default item slot to item stacks
function ServerPlayerInventoryManager.NotifySlot(toPlayer, slot) end

---@return function
function ServerPlayerInventoryManager.get_InventoriesOrdered() end

---@return Nullable`1
function ServerPlayerInventoryManager.get_ActiveTool() end

---@return number
function ServerPlayerInventoryManager.get_ActiveHotbarSlotNumber() end

---@param value number
function ServerPlayerInventoryManager.set_ActiveHotbarSlotNumber(value) end

---@return ItemSlot # The default item slot to item stacks
function ServerPlayerInventoryManager.get_ActiveHotbarSlot() end

---@return ItemSlot # The default item slot to item stacks
function ServerPlayerInventoryManager.get_MouseItemSlot() end

---@return table
function ServerPlayerInventoryManager.get_OpenedInventories() end

---@param invid string
---@param slotNumber number
---@return boolean
function ServerPlayerInventoryManager.IsVisibleHandSlot(invid, slotNumber) end

---@param inventoryClassName string
---@return string
function ServerPlayerInventoryManager.GetInventoryName(inventoryClassName) end

---@param inventoryClassName string
---@return IInventory # Basic interface representing an item inventory
function ServerPlayerInventoryManager.GetOwnInventory(inventoryClassName) end

---@param inventoryClassName string
---@return IInventory # Basic interface representing an item inventory
function ServerPlayerInventoryManager.GetInventory(inventoryClassName) end

---@param slotId number
---@return ItemStack
function ServerPlayerInventoryManager.GetHotbarItemstack(slotId) end

---@return IInventory # Basic interface representing an item inventory
function ServerPlayerInventoryManager.GetHotbarInventory() end

---@param invID string
---@param invFound InventoryBase&
---@return boolean
function ServerPlayerInventoryManager.GetInventory(invID, invFound) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation
---@param skipSlots? table
---@return ItemSlot # The default item slot to item stacks
function ServerPlayerInventoryManager.GetBestSuitedSlot(sourceSlot, op, skipSlots) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param onlyPlayerInventory boolean
---@param op? ItemStackMoveOperation
---@param skipSlots? table
---@return ItemSlot # The default item slot to item stacks
function ServerPlayerInventoryManager.GetBestSuitedSlot(sourceSlot, onlyPlayerInventory, op, skipSlots) end

---@param itemstack ItemStack
---@param slotNotifyEffect? boolean
---@return boolean
function ServerPlayerInventoryManager.TryGiveItemstack(itemstack, slotNotifyEffect) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@param onlyPlayerInventory boolean
---@param slotNotifyEffect? boolean
---@return userdata
function ServerPlayerInventoryManager.TryTransferAway(sourceSlot, op, onlyPlayerInventory, slotNotifyEffect) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@param onlyPlayerInventory boolean
---@param shiftClickDebugText string
---@param slotNotifyEffect? boolean
---@return userdata
function ServerPlayerInventoryManager.TryTransferAway(sourceSlot, op, onlyPlayerInventory, shiftClickDebugText, slotNotifyEffect) end

function ServerPlayerInventoryManager.DiscardAll() end

function ServerPlayerInventoryManager.OnDeath() end

---@param inventory IInventory Basic interface representing an item inventory
---@return userdata
function ServerPlayerInventoryManager.OpenInventory(inventory) end

---@param inventory IInventory Basic interface representing an item inventory
---@return userdata
function ServerPlayerInventoryManager.CloseInventory(inventory) end

---@param inventory IInventory Basic interface representing an item inventory
---@return boolean
function ServerPlayerInventoryManager.HasInventory(inventory) end

---@param fullStack boolean
---@return boolean
function ServerPlayerInventoryManager.DropMouseSlotItems(fullStack) end

---@param fullStack boolean
---@return boolean
function ServerPlayerInventoryManager.DropHotbarSlotItems(fullStack) end

---@param inventory IInventory Basic interface representing an item inventory
function ServerPlayerInventoryManager.DropAllInventoryItems(inventory) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param targetSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@return userdata
function ServerPlayerInventoryManager.TryTransferTo(sourceSlot, targetSlot, op) end

---@param matcher Func`2
---@return boolean
function ServerPlayerInventoryManager.Find(matcher) end

---@return userdata
function ServerPlayerInventoryManager.GetType() end

---@return string
function ServerPlayerInventoryManager.ToString() end

---@param obj userdata
---@return boolean
function ServerPlayerInventoryManager.Equals(obj) end

---@return number
function ServerPlayerInventoryManager.GetHashCode() end


