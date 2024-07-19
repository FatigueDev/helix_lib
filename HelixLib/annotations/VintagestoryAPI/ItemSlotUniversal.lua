---@meta

-- A universal item slot type that can hold anything.
---@class ItemSlotUniversal: ItemSlot, ItemSlot
---@field StorageType EnumItemStorageFlags
---@field MaxSlotStackSize number The upper holding limit of the slot itself. Standard slots are only limited by the item stacks maxstack size.
---@field Inventory InventoryBase Gets the inventory attached to this ItemSlot.
---@field DrawUnavailable boolean
---@field Itemstack ItemStack The ItemStack contained within the slot.
---@field StackSize number The number of items in the stack.
---@field Empty boolean Whether or not the stack is empty.
---@field MarkedDirty function Can be used to interecept marked dirty calls. 
---@field BackgroundIcon string Icon name to be drawn in the slot background
---@field HexBackgroundColor string If set will be used as the background color
ItemSlotUniversal = {}

---@param inventory InventoryBase Basic class representing an item inventory
---@return ItemSlotUniversal
function ItemSlotUniversal.ctor(inventory) end

---@return EnumItemStorageFlags # Determines the kinds of storage types the item can be put into
function ItemSlotUniversal.get_StorageType() end

---@param value function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function ItemSlotUniversal.add_MarkedDirty(value) end

---@param value function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function ItemSlotUniversal.remove_MarkedDirty(value) end

---@return number
function ItemSlotUniversal.get_MaxSlotStackSize() end

---@param value number
function ItemSlotUniversal.set_MaxSlotStackSize(value) end

---@return InventoryBase # Basic class representing an item inventory
function ItemSlotUniversal.get_Inventory() end

---@return boolean
function ItemSlotUniversal.get_DrawUnavailable() end

---@param value boolean
function ItemSlotUniversal.set_DrawUnavailable(value) end

---@return ItemStack
function ItemSlotUniversal.get_Itemstack() end

---@param value ItemStack
function ItemSlotUniversal.set_Itemstack(value) end

---@return number
function ItemSlotUniversal.get_StackSize() end

---@return boolean
function ItemSlotUniversal.get_Empty() end

---@param value EnumItemStorageFlags Determines the kinds of storage types the item can be put into
function ItemSlotUniversal.set_StorageType(value) end

-- Amount of space left, independent of item MaxStacksize 
---@param forItemstack ItemStack
---@return number
function ItemSlotUniversal.GetRemainingSlotSpace(forItemstack) end

-- Whether or not this slot can take the item from the source slot.
---@param sourceSlot ItemSlot The default item slot to item stacks
---@param priority? EnumMergePriority
---@return boolean
function ItemSlotUniversal.CanTakeFrom(sourceSlot, priority) end

-- Whether or not this slot can hold the item from the source slot.
---@param sourceSlot ItemSlot The default item slot to item stacks
---@return boolean
function ItemSlotUniversal.CanHold(sourceSlot) end

-- Whether or not this slots item can be retrieved.
---@return boolean
function ItemSlotUniversal.CanTake() end

-- Gets the entire contents of the stack, setting the base stack to null.
---@return ItemStack
function ItemSlotUniversal.TakeOutWhole() end

-- Gets some of the contents of the stack.
---@param quantity number
---@return ItemStack
function ItemSlotUniversal.TakeOut(quantity) end

-- Attempts to place item in this slot into the target slot.
---@param world IWorldAccessor Important interface to access the game world.
---@param sinkSlot ItemSlot The default item slot to item stacks
---@param quantity? number
---@return number
function ItemSlotUniversal.TryPutInto(world, sinkSlot, quantity) end

---@param sinkSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@return number
function ItemSlotUniversal.TryPutInto(sinkSlot, op) end

-- Attempts to flip the ItemSlots.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function ItemSlotUniversal.TryFlipWith(itemSlot) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
function ItemSlotUniversal.ActivateSlot(sourceSlot, op) end

-- The event fired when the slot is modified.
---@param sinkStack ItemStack
function ItemSlotUniversal.OnItemSlotModified(sinkStack) end

-- Marks the slot as dirty which  queues it up for saving and resends it to the clients. Does not sync from client to server.
function ItemSlotUniversal.MarkDirty() end

-- Gets the name of the itemstack- if it exists.
---@return string
function ItemSlotUniversal.GetStackName() end

-- Gets the StackDescription for the item.
---@param world IClientWorldAccessor The world accessor implemented by the client, offers some extra features only available on the client
---@param extendedDebugInfo boolean
---@return string
function ItemSlotUniversal.GetStackDescription(world, extendedDebugInfo) end

---@return string
function ItemSlotUniversal.ToString() end

---@return userdata
function ItemSlotUniversal.GetType() end

---@param obj userdata
---@return boolean
function ItemSlotUniversal.Equals(obj) end

---@return number
function ItemSlotUniversal.GetHashCode() end


