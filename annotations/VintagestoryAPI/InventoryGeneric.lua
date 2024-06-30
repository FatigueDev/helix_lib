---@meta

-- A general purpose inventory
---@class InventoryGeneric: InventoryBase, IEnumerable, IInventory, InventoryBase
---@field TransitionableSpeedMulByType table
---@field PerishableFactorByFoodCategory table
---@field BaseWeight number
---@field Count number Amount of available slots
---@field Item ItemSlot
---@field MaxContentDimensions Size3f Optional field, if set, will check against the collectible dimensions and deny placecment if too large
---@field InventoryID string The internal name of the inventory instance.
---@field ClassName string The class name of the inventory.
---@field LastChanged number Milliseconds since server startup when the inventory was last changed
---@field CountForNetworkPacket number
---@field IsDirty boolean True if this inventory has to be resent to the client or when the client has to redraw them
---@field DirtySlots HashSet`1 The slots that have been modified server side and need to be resent to the client or need to be redrawn on the client
---@field TakeLocked boolean Called by item slot, if true, player cannot take items from this inventory
---@field PutLocked boolean Called by item slot, if true, player cannot put items into this inventory
---@field RemoveOnClose boolean If true, the inventory will be removed from the list of available inventories once closed (i.e. is not a personal inventory that the player carries with him)
---@field Empty boolean Convenience method to check if this inventory contains anything
---@field FirstNonEmptySlot ItemSlot Returns the first slot that is not empty or null
---@field SlotModified function Called whenever a slot has been modified
---@field SlotNotified function Called whenever a slot notification event has been fired. Is used by the slot grid gui element to visually wiggle the slot contents
---@field OnInventoryOpened OnInventoryOpenedDelegate Called whenever this inventory was opened
---@field OnInventoryClosed OnInventoryClosedDelegate Called whenever this inventory was closed
---@field OnGetSuitability GetSuitabilityDelegate
---@field OnGetAutoPushIntoSlot GetAutoPushIntoSlotDelegate
---@field OnGetAutoPullFromSlot GetAutoPullFromSlotDelegate
---@field Api ICoreAPI The world in which the inventory is operating in. Gives inventories access to block types, item types and the ability to drop items on the ground.
---@field Pos BlockPos Optional field that can be used to define in-world position of the inventory. Is set by most container block entities. Might be null!
---@field lastChangedSinceServerStart number (Not implemented!) The time it was last changed since the server was started.
---@field openedByPlayerGUIds HashSet`1 The players that had opened the inventory.
---@field InvNetworkUtil IInventoryNetworkUtil The network utility for the inventory
---@field dirtySlots HashSet`1 Slots that have been recently modified. This list is used on the server to update the clients (then cleared) and on the client to redraw itemstacks in guis (then cleared)
---@field OnAcquireTransitionSpeed CustomGetTransitionSpeedMulDelegate If set, the value is returned when GetTransitionSpeedMul() is called instead of the default value.
InventoryGeneric = {}

---@param quantitySlots number
---@param className string
---@param instanceId string
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param onNewSlot? NewSlotDelegate
---@return InventoryGeneric
function InventoryGeneric.ctor(quantitySlots, className, instanceId, api, onNewSlot) end
---@param quantitySlots number
---@param invId string
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param onNewSlot? NewSlotDelegate
---@return InventoryGeneric
function InventoryGeneric.ctor(quantitySlots, invId, api, onNewSlot) end

---@return table
function InventoryGeneric.get_TransitionableSpeedMulByType() end

---@param value table
function InventoryGeneric.set_TransitionableSpeedMulByType(value) end

---@return table
function InventoryGeneric.get_PerishableFactorByFoodCategory() end

---@param value table
function InventoryGeneric.set_PerishableFactorByFoodCategory(value) end

---@return number
function InventoryGeneric.get_BaseWeight() end

---@param value number
function InventoryGeneric.set_BaseWeight(value) end

---@return number
function InventoryGeneric.get_Count() end

---@param slotId number
---@return ItemSlot # The default item slot to item stacks
function InventoryGeneric.get_Item(slotId) end

---@param slotId number
---@param value ItemSlot The default item slot to item stacks
function InventoryGeneric.set_Item(slotId, value) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param targetSlot ItemSlot The default item slot to item stacks
---@param isMerge boolean
---@return number
function InventoryGeneric.GetSuitability(sourceSlot, targetSlot, isMerge) end

-- Loads the slot contents from given treeAttribute
---@param treeAttribute ITreeAttribute Represents a List of nestable Attributes
function InventoryGeneric.FromTreeAttributes(treeAttribute) end

---@param amount number
function InventoryGeneric.AddSlots(amount) end

-- Stores the slot contents to invtree
---@param invtree ITreeAttribute Represents a List of nestable Attributes
function InventoryGeneric.ToTreeAttributes(invtree) end

---@param transType EnumTransitionType
---@param stack ItemStack
---@return number
function InventoryGeneric.GetTransitionSpeedMul(transType, stack) end

---@param atBlockFace BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return ItemSlot # The default item slot to item stacks
function InventoryGeneric.GetAutoPullFromSlot(atBlockFace) end

---@param atBlockFace BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param fromSlot ItemSlot The default item slot to item stacks
---@return ItemSlot # The default item slot to item stacks
function InventoryGeneric.GetAutoPushIntoSlot(atBlockFace, fromSlot) end

---@return Size3f # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function InventoryGeneric.get_MaxContentDimensions() end

---@param value Size3f Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function InventoryGeneric.set_MaxContentDimensions(value) end

---@return string
function InventoryGeneric.get_InventoryID() end

---@return string
function InventoryGeneric.get_ClassName() end

---@return number
function InventoryGeneric.get_LastChanged() end

---@return number
function InventoryGeneric.get_CountForNetworkPacket() end

---@return boolean
function InventoryGeneric.get_IsDirty() end

---@return HashSet`1
function InventoryGeneric.get_DirtySlots() end

---@return boolean
function InventoryGeneric.get_TakeLocked() end

---@param value boolean
function InventoryGeneric.set_TakeLocked(value) end

---@return boolean
function InventoryGeneric.get_PutLocked() end

---@param value boolean
function InventoryGeneric.set_PutLocked(value) end

---@return boolean
function InventoryGeneric.get_RemoveOnClose() end

---@param value function
function InventoryGeneric.add_SlotModified(value) end

---@param value function
function InventoryGeneric.remove_SlotModified(value) end

---@param value function
function InventoryGeneric.add_SlotNotified(value) end

---@param value function
function InventoryGeneric.remove_SlotNotified(value) end

---@param value OnInventoryOpenedDelegate
function InventoryGeneric.add_OnInventoryOpened(value) end

---@param value OnInventoryOpenedDelegate
function InventoryGeneric.remove_OnInventoryOpened(value) end

---@param value OnInventoryClosedDelegate
function InventoryGeneric.add_OnInventoryClosed(value) end

---@param value OnInventoryClosedDelegate
function InventoryGeneric.remove_OnInventoryClosed(value) end

---@return boolean
function InventoryGeneric.get_Empty() end

---@return ItemSlot # The default item slot to item stacks
function InventoryGeneric.get_FirstNonEmptySlot() end

-- You can initialize an InventoryBase with null as parameters and use LateInitialize to set these values later. This is sometimes required during chunk loading.
---@param inventoryID string
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function InventoryGeneric.LateInitialize(inventoryID, api) end

-- The event fired after all the blocks have loaded.
---@param world IWorldAccessor Important interface to access the game world.
function InventoryGeneric.AfterBlocksLoaded(world) end

-- Tells the invnetory to update blocks and items within the invnetory.
function InventoryGeneric.ResolveBlocksOrItems() end

-- Will return -1 if the slot is not found in this inventory
---@param slot ItemSlot The default item slot to item stacks
---@return number
function InventoryGeneric.GetSlotId(slot) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param skipSlots table
---@return WeightedSlot
function InventoryGeneric.GetBestSuitedSlot(sourceSlot, skipSlots) end

-- Gets the best sorted slot for the given item.
---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op? ItemStackMoveOperation
---@param skipSlots? table
---@return WeightedSlot
function InventoryGeneric.GetBestSuitedSlot(sourceSlot, op, skipSlots) end

---@param sinkSlot ItemSlot The default item slot to item stacks
---@param sourceSlot ItemSlot The default item slot to item stacks
---@return boolean
function InventoryGeneric.CanContain(sinkSlot, sourceSlot) end

-- Attempts to flip the contents of both slots
---@param targetSlotId number
---@param itemSlot ItemSlot The default item slot to item stacks
---@return userdata
function InventoryGeneric.TryFlipItems(targetSlotId, itemSlot) end

-- Determines whether or not the player can access the invnetory.
---@param player IPlayer Represents a player
---@param position EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@return boolean
function InventoryGeneric.CanPlayerAccess(player, position) end

-- Determines whether or not the player can modify the invnetory.
---@param player IPlayer Represents a player
---@param position EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@return boolean
function InventoryGeneric.CanPlayerModify(player, position) end

-- The event fired when the search is applied to the item.
---@param text string
function InventoryGeneric.OnSearchTerm(text) end

---@param slotId number
---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@return userdata
function InventoryGeneric.ActivateSlot(slotId, sourceSlot, op) end

-- Called when one of the containing slots has been modified
---@param slot ItemSlot The default item slot to item stacks
function InventoryGeneric.OnItemSlotModified(slot) end

-- Called when one of the containing slots has been modified
---@param slot ItemSlot The default item slot to item stacks
---@param extractedStack? ItemStack
function InventoryGeneric.DidModifyItemSlot(slot, extractedStack) end

-- Called when one of the containing slot was notified via NotifySlot
---@param slotId number
function InventoryGeneric.PerformNotifySlot(slotId) end

-- Attempts to flip the inventory slots.
---@param owningPlayer IPlayer Represents a player
---@param invIds string
---@param slotIds number
---@param lastChanged number
---@return boolean
function InventoryGeneric.TryFlipItemStack(owningPlayer, invIds, slotIds, lastChanged) end

---@param player IPlayer Represents a player
---@param invIds string
---@param slotIds number
---@param op ItemStackMoveOperation&
---@return boolean
function InventoryGeneric.TryMoveItemStack(player, invIds, slotIds, op) end

-- Attempts to get specified slots if the slots exists.
---@param player IPlayer Represents a player
---@param invIds string
---@param slotIds number
---@return ItemSlot[] # The default item slot to item stacks
function InventoryGeneric.GetSlotsIfExists(player, invIds, slotIds) end

-- Creates a collection of slots from a tree.
---@param tree ITreeAttribute Represents a List of nestable Attributes
---@param slots? ItemSlot[] The default item slot to item stacks
---@param modifiedSlots? table
---@return ItemSlot[] # The default item slot to item stacks
function InventoryGeneric.SlotsFromTreeAttributes(tree, slots, modifiedSlots) end

-- Sets the tree attribute using the slots.
---@param slots ItemSlot[] The default item slot to item stacks
---@param tree ITreeAttribute Represents a List of nestable Attributes
function InventoryGeneric.SlotsToTreeAttributes(slots, tree) end

-- Gets a specified number of empty slots.
---@param quantity number
---@return ItemSlot[] # The default item slot to item stacks
function InventoryGeneric.GenEmptySlots(quantity) end

-- Server Side: Will resent the slot contents to the client and mark them dirty there as well
-- Client Side: Will refresh stack size, model and stuff if this stack is currently being rendered
---@param slotId number
function InventoryGeneric.MarkSlotDirty(slotId) end

-- Discards everything in the item slots.
function InventoryGeneric.DiscardAll() end

---@param slot ItemSlot The default item slot to item stacks
---@param player? IPlayer Represents a player
function InventoryGeneric.DropSlotIfHot(slot, player) end

-- Drops the contents of the specified slots in the world.
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param slotsIds number
function InventoryGeneric.DropSlots(pos, slotsIds) end

-- Drops the contents of all the slots into the world.
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param maxStackSize? number
function InventoryGeneric.DropAll(pos, maxStackSize) end

-- Deletes the contents of all the slots
function InventoryGeneric.Clear() end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function InventoryGeneric.OnOwningEntityDeath(pos) end

-- Marks the inventory available for interaction for this player. Returns a open inventory packet that can be sent to the server for synchronization.
---@param player IPlayer Represents a player
---@return userdata
function InventoryGeneric.Open(player) end

-- Removes ability to interact with this inventory for this player. Returns a close inventory packet that can be sent to the server for synchronization.
---@param player IPlayer Represents a player
---@return userdata
function InventoryGeneric.Close(player) end

-- Checks if given player has this inventory currently opened
---@param player IPlayer Represents a player
---@return boolean
function InventoryGeneric.HasOpened(player) end

-- Gets the enumerator for the inventory.
---@return function
function InventoryGeneric.GetEnumerator() end

---@return userdata
function InventoryGeneric.GetType() end

---@return string
function InventoryGeneric.ToString() end

---@param obj userdata
---@return boolean
function InventoryGeneric.Equals(obj) end

---@return number
function InventoryGeneric.GetHashCode() end


