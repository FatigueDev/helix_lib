---@meta

-- Basic interface representing an item inventory
---@class IInventory:  IEnumerable
---@field Empty boolean Convenience method to check if this inventory contains anything
---@field RemoveOnClose boolean Wether or not to remove the inventory from the players inventory list upon closing it
---@field TakeLocked boolean Called by item slot, if true, player cannot take items from this chest
---@field PutLocked boolean Called by item slot, if true, player cannot take items from this chest
---@field LastChanged number Milliseconds since server startup when the inventory was last changed (not used currently)
---@field Item ItemSlot
---@field ClassName string The name of the class for the inventory
---@field InventoryID string The internal named id for the inventory
---@field DirtySlots HashSet`1 The slots marked dirty.
---@field SlotModified function Event that fires when a slot was modified
---@field SlotNotified function Event that fires when NotifySlot was called 
IInventory = {}


---@return boolean
function IInventory.get_Empty() end

---@return boolean
function IInventory.get_RemoveOnClose() end

---@return boolean
function IInventory.get_TakeLocked() end

---@return boolean
function IInventory.get_PutLocked() end

---@return number
function IInventory.get_LastChanged() end

---@param slotId number
---@return ItemSlot # The default item slot to item stacks
function IInventory.get_Item(slotId) end

---@param slotId number
---@param value ItemSlot The default item slot to item stacks
function IInventory.set_Item(slotId, value) end

---@return string
function IInventory.get_ClassName() end

---@return string
function IInventory.get_InventoryID() end

---@return HashSet`1
function IInventory.get_DirtySlots() end

-- Marks the inventory available for interaction for this player. Returns a open inventory packet that can be sent to the server for synchronization.
---@param player IPlayer Represents a player
---@return userdata
function IInventory.Open(player) end

-- Removes ability to interact with this inventory for this player. Returns a close inventory packet that can be sent to the server for synchronization.
---@param player IPlayer Represents a player
---@return userdata
function IInventory.Close(player) end

-- Checks if given player has this inventory currently opened
---@param player IPlayer Represents a player
---@return boolean
function IInventory.HasOpened(player) end

-- Returns the best suited slot to hold the item from the source slot. Attached is also a weight, indicating how well the item is suited for it. If no suitable slot was found, the weight will be 0 and the slot will be null. A higher weight means the slot is better suited to hold the item. This method does not check if the player is actually allowed to access or modify this inventory.
-- 
-- Weight will be 1 for a default slot that is empty
-- Weight will be 2 for a default slot that can take one or more items from the source slot
-- Weight could be 10 for an empty armor slot and the source slot contains an armor itemtack
---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op? ItemStackMoveOperation
---@param skipSlots? table
---@return WeightedSlot
function IInventory.GetBestSuitedSlot(sourceSlot, op, skipSlots) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param skipSlots table
---@return WeightedSlot
function IInventory.GetBestSuitedSlot(sourceSlot, skipSlots) end

---@param slotId number
---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@return userdata
function IInventory.ActivateSlot(slotId, sourceSlot, op) end

-- Attempts to flip the contents of both slots
---@param targetSlotId number
---@param sourceSlot ItemSlot The default item slot to item stacks
---@return userdata
function IInventory.TryFlipItems(targetSlotId, sourceSlot) end

-- Will return -1 if the slot is not found in this inventory
---@param slot ItemSlot The default item slot to item stacks
---@return number
function IInventory.GetSlotId(slot) end

-- Server Side: Will resent the slot contents to the client and mark them dirty there as well
-- Client Side: Will refresh stack size, model and stuff if this stack is currently being rendered
---@param slotId number
function IInventory.MarkSlotDirty(slotId) end

---@param value function
function IInventory.add_SlotModified(value) end

---@param value function
function IInventory.remove_SlotModified(value) end

---@param value function
function IInventory.add_SlotNotified(value) end

---@param value function
function IInventory.remove_SlotNotified(value) end


