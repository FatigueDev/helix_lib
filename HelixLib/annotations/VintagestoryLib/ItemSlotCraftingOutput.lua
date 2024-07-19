---@meta

---@class ItemSlotCraftingOutput: ItemSlotOutput, ItemSlot, ItemSlotOutput
---@field MaxSlotStackSize number The upper holding limit of the slot itself. Standard slots are only limited by the item stacks maxstack size.
---@field Inventory InventoryBase Gets the inventory attached to this ItemSlot.
---@field DrawUnavailable boolean
---@field Itemstack ItemStack The ItemStack contained within the slot.
---@field StackSize number The number of items in the stack.
---@field Empty boolean Whether or not the stack is empty.
---@field StorageType EnumItemStorageFlags The storage type of this slot.
---@field MarkedDirty function Can be used to interecept marked dirty calls. 
---@field hasLeftOvers boolean
---@field BackgroundIcon string Icon name to be drawn in the slot background
---@field HexBackgroundColor string If set will be used as the background color
ItemSlotCraftingOutput = {}

---@param inventory InventoryBase Basic class representing an item inventory
---@return ItemSlotCraftingOutput
function ItemSlotCraftingOutput.ctor(inventory) end

---@param sinkSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@return number
function ItemSlotCraftingOutput.TryPutInto(sinkSlot, op) end

---@param sinkSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@return number
function ItemSlotCraftingOutput.TryPutIntoNoEvent(sinkSlot, op) end

---@param itemstackFromSourceSlot ItemSlot The default item slot to item stacks
---@return boolean
function ItemSlotCraftingOutput.CanHold(itemstackFromSourceSlot) end

---@return boolean
function ItemSlotCraftingOutput.CanTake() end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param priority? EnumMergePriority
---@return boolean
function ItemSlotCraftingOutput.CanTakeFrom(sourceSlot, priority) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
function ItemSlotCraftingOutput.ActivateSlot(sourceSlot, op) end

---@param value function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function ItemSlotCraftingOutput.add_MarkedDirty(value) end

---@param value function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function ItemSlotCraftingOutput.remove_MarkedDirty(value) end

---@return number
function ItemSlotCraftingOutput.get_MaxSlotStackSize() end

---@param value number
function ItemSlotCraftingOutput.set_MaxSlotStackSize(value) end

---@return InventoryBase # Basic class representing an item inventory
function ItemSlotCraftingOutput.get_Inventory() end

---@return boolean
function ItemSlotCraftingOutput.get_DrawUnavailable() end

---@param value boolean
function ItemSlotCraftingOutput.set_DrawUnavailable(value) end

---@return ItemStack
function ItemSlotCraftingOutput.get_Itemstack() end

---@param value ItemStack
function ItemSlotCraftingOutput.set_Itemstack(value) end

---@return number
function ItemSlotCraftingOutput.get_StackSize() end

---@return boolean
function ItemSlotCraftingOutput.get_Empty() end

---@return EnumItemStorageFlags # Determines the kinds of storage types the item can be put into
function ItemSlotCraftingOutput.get_StorageType() end

---@param value EnumItemStorageFlags Determines the kinds of storage types the item can be put into
function ItemSlotCraftingOutput.set_StorageType(value) end

-- Amount of space left, independent of item MaxStacksize 
---@param forItemstack ItemStack
---@return number
function ItemSlotCraftingOutput.GetRemainingSlotSpace(forItemstack) end

-- Gets the entire contents of the stack, setting the base stack to null.
---@return ItemStack
function ItemSlotCraftingOutput.TakeOutWhole() end

-- Gets some of the contents of the stack.
---@param quantity number
---@return ItemStack
function ItemSlotCraftingOutput.TakeOut(quantity) end

-- Attempts to place item in this slot into the target slot.
---@param world IWorldAccessor Important interface to access the game world.
---@param sinkSlot ItemSlot The default item slot to item stacks
---@param quantity? number
---@return number
function ItemSlotCraftingOutput.TryPutInto(world, sinkSlot, quantity) end

-- Attempts to flip the ItemSlots.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function ItemSlotCraftingOutput.TryFlipWith(itemSlot) end

-- The event fired when the slot is modified.
---@param sinkStack ItemStack
function ItemSlotCraftingOutput.OnItemSlotModified(sinkStack) end

-- Marks the slot as dirty which  queues it up for saving and resends it to the clients. Does not sync from client to server.
function ItemSlotCraftingOutput.MarkDirty() end

-- Gets the name of the itemstack- if it exists.
---@return string
function ItemSlotCraftingOutput.GetStackName() end

-- Gets the StackDescription for the item.
---@param world IClientWorldAccessor The world accessor implemented by the client, offers some extra features only available on the client
---@param extendedDebugInfo boolean
---@return string
function ItemSlotCraftingOutput.GetStackDescription(world, extendedDebugInfo) end

---@return string
function ItemSlotCraftingOutput.ToString() end

---@return userdata
function ItemSlotCraftingOutput.GetType() end

---@param obj userdata
---@return boolean
function ItemSlotCraftingOutput.Equals(obj) end

---@return number
function ItemSlotCraftingOutput.GetHashCode() end


