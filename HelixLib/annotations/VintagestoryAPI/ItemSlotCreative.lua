---@meta

---@class ItemSlotCreative: ItemSlot, ItemSlot
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
ItemSlotCreative = {}

---@param inventory InventoryBase Basic class representing an item inventory
---@return ItemSlotCreative
function ItemSlotCreative.ctor(inventory) end

---@return ItemStack
function ItemSlotCreative.TakeOutWhole() end

---@param quantity number
---@return ItemStack
function ItemSlotCreative.TakeOut(quantity) end

---@param sinkSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@return number
function ItemSlotCreative.TryPutInto(sinkSlot, op) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function ItemSlotCreative.TryFlipWith(itemSlot) end

---@param sinkStack ItemStack
function ItemSlotCreative.OnItemSlotModified(sinkStack) end

---@param value function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function ItemSlotCreative.add_MarkedDirty(value) end

---@param value function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function ItemSlotCreative.remove_MarkedDirty(value) end

---@return number
function ItemSlotCreative.get_MaxSlotStackSize() end

---@param value number
function ItemSlotCreative.set_MaxSlotStackSize(value) end

---@return InventoryBase # Basic class representing an item inventory
function ItemSlotCreative.get_Inventory() end

---@return boolean
function ItemSlotCreative.get_DrawUnavailable() end

---@param value boolean
function ItemSlotCreative.set_DrawUnavailable(value) end

---@return ItemStack
function ItemSlotCreative.get_Itemstack() end

---@param value ItemStack
function ItemSlotCreative.set_Itemstack(value) end

---@return number
function ItemSlotCreative.get_StackSize() end

---@return boolean
function ItemSlotCreative.get_Empty() end

---@return EnumItemStorageFlags # Determines the kinds of storage types the item can be put into
function ItemSlotCreative.get_StorageType() end

---@param value EnumItemStorageFlags Determines the kinds of storage types the item can be put into
function ItemSlotCreative.set_StorageType(value) end

-- Amount of space left, independent of item MaxStacksize 
---@param forItemstack ItemStack
---@return number
function ItemSlotCreative.GetRemainingSlotSpace(forItemstack) end

-- Whether or not this slot can take the item from the source slot.
---@param sourceSlot ItemSlot The default item slot to item stacks
---@param priority? EnumMergePriority
---@return boolean
function ItemSlotCreative.CanTakeFrom(sourceSlot, priority) end

-- Whether or not this slot can hold the item from the source slot.
---@param sourceSlot ItemSlot The default item slot to item stacks
---@return boolean
function ItemSlotCreative.CanHold(sourceSlot) end

-- Whether or not this slots item can be retrieved.
---@return boolean
function ItemSlotCreative.CanTake() end

-- Attempts to place item in this slot into the target slot.
---@param world IWorldAccessor Important interface to access the game world.
---@param sinkSlot ItemSlot The default item slot to item stacks
---@param quantity? number
---@return number
function ItemSlotCreative.TryPutInto(world, sinkSlot, quantity) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
function ItemSlotCreative.ActivateSlot(sourceSlot, op) end

-- Marks the slot as dirty which  queues it up for saving and resends it to the clients. Does not sync from client to server.
function ItemSlotCreative.MarkDirty() end

-- Gets the name of the itemstack- if it exists.
---@return string
function ItemSlotCreative.GetStackName() end

-- Gets the StackDescription for the item.
---@param world IClientWorldAccessor The world accessor implemented by the client, offers some extra features only available on the client
---@param extendedDebugInfo boolean
---@return string
function ItemSlotCreative.GetStackDescription(world, extendedDebugInfo) end

---@return string
function ItemSlotCreative.ToString() end

---@return userdata
function ItemSlotCreative.GetType() end

---@param obj userdata
---@return boolean
function ItemSlotCreative.Equals(obj) end

---@return number
function ItemSlotCreative.GetHashCode() end


