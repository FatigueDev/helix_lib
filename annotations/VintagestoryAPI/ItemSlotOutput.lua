---@meta

-- A slot from which the player can only take stuff out of, but not place anything in it
---@class ItemSlotOutput: ItemSlot, ItemSlot
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
ItemSlotOutput = {}

---@param inventory InventoryBase Basic class representing an item inventory
---@return ItemSlotOutput
function ItemSlotOutput.ctor(inventory) end

---@param itemstackFromSourceSlot ItemSlot The default item slot to item stacks
---@return boolean
function ItemSlotOutput.CanHold(itemstackFromSourceSlot) end

---@return boolean
function ItemSlotOutput.CanTake() end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param priority? EnumMergePriority
---@return boolean
function ItemSlotOutput.CanTakeFrom(sourceSlot, priority) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
function ItemSlotOutput.ActivateSlot(sourceSlot, op) end

---@param value function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function ItemSlotOutput.add_MarkedDirty(value) end

---@param value function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function ItemSlotOutput.remove_MarkedDirty(value) end

---@return number
function ItemSlotOutput.get_MaxSlotStackSize() end

---@param value number
function ItemSlotOutput.set_MaxSlotStackSize(value) end

---@return InventoryBase # Basic class representing an item inventory
function ItemSlotOutput.get_Inventory() end

---@return boolean
function ItemSlotOutput.get_DrawUnavailable() end

---@param value boolean
function ItemSlotOutput.set_DrawUnavailable(value) end

---@return ItemStack
function ItemSlotOutput.get_Itemstack() end

---@param value ItemStack
function ItemSlotOutput.set_Itemstack(value) end

---@return number
function ItemSlotOutput.get_StackSize() end

---@return boolean
function ItemSlotOutput.get_Empty() end

---@return EnumItemStorageFlags # Determines the kinds of storage types the item can be put into
function ItemSlotOutput.get_StorageType() end

---@param value EnumItemStorageFlags Determines the kinds of storage types the item can be put into
function ItemSlotOutput.set_StorageType(value) end

-- Amount of space left, independent of item MaxStacksize 
---@param forItemstack ItemStack
---@return number
function ItemSlotOutput.GetRemainingSlotSpace(forItemstack) end

-- Gets the entire contents of the stack, setting the base stack to null.
---@return ItemStack
function ItemSlotOutput.TakeOutWhole() end

-- Gets some of the contents of the stack.
---@param quantity number
---@return ItemStack
function ItemSlotOutput.TakeOut(quantity) end

-- Attempts to place item in this slot into the target slot.
---@param world IWorldAccessor Important interface to access the game world.
---@param sinkSlot ItemSlot The default item slot to item stacks
---@param quantity? number
---@return number
function ItemSlotOutput.TryPutInto(world, sinkSlot, quantity) end

---@param sinkSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@return number
function ItemSlotOutput.TryPutInto(sinkSlot, op) end

-- Attempts to flip the ItemSlots.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function ItemSlotOutput.TryFlipWith(itemSlot) end

-- The event fired when the slot is modified.
---@param sinkStack ItemStack
function ItemSlotOutput.OnItemSlotModified(sinkStack) end

-- Marks the slot as dirty which  queues it up for saving and resends it to the clients. Does not sync from client to server.
function ItemSlotOutput.MarkDirty() end

-- Gets the name of the itemstack- if it exists.
---@return string
function ItemSlotOutput.GetStackName() end

-- Gets the StackDescription for the item.
---@param world IClientWorldAccessor The world accessor implemented by the client, offers some extra features only available on the client
---@param extendedDebugInfo boolean
---@return string
function ItemSlotOutput.GetStackDescription(world, extendedDebugInfo) end

---@return string
function ItemSlotOutput.ToString() end

---@return userdata
function ItemSlotOutput.GetType() end

---@param obj userdata
---@return boolean
function ItemSlotOutput.Equals(obj) end

---@return number
function ItemSlotOutput.GetHashCode() end

