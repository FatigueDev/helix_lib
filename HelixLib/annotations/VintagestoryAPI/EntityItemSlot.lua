---@meta

---@class EntityItemSlot: DummySlot, DummySlot, ItemSlot
---@field MaxSlotStackSize number The upper holding limit of the slot itself. Standard slots are only limited by the item stacks maxstack size.
---@field Inventory InventoryBase Gets the inventory attached to this ItemSlot.
---@field DrawUnavailable boolean
---@field Itemstack ItemStack The ItemStack contained within the slot.
---@field StackSize number The number of items in the stack.
---@field Empty boolean Whether or not the stack is empty.
---@field StorageType EnumItemStorageFlags The storage type of this slot.
---@field MarkedDirty function Can be used to interecept marked dirty calls. 
---@field Ei EntityItem
---@field BackgroundIcon string Icon name to be drawn in the slot background
---@field HexBackgroundColor string If set will be used as the background color
EntityItemSlot = {}

---@param ei EntityItem
---@return EntityItemSlot
function EntityItemSlot.ctor(ei) end

---@param value function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function EntityItemSlot.add_MarkedDirty(value) end

---@param value function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function EntityItemSlot.remove_MarkedDirty(value) end

---@return number
function EntityItemSlot.get_MaxSlotStackSize() end

---@param value number
function EntityItemSlot.set_MaxSlotStackSize(value) end

---@return InventoryBase # Basic class representing an item inventory
function EntityItemSlot.get_Inventory() end

---@return boolean
function EntityItemSlot.get_DrawUnavailable() end

---@param value boolean
function EntityItemSlot.set_DrawUnavailable(value) end

---@return ItemStack
function EntityItemSlot.get_Itemstack() end

---@param value ItemStack
function EntityItemSlot.set_Itemstack(value) end

---@return number
function EntityItemSlot.get_StackSize() end

---@return boolean
function EntityItemSlot.get_Empty() end

---@return EnumItemStorageFlags # Determines the kinds of storage types the item can be put into
function EntityItemSlot.get_StorageType() end

---@param value EnumItemStorageFlags Determines the kinds of storage types the item can be put into
function EntityItemSlot.set_StorageType(value) end

-- Amount of space left, independent of item MaxStacksize 
---@param forItemstack ItemStack
---@return number
function EntityItemSlot.GetRemainingSlotSpace(forItemstack) end

-- Whether or not this slot can take the item from the source slot.
---@param sourceSlot ItemSlot The default item slot to item stacks
---@param priority? EnumMergePriority
---@return boolean
function EntityItemSlot.CanTakeFrom(sourceSlot, priority) end

-- Whether or not this slot can hold the item from the source slot.
---@param sourceSlot ItemSlot The default item slot to item stacks
---@return boolean
function EntityItemSlot.CanHold(sourceSlot) end

-- Whether or not this slots item can be retrieved.
---@return boolean
function EntityItemSlot.CanTake() end

-- Gets the entire contents of the stack, setting the base stack to null.
---@return ItemStack
function EntityItemSlot.TakeOutWhole() end

-- Gets some of the contents of the stack.
---@param quantity number
---@return ItemStack
function EntityItemSlot.TakeOut(quantity) end

-- Attempts to place item in this slot into the target slot.
---@param world IWorldAccessor Important interface to access the game world.
---@param sinkSlot ItemSlot The default item slot to item stacks
---@param quantity? number
---@return number
function EntityItemSlot.TryPutInto(world, sinkSlot, quantity) end

---@param sinkSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@return number
function EntityItemSlot.TryPutInto(sinkSlot, op) end

-- Attempts to flip the ItemSlots.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function EntityItemSlot.TryFlipWith(itemSlot) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
function EntityItemSlot.ActivateSlot(sourceSlot, op) end

-- The event fired when the slot is modified.
---@param sinkStack ItemStack
function EntityItemSlot.OnItemSlotModified(sinkStack) end

-- Marks the slot as dirty which  queues it up for saving and resends it to the clients. Does not sync from client to server.
function EntityItemSlot.MarkDirty() end

-- Gets the name of the itemstack- if it exists.
---@return string
function EntityItemSlot.GetStackName() end

-- Gets the StackDescription for the item.
---@param world IClientWorldAccessor The world accessor implemented by the client, offers some extra features only available on the client
---@param extendedDebugInfo boolean
---@return string
function EntityItemSlot.GetStackDescription(world, extendedDebugInfo) end

---@return string
function EntityItemSlot.ToString() end

---@return userdata
function EntityItemSlot.GetType() end

---@param obj userdata
---@return boolean
function EntityItemSlot.Equals(obj) end

---@return number
function EntityItemSlot.GetHashCode() end


