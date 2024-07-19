---@meta

---@class InventoryPlayerCreative: InventoryBasePlayer, IEnumerable, ITabbedInventory, IInventory, InventoryBase, InventoryBasePlayer
---@field Accessible boolean
---@field CurrentTab CreativeTab
---@field CurrentTabIndex number
---@field Count number
---@field CreativeTabs CreativeTabs
---@field Item ItemSlot
---@field RemoveOnClose boolean
---@field Player IPlayer The owning player of this inventory
---@field MaxContentDimensions Size3f Optional field, if set, will check against the collectible dimensions and deny placecment if too large
---@field InventoryID string The internal name of the inventory instance.
---@field ClassName string The class name of the inventory.
---@field LastChanged number Milliseconds since server startup when the inventory was last changed
---@field CountForNetworkPacket number
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
---@field tabs CreativeTabs
---@field Api ICoreAPI The world in which the inventory is operating in. Gives inventories access to block types, item types and the ability to drop items on the ground.
---@field Pos BlockPos Optional field that can be used to define in-world position of the inventory. Is set by most container block entities. Might be null!
---@field lastChangedSinceServerStart number (Not implemented!) The time it was last changed since the server was started.
---@field openedByPlayerGUIds HashSet`1 The players that had opened the inventory.
---@field InvNetworkUtil IInventoryNetworkUtil The network utility for the inventory
---@field dirtySlots HashSet`1 Slots that have been recently modified. This list is used on the server to update the clients (then cleared) and on the client to redraw itemstacks in guis (then cleared)
---@field OnAcquireTransitionSpeed CustomGetTransitionSpeedMulDelegate If set, the value is returned when GetTransitionSpeedMul() is called instead of the default value.
InventoryPlayerCreative = {}

---@param className string
---@param playerUID string
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@return InventoryPlayerCreative
function InventoryPlayerCreative.ctor(className, playerUID, api) end
---@param inventoryId string
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@return InventoryPlayerCreative
function InventoryPlayerCreative.ctor(inventoryId, api) end

---@return boolean
function InventoryPlayerCreative.get_Accessible() end

---@param inventoryID string
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function InventoryPlayerCreative.LateInitialize(inventoryID, api) end

---@param transType EnumTransitionType
---@param stack ItemStack
---@return number
function InventoryPlayerCreative.GetTransitionSpeedMul(transType, stack) end

---@param player IPlayer Represents a player
---@param position EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@return boolean
function InventoryPlayerCreative.CanPlayerAccess(player, position) end

---@param slotId number
---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@return userdata
function InventoryPlayerCreative.ActivateSlot(slotId, sourceSlot, op) end

---@return CreativeTab
function InventoryPlayerCreative.get_CurrentTab() end

---@return number
function InventoryPlayerCreative.get_CurrentTabIndex() end

---@param tabIndex number
function InventoryPlayerCreative.SetTab(tabIndex) end

---@param world IWorldAccessor Important interface to access the game world.
function InventoryPlayerCreative.AfterBlocksLoaded(world) end

---@param player IPlayer Represents a player
---@return userdata
function InventoryPlayerCreative.Open(player) end

---@param player IPlayer Represents a player
---@return userdata
function InventoryPlayerCreative.Close(player) end

---@return number
function InventoryPlayerCreative.get_Count() end

---@return CreativeTabs
function InventoryPlayerCreative.get_CreativeTabs() end

---@param slotId number
---@return ItemSlot # The default item slot to item stacks
function InventoryPlayerCreative.get_Item(slotId) end

---@param slotId number
---@param value ItemSlot The default item slot to item stacks
function InventoryPlayerCreative.set_Item(slotId, value) end

function InventoryPlayerCreative.ResolveBlocksOrItems() end

---@param slot ItemSlot The default item slot to item stacks
---@return number
function InventoryPlayerCreative.GetSlotId(slot) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation
---@param skipSlots? table
---@return WeightedSlot
function InventoryPlayerCreative.GetBestSuitedSlot(sourceSlot, op, skipSlots) end

---@param tree ITreeAttribute Represents a List of nestable Attributes
function InventoryPlayerCreative.FromTreeAttributes(tree) end

---@param tree ITreeAttribute Represents a List of nestable Attributes
function InventoryPlayerCreative.ToTreeAttributes(tree) end

---@param slotId number
function InventoryPlayerCreative.MarkSlotDirty(slotId) end

function InventoryPlayerCreative.DiscardAll() end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param maxStackSize? number
function InventoryPlayerCreative.DropAll(pos, maxStackSize) end

---@param player IPlayer Represents a player
---@return boolean
function InventoryPlayerCreative.HasOpened(player) end

---@return CreativeTab
function InventoryPlayerCreative.GetSelectedTab() end

---@return boolean
function InventoryPlayerCreative.get_RemoveOnClose() end

---@return IPlayer # Represents a player
function InventoryPlayerCreative.get_Player() end

---@return Size3f # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function InventoryPlayerCreative.get_MaxContentDimensions() end

---@param value Size3f Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function InventoryPlayerCreative.set_MaxContentDimensions(value) end

---@return string
function InventoryPlayerCreative.get_InventoryID() end

---@return string
function InventoryPlayerCreative.get_ClassName() end

---@return number
function InventoryPlayerCreative.get_LastChanged() end

---@return number
function InventoryPlayerCreative.get_CountForNetworkPacket() end

---@return boolean
function InventoryPlayerCreative.get_IsDirty() end

---@return HashSet`1
function InventoryPlayerCreative.get_DirtySlots() end

---@return boolean
function InventoryPlayerCreative.get_TakeLocked() end

---@param value boolean
function InventoryPlayerCreative.set_TakeLocked(value) end

---@return boolean
function InventoryPlayerCreative.get_PutLocked() end

---@param value boolean
function InventoryPlayerCreative.set_PutLocked(value) end

---@param value function
function InventoryPlayerCreative.add_SlotModified(value) end

---@param value function
function InventoryPlayerCreative.remove_SlotModified(value) end

---@param value function
function InventoryPlayerCreative.add_SlotNotified(value) end

---@param value function
function InventoryPlayerCreative.remove_SlotNotified(value) end

---@param value OnInventoryOpenedDelegate
function InventoryPlayerCreative.add_OnInventoryOpened(value) end

---@param value OnInventoryOpenedDelegate
function InventoryPlayerCreative.remove_OnInventoryOpened(value) end

---@param value OnInventoryClosedDelegate
function InventoryPlayerCreative.add_OnInventoryClosed(value) end

---@param value OnInventoryClosedDelegate
function InventoryPlayerCreative.remove_OnInventoryClosed(value) end

---@return boolean
function InventoryPlayerCreative.get_Empty() end

---@return ItemSlot # The default item slot to item stacks
function InventoryPlayerCreative.get_FirstNonEmptySlot() end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param skipSlots table
---@return WeightedSlot
function InventoryPlayerCreative.GetBestSuitedSlot(sourceSlot, skipSlots) end

-- How well a stack fits into this inventory. By default 1 for new itemstacks and 3 for an itemstack merge. Chests and other stationary container also add a +1 to the suitability if the source slot is from the players inventory.
---@param sourceSlot ItemSlot The default item slot to item stacks
---@param targetSlot ItemSlot The default item slot to item stacks
---@param isMerge boolean
---@return number
function InventoryPlayerCreative.GetSuitability(sourceSlot, targetSlot, isMerge) end

---@param sinkSlot ItemSlot The default item slot to item stacks
---@param sourceSlot ItemSlot The default item slot to item stacks
---@return boolean
function InventoryPlayerCreative.CanContain(sinkSlot, sourceSlot) end

-- Attempts to flip the contents of both slots
---@param targetSlotId number
---@param itemSlot ItemSlot The default item slot to item stacks
---@return userdata
function InventoryPlayerCreative.TryFlipItems(targetSlotId, itemSlot) end

-- Determines whether or not the player can modify the invnetory.
---@param player IPlayer Represents a player
---@param position EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@return boolean
function InventoryPlayerCreative.CanPlayerModify(player, position) end

-- The event fired when the search is applied to the item.
---@param text string
function InventoryPlayerCreative.OnSearchTerm(text) end

-- Called when one of the containing slots has been modified
---@param slot ItemSlot The default item slot to item stacks
function InventoryPlayerCreative.OnItemSlotModified(slot) end

-- Called when one of the containing slots has been modified
---@param slot ItemSlot The default item slot to item stacks
---@param extractedStack? ItemStack
function InventoryPlayerCreative.DidModifyItemSlot(slot, extractedStack) end

-- Called when one of the containing slot was notified via NotifySlot
---@param slotId number
function InventoryPlayerCreative.PerformNotifySlot(slotId) end

-- Attempts to flip the inventory slots.
---@param owningPlayer IPlayer Represents a player
---@param invIds string
---@param slotIds number
---@param lastChanged number
---@return boolean
function InventoryPlayerCreative.TryFlipItemStack(owningPlayer, invIds, slotIds, lastChanged) end

---@param player IPlayer Represents a player
---@param invIds string
---@param slotIds number
---@param op ItemStackMoveOperation&
---@return boolean
function InventoryPlayerCreative.TryMoveItemStack(player, invIds, slotIds, op) end

-- Attempts to get specified slots if the slots exists.
---@param player IPlayer Represents a player
---@param invIds string
---@param slotIds number
---@return ItemSlot[] # The default item slot to item stacks
function InventoryPlayerCreative.GetSlotsIfExists(player, invIds, slotIds) end

-- Creates a collection of slots from a tree.
---@param tree ITreeAttribute Represents a List of nestable Attributes
---@param slots? ItemSlot[] The default item slot to item stacks
---@param modifiedSlots? table
---@return ItemSlot[] # The default item slot to item stacks
function InventoryPlayerCreative.SlotsFromTreeAttributes(tree, slots, modifiedSlots) end

-- Sets the tree attribute using the slots.
---@param slots ItemSlot[] The default item slot to item stacks
---@param tree ITreeAttribute Represents a List of nestable Attributes
function InventoryPlayerCreative.SlotsToTreeAttributes(slots, tree) end

-- Gets a specified number of empty slots.
---@param quantity number
---@return ItemSlot[] # The default item slot to item stacks
function InventoryPlayerCreative.GenEmptySlots(quantity) end

---@param slot ItemSlot The default item slot to item stacks
---@param player? IPlayer Represents a player
function InventoryPlayerCreative.DropSlotIfHot(slot, player) end

-- Drops the contents of the specified slots in the world.
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param slotsIds number
function InventoryPlayerCreative.DropSlots(pos, slotsIds) end

-- Deletes the contents of all the slots
function InventoryPlayerCreative.Clear() end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function InventoryPlayerCreative.OnOwningEntityDeath(pos) end

-- Gets the enumerator for the inventory.
---@return function
function InventoryPlayerCreative.GetEnumerator() end

-- Return the slot where a chute may push items into. Return null if it shouldn't move items into this inventory.
---@param atBlockFace BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param fromSlot ItemSlot The default item slot to item stacks
---@return ItemSlot # The default item slot to item stacks
function InventoryPlayerCreative.GetAutoPushIntoSlot(atBlockFace, fromSlot) end

-- Return the slot where a chute may pull items from. Return null if it is now allowed to pull any items from this inventory
---@param atBlockFace BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return ItemSlot # The default item slot to item stacks
function InventoryPlayerCreative.GetAutoPullFromSlot(atBlockFace) end

---@return userdata
function InventoryPlayerCreative.GetType() end

---@return string
function InventoryPlayerCreative.ToString() end

---@param obj userdata
---@return boolean
function InventoryPlayerCreative.Equals(obj) end

---@return number
function InventoryPlayerCreative.GetHashCode() end


