---@meta

-- Let's you do various interesting things with the players inventory.
---@class IPlayerInventoryManager
---@field ActiveTool Nullable`1 If the player currently holds a tool in his hands, this value will be set
---@field ActiveHotbarSlotNumber number The players currently active hot bar slot
---@field ActiveHotbarSlot ItemSlot Returns the currently selected hotbar slot. Might return null if there is no hotbar!
---@field Inventories table Dictionary of all inventories currently available to the player (some may however not be opened) Note: for iterating through these, Inventories.Values will not be ordered.  Instead use InventoriesOrdered if you want consistent ordering on server and client e.g. for shift-click operations
---@field InventoriesOrdered function An iterable collection of all inventories currently available to the player, arranged in the same order (by creation order) on both server and client to prevent syncing / ghosting issues
---@field OpenedInventories table List of inventories currently opened by the player
---@field MouseItemSlot ItemSlot Returns the slot that holds the currently dragged itemstack
---@field CurrentHoveredSlot ItemSlot The slot the player currently hovers over with his mouse cursor
IPlayerInventoryManager = {}


---@return Nullable`1
function IPlayerInventoryManager.get_ActiveTool() end

---@return number
function IPlayerInventoryManager.get_ActiveHotbarSlotNumber() end

---@param value number
function IPlayerInventoryManager.set_ActiveHotbarSlotNumber(value) end

---@return ItemSlot # The default item slot to item stacks
function IPlayerInventoryManager.get_ActiveHotbarSlot() end

---@return table
function IPlayerInventoryManager.get_Inventories() end

---@return function
function IPlayerInventoryManager.get_InventoriesOrdered() end

---@return table
function IPlayerInventoryManager.get_OpenedInventories() end

---@return ItemSlot # The default item slot to item stacks
function IPlayerInventoryManager.get_MouseItemSlot() end

---@return ItemSlot # The default item slot to item stacks
function IPlayerInventoryManager.get_CurrentHoveredSlot() end

---@param value ItemSlot The default item slot to item stacks
function IPlayerInventoryManager.set_CurrentHoveredSlot(value) end

-- Drops the current contents of the mouse slot onto the ground
---@param dropAll boolean
---@return boolean
function IPlayerInventoryManager.DropMouseSlotItems(dropAll) end

-- Drops the current contents of given slot onto the ground
---@param slot ItemSlot The default item slot to item stacks
---@param fullStack boolean
---@return boolean
function IPlayerInventoryManager.DropItem(slot, fullStack) end

-- Produces a visual cue on given slot, if it's currently part of an inventory and visible to the player
-- If called on server side, the server will send a network packet to notify the client.
---@param player IPlayer Represents a player
---@param slot ItemSlot The default item slot to item stacks
function IPlayerInventoryManager.NotifySlot(player, slot) end

-- Returns the full inventory id for given inventory class name, e.g. GlobalConstants.creativeInvClassName
---@param inventoryClassName string
---@return string
function IPlayerInventoryManager.GetInventoryName(inventoryClassName) end

-- Same as GetInventory() with playeruid appended to the inventoryClassName. Returns null if not found. You can use GlobalConstants.*ClassName to get the vanilla player inventories.
---@param inventoryClassName string
---@return IInventory # Basic interface representing an item inventory
function IPlayerInventoryManager.GetOwnInventory(inventoryClassName) end

-- Retrieve a players inventory. Returns null if not found.
---@param inventoryId string
---@return IInventory # Basic interface representing an item inventory
function IPlayerInventoryManager.GetInventory(inventoryId) end

-- Gets the itemstack that in the given slot number of the players hotbar
---@param slotId number
---@return ItemStack
function IPlayerInventoryManager.GetHotbarItemstack(slotId) end

-- Returns the hotbar inventory object. Obvious comment is being obvious.
---@return IInventory # Basic interface representing an item inventory
function IPlayerInventoryManager.GetHotbarInventory() end

---@param invID string
---@param invFound InventoryBase&
---@return boolean
function IPlayerInventoryManager.GetInventory(invID, invFound) end

-- Returns a slot that would best fit the contents of the source slot. This checks all inventories currently opened by the player.
---@param sourceSlot ItemSlot The default item slot to item stacks
---@param onlyPlayerInventory boolean
---@param op? ItemStackMoveOperation
---@param skipSlots? table
---@return ItemSlot # The default item slot to item stacks
function IPlayerInventoryManager.GetBestSuitedSlot(sourceSlot, onlyPlayerInventory, op, skipSlots) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation
---@param skipSlots table
---@return ItemSlot # The default item slot to item stacks
function IPlayerInventoryManager.GetBestSuitedSlot(sourceSlot, op, skipSlots) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@param onlyPlayerInventory boolean
---@param slotNotifyEffect? boolean
---@return userdata
function IPlayerInventoryManager.TryTransferAway(sourceSlot, op, onlyPlayerInventory, slotNotifyEffect) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@param onlyPlayerInventory boolean
---@param shiftClickDebugText string
---@param slotNotifyEffect? boolean
---@return userdata
function IPlayerInventoryManager.TryTransferAway(sourceSlot, op, onlyPlayerInventory, shiftClickDebugText, slotNotifyEffect) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param targetSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@return userdata
function IPlayerInventoryManager.TryTransferTo(sourceSlot, targetSlot, op) end

-- Tries to add given itemstack to the players inventory
---@param itemstack ItemStack
---@param slotNotifyEffect? boolean
---@return boolean
function IPlayerInventoryManager.TryGiveItemstack(itemstack, slotNotifyEffect) end

-- Notifies the inventory manager that the player has opened an inventory. Should always be called on both sides (client and server).
-- Only then interaction with other inventories becomes possible
---@param inventory IInventory Basic interface representing an item inventory
---@return userdata
function IPlayerInventoryManager.OpenInventory(inventory) end

-- Notifies the inventory manager that the player has closed an inventory. Should always be called on both sides (client and server). After closing interaction with given inventory becomes no longer possible until reopened
---@param inventory IInventory Basic interface representing an item inventory
---@return userdata
function IPlayerInventoryManager.CloseInventory(inventory) end

-- Iterates over all inventory slots, returns true if your matcher returns true
---@param matcher Func`2
---@return boolean
function IPlayerInventoryManager.Find(matcher) end

-- Shorthand for Inventories.ContainsValue(inventory)
---@param inventory IInventory Basic interface representing an item inventory
---@return boolean
function IPlayerInventoryManager.HasInventory(inventory) end

-- Will discard all of the players inventory contents
function IPlayerInventoryManager.DiscardAll() end

-- Will drop all of the players inventory contents
function IPlayerInventoryManager.OnDeath() end

-- Drops the contents of given inventory
---@param inv IInventory Basic interface representing an item inventory
function IPlayerInventoryManager.DropAllInventoryItems(inv) end

-- Server Side: Resends the hotbar slot contents to all other clients to make sure they render the correct held item
-- Client side: No effect
function IPlayerInventoryManager.BroadcastHotbarSlot() end


