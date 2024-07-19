---@meta

---@class ClientPlayerInventoryManager: PlayerInventoryManager, PlayerInventoryManager, IPlayerInventoryManager
---@field CurrentHoveredSlot ItemSlot
---@field ActiveHotbarSlotNumber number
---@field InventoriesOrdered function
---@field ActiveTool Nullable`1
---@field ActiveHotbarSlot ItemSlot
---@field MouseItemSlot ItemSlot
---@field OpenedInventories table
---@field currentHoveredSlot ItemSlot
---@field player IPlayer
---@field Inventories OrderedDictionary`2
ClientPlayerInventoryManager = {}

---@param AllInventories OrderedDictionary`2 Same as your normal C# Dictionary but ensures that the order in which the items are added is remembered. That way you can iterate over the dictionary with the insert order intact or set/get elements by index. Taken from http://www.codeproject.com/Articles/18615/OrderedDictionary-T-A-generic-implementation-of-IO Please be aware that this is not a very efficient implementation, recommed use only for small sets of data.
---@param player IPlayer Represents a player
---@param game ClientMain
---@return ClientPlayerInventoryManager
function ClientPlayerInventoryManager.ctor(AllInventories, player, game) end

---@return ItemSlot # The default item slot to item stacks
function ClientPlayerInventoryManager.get_CurrentHoveredSlot() end

---@param value ItemSlot The default item slot to item stacks
function ClientPlayerInventoryManager.set_CurrentHoveredSlot(value) end

---@return number
function ClientPlayerInventoryManager.get_ActiveHotbarSlotNumber() end

---@param value number
function ClientPlayerInventoryManager.set_ActiveHotbarSlotNumber(value) end

---@param slotid number
function ClientPlayerInventoryManager.SetActiveHotbarSlotNumberFromServer(slotid) end

---@param player IPlayer Represents a player
---@param slot ItemSlot The default item slot to item stacks
function ClientPlayerInventoryManager.NotifySlot(player, slot) end

---@param slot ItemSlot The default item slot to item stacks
---@param fullStack? boolean
---@return boolean
function ClientPlayerInventoryManager.DropItem(slot, fullStack) end

function ClientPlayerInventoryManager.BroadcastHotbarSlot() end

---@return function
function ClientPlayerInventoryManager.get_InventoriesOrdered() end

---@return Nullable`1
function ClientPlayerInventoryManager.get_ActiveTool() end

---@return ItemSlot # The default item slot to item stacks
function ClientPlayerInventoryManager.get_ActiveHotbarSlot() end

---@return ItemSlot # The default item slot to item stacks
function ClientPlayerInventoryManager.get_MouseItemSlot() end

---@return table
function ClientPlayerInventoryManager.get_OpenedInventories() end

---@param invid string
---@param slotNumber number
---@return boolean
function ClientPlayerInventoryManager.IsVisibleHandSlot(invid, slotNumber) end

---@param inventoryClassName string
---@return string
function ClientPlayerInventoryManager.GetInventoryName(inventoryClassName) end

---@param inventoryClassName string
---@return IInventory # Basic interface representing an item inventory
function ClientPlayerInventoryManager.GetOwnInventory(inventoryClassName) end

---@param inventoryClassName string
---@return IInventory # Basic interface representing an item inventory
function ClientPlayerInventoryManager.GetInventory(inventoryClassName) end

---@param slotId number
---@return ItemStack
function ClientPlayerInventoryManager.GetHotbarItemstack(slotId) end

---@return IInventory # Basic interface representing an item inventory
function ClientPlayerInventoryManager.GetHotbarInventory() end

---@param invID string
---@param invFound InventoryBase&
---@return boolean
function ClientPlayerInventoryManager.GetInventory(invID, invFound) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation
---@param skipSlots? table
---@return ItemSlot # The default item slot to item stacks
function ClientPlayerInventoryManager.GetBestSuitedSlot(sourceSlot, op, skipSlots) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param onlyPlayerInventory boolean
---@param op? ItemStackMoveOperation
---@param skipSlots? table
---@return ItemSlot # The default item slot to item stacks
function ClientPlayerInventoryManager.GetBestSuitedSlot(sourceSlot, onlyPlayerInventory, op, skipSlots) end

---@param itemstack ItemStack
---@param slotNotifyEffect? boolean
---@return boolean
function ClientPlayerInventoryManager.TryGiveItemstack(itemstack, slotNotifyEffect) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@param onlyPlayerInventory boolean
---@param slotNotifyEffect? boolean
---@return userdata
function ClientPlayerInventoryManager.TryTransferAway(sourceSlot, op, onlyPlayerInventory, slotNotifyEffect) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@param onlyPlayerInventory boolean
---@param shiftClickDebugText string
---@param slotNotifyEffect? boolean
---@return userdata
function ClientPlayerInventoryManager.TryTransferAway(sourceSlot, op, onlyPlayerInventory, shiftClickDebugText, slotNotifyEffect) end

function ClientPlayerInventoryManager.DiscardAll() end

function ClientPlayerInventoryManager.OnDeath() end

---@param inventory IInventory Basic interface representing an item inventory
---@return userdata
function ClientPlayerInventoryManager.OpenInventory(inventory) end

---@param inventory IInventory Basic interface representing an item inventory
---@return userdata
function ClientPlayerInventoryManager.CloseInventory(inventory) end

---@param inventory IInventory Basic interface representing an item inventory
---@return boolean
function ClientPlayerInventoryManager.HasInventory(inventory) end

---@param fullStack boolean
---@return boolean
function ClientPlayerInventoryManager.DropMouseSlotItems(fullStack) end

---@param fullStack boolean
---@return boolean
function ClientPlayerInventoryManager.DropHotbarSlotItems(fullStack) end

---@param inventory IInventory Basic interface representing an item inventory
function ClientPlayerInventoryManager.DropAllInventoryItems(inventory) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param targetSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@return userdata
function ClientPlayerInventoryManager.TryTransferTo(sourceSlot, targetSlot, op) end

---@param matcher Func`2
---@return boolean
function ClientPlayerInventoryManager.Find(matcher) end

---@return userdata
function ClientPlayerInventoryManager.GetType() end

---@return string
function ClientPlayerInventoryManager.ToString() end

---@param obj userdata
---@return boolean
function ClientPlayerInventoryManager.Equals(obj) end

---@return number
function ClientPlayerInventoryManager.GetHashCode() end


