---@meta

-- A single slot not attached to a given inventory.
---@class DummySlot: ItemSlot, ItemSlot
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
DummySlot = {}

---@param stack ItemStack
---@return DummySlot
function DummySlot.ctor(stack) end
---@return DummySlot
function DummySlot.ctor() end
---@param stack ItemStack
---@param inv InventoryBase Basic class representing an item inventory
---@return DummySlot
function DummySlot.ctor(stack, inv) end

---@param value function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function DummySlot.add_MarkedDirty(value) end

---@param value function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function DummySlot.remove_MarkedDirty(value) end

---@return number
function DummySlot.get_MaxSlotStackSize() end

---@param value number
function DummySlot.set_MaxSlotStackSize(value) end

---@return InventoryBase # Basic class representing an item inventory
function DummySlot.get_Inventory() end

---@return boolean
function DummySlot.get_DrawUnavailable() end

---@param value boolean
function DummySlot.set_DrawUnavailable(value) end

---@return ItemStack
function DummySlot.get_Itemstack() end

---@param value ItemStack
function DummySlot.set_Itemstack(value) end

---@return number
function DummySlot.get_StackSize() end

---@return boolean
function DummySlot.get_Empty() end

---@return EnumItemStorageFlags # Determines the kinds of storage types the item can be put into
function DummySlot.get_StorageType() end

---@param value EnumItemStorageFlags Determines the kinds of storage types the item can be put into
function DummySlot.set_StorageType(value) end

-- Amount of space left, independent of item MaxStacksize 
---@param forItemstack ItemStack
---@return number
function DummySlot.GetRemainingSlotSpace(forItemstack) end

-- Whether or not this slot can take the item from the source slot.
---@param sourceSlot ItemSlot The default item slot to item stacks
---@param priority? EnumMergePriority
---@return boolean
function DummySlot.CanTakeFrom(sourceSlot, priority) end

-- Whether or not this slot can hold the item from the source slot.
---@param sourceSlot ItemSlot The default item slot to item stacks
---@return boolean
function DummySlot.CanHold(sourceSlot) end

-- Whether or not this slots item can be retrieved.
---@return boolean
function DummySlot.CanTake() end

-- Gets the entire contents of the stack, setting the base stack to null.
---@return ItemStack
function DummySlot.TakeOutWhole() end

-- Gets some of the contents of the stack.
---@param quantity number
---@return ItemStack
function DummySlot.TakeOut(quantity) end

-- Attempts to place item in this slot into the target slot.
---@param world IWorldAccessor Important interface to access the game world.
---@param sinkSlot ItemSlot The default item slot to item stacks
---@param quantity? number
---@return number
function DummySlot.TryPutInto(world, sinkSlot, quantity) end

---@param sinkSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@return number
function DummySlot.TryPutInto(sinkSlot, op) end

-- Attempts to flip the ItemSlots.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function DummySlot.TryFlipWith(itemSlot) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
function DummySlot.ActivateSlot(sourceSlot, op) end

-- The event fired when the slot is modified.
---@param sinkStack ItemStack
function DummySlot.OnItemSlotModified(sinkStack) end

-- Marks the slot as dirty which  queues it up for saving and resends it to the clients. Does not sync from client to server.
function DummySlot.MarkDirty() end

-- Gets the name of the itemstack- if it exists.
---@return string
function DummySlot.GetStackName() end

-- Gets the StackDescription for the item.
---@param world IClientWorldAccessor The world accessor implemented by the client, offers some extra features only available on the client
---@param extendedDebugInfo boolean
---@return string
function DummySlot.GetStackDescription(world, extendedDebugInfo) end

---@return string
function DummySlot.ToString() end

---@return userdata
function DummySlot.GetType() end

---@param obj userdata
---@return boolean
function DummySlot.Equals(obj) end

---@return number
function DummySlot.GetHashCode() end


