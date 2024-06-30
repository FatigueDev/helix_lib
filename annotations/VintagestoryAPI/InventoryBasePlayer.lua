---@meta

-- Abstract class used for all inventories that are "on" the player. Any inventory not inheriting from this class will not be stored to the savegame as part of the players inventory.
---@class InventoryBasePlayer: InventoryBase, IEnumerable, IInventory, InventoryBase
---@field RemoveOnClose boolean
---@field Player IPlayer The owning player of this inventory
---@field MaxContentDimensions Size3f Optional field, if set, will check against the collectible dimensions and deny placecment if too large
---@field InventoryID string The internal name of the inventory instance.
---@field ClassName string The class name of the inventory.
---@field LastChanged number Milliseconds since server startup when the inventory was last changed
---@field Count number Returns the number of slots in this inventory.
---@field CountForNetworkPacket number
---@field Item ItemSlot
---@field IsDirty boolean True if this inventory has to be resent to the client or when the client has to redraw them
---@field DirtySlots HashSet`1 The slots that have been modified server side and need to be resent to the client or need to be redrawn on the client
---@field TakeLocked boolean Called by item slot, if true, player cannot take items from this inventory
---@field PutLocked boolean Called by item slot, if true, player cannot put items into this inventory
---@field Empty boolean Convenience method to check if this inventory contains anything
---@field FirstNonEmptySlot ItemSlot Returns the first slot that is not empty or null
---@field SlotModified function Called whenever a slot has been modified
---@field SlotNotified function Called whenever a slot notification event has been fired. Is used by the slot grid gui element to visually wiggle the slot contents
---@field OnInventoryOpened OnInventoryOpenedDelegate Called whenever this inventory was opened
---@field OnInventoryClosed OnInventoryClosedDelegate Called whenever this inventory was closed
---@field Api ICoreAPI The world in which the inventory is operating in. Gives inventories access to block types, item types and the ability to drop items on the ground.
---@field Pos BlockPos Optional field that can be used to define in-world position of the inventory. Is set by most container block entities. Might be null!
---@field lastChangedSinceServerStart number (Not implemented!) The time it was last changed since the server was started.
---@field openedByPlayerGUIds HashSet`1 The players that had opened the inventory.
---@field InvNetworkUtil IInventoryNetworkUtil The network utility for the inventory
---@field dirtySlots HashSet`1 Slots that have been recently modified. This list is used on the server to update the clients (then cleared) and on the client to redraw itemstacks in guis (then cleared)
---@field OnAcquireTransitionSpeed CustomGetTransitionSpeedMulDelegate If set, the value is returned when GetTransitionSpeedMul() is called instead of the default value.
InventoryBasePlayer = {}

---@param className string
---@param playerUID string
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@return InventoryBasePlayer
function InventoryBasePlayer.ctor(className, playerUID, api) end
---@param inventoryID string
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@return InventoryBasePlayer
function InventoryBasePlayer.ctor(inventoryID, api) end

---@return boolean
function InventoryBasePlayer.get_RemoveOnClose() end

---@return IPlayer # Represents a player
function InventoryBasePlayer.get_Player() end

---@param player IPlayer Represents a player
---@param position EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@return boolean
function InventoryBasePlayer.CanPlayerAccess(player, position) end

---@param player IPlayer Represents a player
---@return boolean
function InventoryBasePlayer.HasOpened(player) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param maxStackSize? number
function InventoryBasePlayer.DropAll(pos, maxStackSize) end

---@return Size3f # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function InventoryBasePlayer.get_MaxContentDimensions() end

---@param value Size3f Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function InventoryBasePlayer.set_MaxContentDimensions(value) end

---@return string
function InventoryBasePlayer.get_InventoryID() end

---@return string
function InventoryBasePlayer.get_ClassName() end

---@return number
function InventoryBasePlayer.get_LastChanged() end

---@return number
function InventoryBasePlayer.get_Count() end

---@return number
function InventoryBasePlayer.get_CountForNetworkPacket() end

---@param slotId number
---@return ItemSlot # The default item slot to item stacks
function InventoryBasePlayer.get_Item(slotId) end

---@param slotId number
---@param value ItemSlot The default item slot to item stacks
function InventoryBasePlayer.set_Item(slotId, value) end

---@return boolean
function InventoryBasePlayer.get_IsDirty() end

---@return HashSet`1
function InventoryBasePlayer.get_DirtySlots() end

---@return boolean
function InventoryBasePlayer.get_TakeLocked() end

---@param value boolean
function InventoryBasePlayer.set_TakeLocked(value) end

---@return boolean
function InventoryBasePlayer.get_PutLocked() end

---@param value boolean
function InventoryBasePlayer.set_PutLocked(value) end

---@param value function
function InventoryBasePlayer.add_SlotModified(value) end

---@param value function
function InventoryBasePlayer.remove_SlotModified(value) end

---@param value function
function InventoryBasePlayer.add_SlotNotified(value) end

---@param value function
function InventoryBasePlayer.remove_SlotNotified(value) end

---@param value OnInventoryOpenedDelegate
function InventoryBasePlayer.add_OnInventoryOpened(value) end

---@param value OnInventoryOpenedDelegate
function InventoryBasePlayer.remove_OnInventoryOpened(value) end

---@param value OnInventoryClosedDelegate
function InventoryBasePlayer.add_OnInventoryClosed(value) end

---@param value OnInventoryClosedDelegate
function InventoryBasePlayer.remove_OnInventoryClosed(value) end

---@return boolean
function InventoryBasePlayer.get_Empty() end

---@return ItemSlot # The default item slot to item stacks
function InventoryBasePlayer.get_FirstNonEmptySlot() end

-- You can initialize an InventoryBase with null as parameters and use LateInitialize to set these values later. This is sometimes required during chunk loading.
---@param inventoryID string
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function InventoryBasePlayer.LateInitialize(inventoryID, api) end

-- The event fired after all the blocks have loaded.
---@param world IWorldAccessor Important interface to access the game world.
function InventoryBasePlayer.AfterBlocksLoaded(world) end

-- Tells the invnetory to update blocks and items within the invnetory.
function InventoryBasePlayer.ResolveBlocksOrItems() end

-- Will return -1 if the slot is not found in this inventory
---@param slot ItemSlot The default item slot to item stacks
---@return number
function InventoryBasePlayer.GetSlotId(slot) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param skipSlots table
---@return WeightedSlot
function InventoryBasePlayer.GetBestSuitedSlot(sourceSlot, skipSlots) end

-- Gets the best sorted slot for the given item.
---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op? ItemStackMoveOperation
---@param skipSlots? table
---@return WeightedSlot
function InventoryBasePlayer.GetBestSuitedSlot(sourceSlot, op, skipSlots) end

-- How well a stack fits into this inventory. By default 1 for new itemstacks and 3 for an itemstack merge. Chests and other stationary container also add a +1 to the suitability if the source slot is from the players inventory.
---@param sourceSlot ItemSlot The default item slot to item stacks
---@param targetSlot ItemSlot The default item slot to item stacks
---@param isMerge boolean
---@return number
function InventoryBasePlayer.GetSuitability(sourceSlot, targetSlot, isMerge) end

---@param sinkSlot ItemSlot The default item slot to item stacks
---@param sourceSlot ItemSlot The default item slot to item stacks
---@return boolean
function InventoryBasePlayer.CanContain(sinkSlot, sourceSlot) end

-- Attempts to flip the contents of both slots
---@param targetSlotId number
---@param itemSlot ItemSlot The default item slot to item stacks
---@return userdata
function InventoryBasePlayer.TryFlipItems(targetSlotId, itemSlot) end

-- Determines whether or not the player can modify the invnetory.
---@param player IPlayer Represents a player
---@param position EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@return boolean
function InventoryBasePlayer.CanPlayerModify(player, position) end

-- The event fired when the search is applied to the item.
---@param text string
function InventoryBasePlayer.OnSearchTerm(text) end

---@param slotId number
---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@return userdata
function InventoryBasePlayer.ActivateSlot(slotId, sourceSlot, op) end

-- Called when one of the containing slots has been modified
---@param slot ItemSlot The default item slot to item stacks
function InventoryBasePlayer.OnItemSlotModified(slot) end

-- Called when one of the containing slots has been modified
---@param slot ItemSlot The default item slot to item stacks
---@param extractedStack? ItemStack
function InventoryBasePlayer.DidModifyItemSlot(slot, extractedStack) end

-- Called when one of the containing slot was notified via NotifySlot
---@param slotId number
function InventoryBasePlayer.PerformNotifySlot(slotId) end

-- Called when the game is loaded or loaded from server
---@param tree ITreeAttribute Represents a List of nestable Attributes
function InventoryBasePlayer.FromTreeAttributes(tree) end

-- Called when the game is saved or sent to client
---@param tree ITreeAttribute Represents a List of nestable Attributes
function InventoryBasePlayer.ToTreeAttributes(tree) end

-- Attempts to flip the inventory slots.
---@param owningPlayer IPlayer Represents a player
---@param invIds string
---@param slotIds number
---@param lastChanged number
---@return boolean
function InventoryBasePlayer.TryFlipItemStack(owningPlayer, invIds, slotIds, lastChanged) end

---@param player IPlayer Represents a player
---@param invIds string
---@param slotIds number
---@param op ItemStackMoveOperation&
---@return boolean
function InventoryBasePlayer.TryMoveItemStack(player, invIds, slotIds, op) end

-- Attempts to get specified slots if the slots exists.
---@param player IPlayer Represents a player
---@param invIds string
---@param slotIds number
---@return ItemSlot[] # The default item slot to item stacks
function InventoryBasePlayer.GetSlotsIfExists(player, invIds, slotIds) end

-- Creates a collection of slots from a tree.
---@param tree ITreeAttribute Represents a List of nestable Attributes
---@param slots? ItemSlot[] The default item slot to item stacks
---@param modifiedSlots? table
---@return ItemSlot[] # The default item slot to item stacks
function InventoryBasePlayer.SlotsFromTreeAttributes(tree, slots, modifiedSlots) end

-- Sets the tree attribute using the slots.
---@param slots ItemSlot[] The default item slot to item stacks
---@param tree ITreeAttribute Represents a List of nestable Attributes
function InventoryBasePlayer.SlotsToTreeAttributes(slots, tree) end

-- Gets a specified number of empty slots.
---@param quantity number
---@return ItemSlot[] # The default item slot to item stacks
function InventoryBasePlayer.GenEmptySlots(quantity) end

-- Server Side: Will resent the slot contents to the client and mark them dirty there as well
-- Client Side: Will refresh stack size, model and stuff if this stack is currently being rendered
---@param slotId number
function InventoryBasePlayer.MarkSlotDirty(slotId) end

-- Discards everything in the item slots.
function InventoryBasePlayer.DiscardAll() end

---@param slot ItemSlot The default item slot to item stacks
---@param player? IPlayer Represents a player
function InventoryBasePlayer.DropSlotIfHot(slot, player) end

-- Drops the contents of the specified slots in the world.
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param slotsIds number
function InventoryBasePlayer.DropSlots(pos, slotsIds) end

-- Deletes the contents of all the slots
function InventoryBasePlayer.Clear() end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function InventoryBasePlayer.OnOwningEntityDeath(pos) end

-- Does this inventory speed up or slow down a transition for given itemstack? (Default: 1 for perish and 0 otherwise)
---@param transType EnumTransitionType
---@param stack ItemStack
---@return number
function InventoryBasePlayer.GetTransitionSpeedMul(transType, stack) end

-- Marks the inventory available for interaction for this player. Returns a open inventory packet that can be sent to the server for synchronization.
---@param player IPlayer Represents a player
---@return userdata
function InventoryBasePlayer.Open(player) end

-- Removes ability to interact with this inventory for this player. Returns a close inventory packet that can be sent to the server for synchronization.
---@param player IPlayer Represents a player
---@return userdata
function InventoryBasePlayer.Close(player) end

-- Gets the enumerator for the inventory.
---@return function
function InventoryBasePlayer.GetEnumerator() end

-- Return the slot where a chute may push items into. Return null if it shouldn't move items into this inventory.
---@param atBlockFace BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param fromSlot ItemSlot The default item slot to item stacks
---@return ItemSlot # The default item slot to item stacks
function InventoryBasePlayer.GetAutoPushIntoSlot(atBlockFace, fromSlot) end

-- Return the slot where a chute may pull items from. Return null if it is now allowed to pull any items from this inventory
---@param atBlockFace BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return ItemSlot # The default item slot to item stacks
function InventoryBasePlayer.GetAutoPullFromSlot(atBlockFace) end

---@return userdata
function InventoryBasePlayer.GetType() end

---@return string
function InventoryBasePlayer.ToString() end

---@param obj userdata
---@return boolean
function InventoryBasePlayer.Equals(obj) end

---@return number
function InventoryBasePlayer.GetHashCode() end


