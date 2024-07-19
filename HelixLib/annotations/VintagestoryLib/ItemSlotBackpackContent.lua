---@meta

---@class ItemSlotBackpackContent: ItemSlotSurvival, ItemSlot, ItemSlotSurvival
---@field StorageType EnumItemStorageFlags
---@field MaxSlotStackSize number The upper holding limit of the slot itself. Standard slots are only limited by the item stacks maxstack size.
---@field Inventory InventoryBase Gets the inventory attached to this ItemSlot.
---@field DrawUnavailable boolean
---@field Itemstack ItemStack The ItemStack contained within the slot.
---@field StackSize number The number of items in the stack.
---@field Empty boolean Whether or not the stack is empty.
---@field MarkedDirty function Can be used to interecept marked dirty calls. 
---@field BackpackIndex number
---@field SlotIndex number
---@field storageType EnumItemStorageFlags
---@field BackgroundIcon string Icon name to be drawn in the slot background
---@field HexBackgroundColor string If set will be used as the background color
ItemSlotBackpackContent = {}

---@param inventory InventoryBase Basic class representing an item inventory
---@param BackpackIndex number
---@param SlotIndex number
---@param storageType EnumItemStorageFlags Determines the kinds of storage types the item can be put into
---@return ItemSlotBackpackContent
function ItemSlotBackpackContent.ctor(inventory, BackpackIndex, SlotIndex, storageType) end

---@return EnumItemStorageFlags # Determines the kinds of storage types the item can be put into
function ItemSlotBackpackContent.get_StorageType() end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param priority? EnumMergePriority
---@return boolean
function ItemSlotBackpackContent.CanTakeFrom(sourceSlot, priority) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@return boolean
function ItemSlotBackpackContent.CanHold(sourceSlot) end

---@param value function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function ItemSlotBackpackContent.add_MarkedDirty(value) end

---@param value function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function ItemSlotBackpackContent.remove_MarkedDirty(value) end

---@return number
function ItemSlotBackpackContent.get_MaxSlotStackSize() end

---@param value number
function ItemSlotBackpackContent.set_MaxSlotStackSize(value) end

---@return InventoryBase # Basic class representing an item inventory
function ItemSlotBackpackContent.get_Inventory() end

---@return boolean
function ItemSlotBackpackContent.get_DrawUnavailable() end

---@param value boolean
function ItemSlotBackpackContent.set_DrawUnavailable(value) end

---@return ItemStack
function ItemSlotBackpackContent.get_Itemstack() end

---@param value ItemStack
function ItemSlotBackpackContent.set_Itemstack(value) end

---@return number
function ItemSlotBackpackContent.get_StackSize() end

---@return boolean
function ItemSlotBackpackContent.get_Empty() end

---@param value EnumItemStorageFlags Determines the kinds of storage types the item can be put into
function ItemSlotBackpackContent.set_StorageType(value) end

-- Amount of space left, independent of item MaxStacksize 
---@param forItemstack ItemStack
---@return number
function ItemSlotBackpackContent.GetRemainingSlotSpace(forItemstack) end

-- Whether or not this slots item can be retrieved.
---@return boolean
function ItemSlotBackpackContent.CanTake() end

-- Gets the entire contents of the stack, setting the base stack to null.
---@return ItemStack
function ItemSlotBackpackContent.TakeOutWhole() end

-- Gets some of the contents of the stack.
---@param quantity number
---@return ItemStack
function ItemSlotBackpackContent.TakeOut(quantity) end

-- Attempts to place item in this slot into the target slot.
---@param world IWorldAccessor Important interface to access the game world.
---@param sinkSlot ItemSlot The default item slot to item stacks
---@param quantity? number
---@return number
function ItemSlotBackpackContent.TryPutInto(world, sinkSlot, quantity) end

---@param sinkSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@return number
function ItemSlotBackpackContent.TryPutInto(sinkSlot, op) end

-- Attempts to flip the ItemSlots.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function ItemSlotBackpackContent.TryFlipWith(itemSlot) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
function ItemSlotBackpackContent.ActivateSlot(sourceSlot, op) end

-- The event fired when the slot is modified.
---@param sinkStack ItemStack
function ItemSlotBackpackContent.OnItemSlotModified(sinkStack) end

-- Marks the slot as dirty which  queues it up for saving and resends it to the clients. Does not sync from client to server.
function ItemSlotBackpackContent.MarkDirty() end

-- Gets the name of the itemstack- if it exists.
---@return string
function ItemSlotBackpackContent.GetStackName() end

-- Gets the StackDescription for the item.
---@param world IClientWorldAccessor The world accessor implemented by the client, offers some extra features only available on the client
---@param extendedDebugInfo boolean
---@return string
function ItemSlotBackpackContent.GetStackDescription(world, extendedDebugInfo) end

---@return string
function ItemSlotBackpackContent.ToString() end

---@return userdata
function ItemSlotBackpackContent.GetType() end

---@param obj userdata
---@return boolean
function ItemSlotBackpackContent.Equals(obj) end

---@return number
function ItemSlotBackpackContent.GetHashCode() end


