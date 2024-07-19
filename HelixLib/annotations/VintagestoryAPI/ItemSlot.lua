---@meta

-- The default item slot to item stacks
---@class ItemSlot
---@field MaxSlotStackSize number The upper holding limit of the slot itself. Standard slots are only limited by the item stacks maxstack size.
---@field Inventory InventoryBase Gets the inventory attached to this ItemSlot.
---@field DrawUnavailable boolean
---@field Itemstack ItemStack The ItemStack contained within the slot.
---@field StackSize number The number of items in the stack.
---@field Empty boolean Whether or not the stack is empty.
---@field StorageType EnumItemStorageFlags The storage type of this slot.
---@field MarkedDirty function Can be used to interecept marked dirty calls. 
---@field BackgroundIcon string Icon name to be drawn in the slot background
---@field HexBackgroundColor string If set will be used as the background color
ItemSlot = {}

---@param inventory InventoryBase Basic class representing an item inventory
---@return ItemSlot
function ItemSlot.ctor(inventory) end

---@param value function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function ItemSlot.add_MarkedDirty(value) end

---@param value function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function ItemSlot.remove_MarkedDirty(value) end

---@return number
function ItemSlot.get_MaxSlotStackSize() end

---@param value number
function ItemSlot.set_MaxSlotStackSize(value) end

---@return InventoryBase # Basic class representing an item inventory
function ItemSlot.get_Inventory() end

---@return boolean
function ItemSlot.get_DrawUnavailable() end

---@param value boolean
function ItemSlot.set_DrawUnavailable(value) end

---@return ItemStack
function ItemSlot.get_Itemstack() end

---@param value ItemStack
function ItemSlot.set_Itemstack(value) end

---@return number
function ItemSlot.get_StackSize() end

---@return boolean
function ItemSlot.get_Empty() end

---@return EnumItemStorageFlags # Determines the kinds of storage types the item can be put into
function ItemSlot.get_StorageType() end

---@param value EnumItemStorageFlags Determines the kinds of storage types the item can be put into
function ItemSlot.set_StorageType(value) end

-- Amount of space left, independent of item MaxStacksize 
---@param forItemstack ItemStack
---@return number
function ItemSlot.GetRemainingSlotSpace(forItemstack) end

-- Whether or not this slot can take the item from the source slot.
---@param sourceSlot ItemSlot The default item slot to item stacks
---@param priority? EnumMergePriority
---@return boolean
function ItemSlot.CanTakeFrom(sourceSlot, priority) end

-- Whether or not this slot can hold the item from the source slot.
---@param sourceSlot ItemSlot The default item slot to item stacks
---@return boolean
function ItemSlot.CanHold(sourceSlot) end

-- Whether or not this slots item can be retrieved.
---@return boolean
function ItemSlot.CanTake() end

-- Gets the entire contents of the stack, setting the base stack to null.
---@return ItemStack
function ItemSlot.TakeOutWhole() end

-- Gets some of the contents of the stack.
---@param quantity number
---@return ItemStack
function ItemSlot.TakeOut(quantity) end

-- Attempts to place item in this slot into the target slot.
---@param world IWorldAccessor Important interface to access the game world.
---@param sinkSlot ItemSlot The default item slot to item stacks
---@param quantity? number
---@return number
function ItemSlot.TryPutInto(world, sinkSlot, quantity) end

---@param sinkSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@return number
function ItemSlot.TryPutInto(sinkSlot, op) end

-- Attempts to flip the ItemSlots.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function ItemSlot.TryFlipWith(itemSlot) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
function ItemSlot.ActivateSlot(sourceSlot, op) end

-- The event fired when the slot is modified.
---@param sinkStack ItemStack
function ItemSlot.OnItemSlotModified(sinkStack) end

-- Marks the slot as dirty which  queues it up for saving and resends it to the clients. Does not sync from client to server.
function ItemSlot.MarkDirty() end

-- Gets the name of the itemstack- if it exists.
---@return string
function ItemSlot.GetStackName() end

-- Gets the StackDescription for the item.
---@param world IClientWorldAccessor The world accessor implemented by the client, offers some extra features only available on the client
---@param extendedDebugInfo boolean
---@return string
function ItemSlot.GetStackDescription(world, extendedDebugInfo) end

---@return string
function ItemSlot.ToString() end

---@return userdata
function ItemSlot.GetType() end

---@param obj userdata
---@return boolean
function ItemSlot.Equals(obj) end

---@return number
function ItemSlot.GetHashCode() end


