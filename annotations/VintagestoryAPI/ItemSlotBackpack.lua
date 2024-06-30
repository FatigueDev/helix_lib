---@meta

-- A slot that can hold mobile containers
---@class ItemSlotBackpack: ItemSlot, ItemSlot
---@field StorageType EnumItemStorageFlags
---@field MaxSlotStackSize number
---@field Inventory InventoryBase Gets the inventory attached to this ItemSlot.
---@field DrawUnavailable boolean
---@field Itemstack ItemStack The ItemStack contained within the slot.
---@field StackSize number The number of items in the stack.
---@field Empty boolean Whether or not the stack is empty.
---@field MarkedDirty function Can be used to interecept marked dirty calls. 
---@field BackgroundIcon string Icon name to be drawn in the slot background
---@field HexBackgroundColor string If set will be used as the background color
ItemSlotBackpack = {}

---@param inventory InventoryBase Basic class representing an item inventory
---@return ItemSlotBackpack
function ItemSlotBackpack.ctor(inventory) end

---@return EnumItemStorageFlags # Determines the kinds of storage types the item can be put into
function ItemSlotBackpack.get_StorageType() end

---@return number
function ItemSlotBackpack.get_MaxSlotStackSize() end

---@param value function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function ItemSlotBackpack.add_MarkedDirty(value) end

---@param value function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function ItemSlotBackpack.remove_MarkedDirty(value) end

---@param value number
function ItemSlotBackpack.set_MaxSlotStackSize(value) end

---@return InventoryBase # Basic class representing an item inventory
function ItemSlotBackpack.get_Inventory() end

---@return boolean
function ItemSlotBackpack.get_DrawUnavailable() end

---@param value boolean
function ItemSlotBackpack.set_DrawUnavailable(value) end

---@return ItemStack
function ItemSlotBackpack.get_Itemstack() end

---@param value ItemStack
function ItemSlotBackpack.set_Itemstack(value) end

---@return number
function ItemSlotBackpack.get_StackSize() end

---@return boolean
function ItemSlotBackpack.get_Empty() end

---@param value EnumItemStorageFlags Determines the kinds of storage types the item can be put into
function ItemSlotBackpack.set_StorageType(value) end

-- Amount of space left, independent of item MaxStacksize 
---@param forItemstack ItemStack
---@return number
function ItemSlotBackpack.GetRemainingSlotSpace(forItemstack) end

-- Whether or not this slot can take the item from the source slot.
---@param sourceSlot ItemSlot The default item slot to item stacks
---@param priority? EnumMergePriority
---@return boolean
function ItemSlotBackpack.CanTakeFrom(sourceSlot, priority) end

-- Whether or not this slot can hold the item from the source slot.
---@param sourceSlot ItemSlot The default item slot to item stacks
---@return boolean
function ItemSlotBackpack.CanHold(sourceSlot) end

-- Whether or not this slots item can be retrieved.
---@return boolean
function ItemSlotBackpack.CanTake() end

-- Gets the entire contents of the stack, setting the base stack to null.
---@return ItemStack
function ItemSlotBackpack.TakeOutWhole() end

-- Gets some of the contents of the stack.
---@param quantity number
---@return ItemStack
function ItemSlotBackpack.TakeOut(quantity) end

-- Attempts to place item in this slot into the target slot.
---@param world IWorldAccessor Important interface to access the game world.
---@param sinkSlot ItemSlot The default item slot to item stacks
---@param quantity? number
---@return number
function ItemSlotBackpack.TryPutInto(world, sinkSlot, quantity) end

---@param sinkSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@return number
function ItemSlotBackpack.TryPutInto(sinkSlot, op) end

-- Attempts to flip the ItemSlots.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function ItemSlotBackpack.TryFlipWith(itemSlot) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
function ItemSlotBackpack.ActivateSlot(sourceSlot, op) end

-- The event fired when the slot is modified.
---@param sinkStack ItemStack
function ItemSlotBackpack.OnItemSlotModified(sinkStack) end

-- Marks the slot as dirty which  queues it up for saving and resends it to the clients. Does not sync from client to server.
function ItemSlotBackpack.MarkDirty() end

-- Gets the name of the itemstack- if it exists.
---@return string
function ItemSlotBackpack.GetStackName() end

-- Gets the StackDescription for the item.
---@param world IClientWorldAccessor The world accessor implemented by the client, offers some extra features only available on the client
---@param extendedDebugInfo boolean
---@return string
function ItemSlotBackpack.GetStackDescription(world, extendedDebugInfo) end

---@return string
function ItemSlotBackpack.ToString() end

---@return userdata
function ItemSlotBackpack.GetType() end

---@param obj userdata
---@return boolean
function ItemSlotBackpack.Equals(obj) end

---@return number
function ItemSlotBackpack.GetHashCode() end


