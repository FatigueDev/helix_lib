---@meta

-- Standard survival mode slot that can hold everything except full backpacks
---@class ItemSlotSurvival: ItemSlot, ItemSlot
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
ItemSlotSurvival = {}

---@param inventory InventoryBase Basic class representing an item inventory
---@return ItemSlotSurvival
function ItemSlotSurvival.ctor(inventory) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param priority? EnumMergePriority
---@return boolean
function ItemSlotSurvival.CanTakeFrom(sourceSlot, priority) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@return boolean
function ItemSlotSurvival.CanHold(sourceSlot) end

---@param value function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function ItemSlotSurvival.add_MarkedDirty(value) end

---@param value function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function ItemSlotSurvival.remove_MarkedDirty(value) end

---@return number
function ItemSlotSurvival.get_MaxSlotStackSize() end

---@param value number
function ItemSlotSurvival.set_MaxSlotStackSize(value) end

---@return InventoryBase # Basic class representing an item inventory
function ItemSlotSurvival.get_Inventory() end

---@return boolean
function ItemSlotSurvival.get_DrawUnavailable() end

---@param value boolean
function ItemSlotSurvival.set_DrawUnavailable(value) end

---@return ItemStack
function ItemSlotSurvival.get_Itemstack() end

---@param value ItemStack
function ItemSlotSurvival.set_Itemstack(value) end

---@return number
function ItemSlotSurvival.get_StackSize() end

---@return boolean
function ItemSlotSurvival.get_Empty() end

---@return EnumItemStorageFlags # Determines the kinds of storage types the item can be put into
function ItemSlotSurvival.get_StorageType() end

---@param value EnumItemStorageFlags Determines the kinds of storage types the item can be put into
function ItemSlotSurvival.set_StorageType(value) end

-- Amount of space left, independent of item MaxStacksize 
---@param forItemstack ItemStack
---@return number
function ItemSlotSurvival.GetRemainingSlotSpace(forItemstack) end

-- Whether or not this slots item can be retrieved.
---@return boolean
function ItemSlotSurvival.CanTake() end

-- Gets the entire contents of the stack, setting the base stack to null.
---@return ItemStack
function ItemSlotSurvival.TakeOutWhole() end

-- Gets some of the contents of the stack.
---@param quantity number
---@return ItemStack
function ItemSlotSurvival.TakeOut(quantity) end

-- Attempts to place item in this slot into the target slot.
---@param world IWorldAccessor Important interface to access the game world.
---@param sinkSlot ItemSlot The default item slot to item stacks
---@param quantity? number
---@return number
function ItemSlotSurvival.TryPutInto(world, sinkSlot, quantity) end

---@param sinkSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@return number
function ItemSlotSurvival.TryPutInto(sinkSlot, op) end

-- Attempts to flip the ItemSlots.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function ItemSlotSurvival.TryFlipWith(itemSlot) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
function ItemSlotSurvival.ActivateSlot(sourceSlot, op) end

-- The event fired when the slot is modified.
---@param sinkStack ItemStack
function ItemSlotSurvival.OnItemSlotModified(sinkStack) end

-- Marks the slot as dirty which  queues it up for saving and resends it to the clients. Does not sync from client to server.
function ItemSlotSurvival.MarkDirty() end

-- Gets the name of the itemstack- if it exists.
---@return string
function ItemSlotSurvival.GetStackName() end

-- Gets the StackDescription for the item.
---@param world IClientWorldAccessor The world accessor implemented by the client, offers some extra features only available on the client
---@param extendedDebugInfo boolean
---@return string
function ItemSlotSurvival.GetStackDescription(world, extendedDebugInfo) end

---@return string
function ItemSlotSurvival.ToString() end

---@return userdata
function ItemSlotSurvival.GetType() end

---@param obj userdata
---@return boolean
function ItemSlotSurvival.Equals(obj) end

---@return number
function ItemSlotSurvival.GetHashCode() end


