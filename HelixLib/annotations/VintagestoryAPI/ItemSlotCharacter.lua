---@meta

---@class ItemSlotCharacter: ItemSlot, ItemSlot
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
ItemSlotCharacter = {}

---@param type EnumCharacterDressType
---@param inventory InventoryBase Basic class representing an item inventory
---@return ItemSlotCharacter
function ItemSlotCharacter.ctor(type, inventory) end

---@return EnumItemStorageFlags # Determines the kinds of storage types the item can be put into
function ItemSlotCharacter.get_StorageType() end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param priority? EnumMergePriority
---@return boolean
function ItemSlotCharacter.CanTakeFrom(sourceSlot, priority) end

---@param itemstackFromSourceSlot ItemSlot The default item slot to item stacks
---@return boolean
function ItemSlotCharacter.CanHold(itemstackFromSourceSlot) end

-- Checks to see what dress type the given item is.
---@param itemstack IItemStack Represents a stack of items or blocks
---@param dressType EnumCharacterDressType
---@return boolean
function ItemSlotCharacter.IsDressType(itemstack, dressType) end

---@param value function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function ItemSlotCharacter.add_MarkedDirty(value) end

---@param value function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function ItemSlotCharacter.remove_MarkedDirty(value) end

---@return number
function ItemSlotCharacter.get_MaxSlotStackSize() end

---@param value number
function ItemSlotCharacter.set_MaxSlotStackSize(value) end

---@return InventoryBase # Basic class representing an item inventory
function ItemSlotCharacter.get_Inventory() end

---@return boolean
function ItemSlotCharacter.get_DrawUnavailable() end

---@param value boolean
function ItemSlotCharacter.set_DrawUnavailable(value) end

---@return ItemStack
function ItemSlotCharacter.get_Itemstack() end

---@param value ItemStack
function ItemSlotCharacter.set_Itemstack(value) end

---@return number
function ItemSlotCharacter.get_StackSize() end

---@return boolean
function ItemSlotCharacter.get_Empty() end

---@param value EnumItemStorageFlags Determines the kinds of storage types the item can be put into
function ItemSlotCharacter.set_StorageType(value) end

-- Amount of space left, independent of item MaxStacksize 
---@param forItemstack ItemStack
---@return number
function ItemSlotCharacter.GetRemainingSlotSpace(forItemstack) end

-- Whether or not this slots item can be retrieved.
---@return boolean
function ItemSlotCharacter.CanTake() end

-- Gets the entire contents of the stack, setting the base stack to null.
---@return ItemStack
function ItemSlotCharacter.TakeOutWhole() end

-- Gets some of the contents of the stack.
---@param quantity number
---@return ItemStack
function ItemSlotCharacter.TakeOut(quantity) end

-- Attempts to place item in this slot into the target slot.
---@param world IWorldAccessor Important interface to access the game world.
---@param sinkSlot ItemSlot The default item slot to item stacks
---@param quantity? number
---@return number
function ItemSlotCharacter.TryPutInto(world, sinkSlot, quantity) end

---@param sinkSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
---@return number
function ItemSlotCharacter.TryPutInto(sinkSlot, op) end

-- Attempts to flip the ItemSlots.
---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function ItemSlotCharacter.TryFlipWith(itemSlot) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param op ItemStackMoveOperation&
function ItemSlotCharacter.ActivateSlot(sourceSlot, op) end

-- The event fired when the slot is modified.
---@param sinkStack ItemStack
function ItemSlotCharacter.OnItemSlotModified(sinkStack) end

-- Marks the slot as dirty which  queues it up for saving and resends it to the clients. Does not sync from client to server.
function ItemSlotCharacter.MarkDirty() end

-- Gets the name of the itemstack- if it exists.
---@return string
function ItemSlotCharacter.GetStackName() end

-- Gets the StackDescription for the item.
---@param world IClientWorldAccessor The world accessor implemented by the client, offers some extra features only available on the client
---@param extendedDebugInfo boolean
---@return string
function ItemSlotCharacter.GetStackDescription(world, extendedDebugInfo) end

---@return string
function ItemSlotCharacter.ToString() end

---@return userdata
function ItemSlotCharacter.GetType() end

---@param obj userdata
---@return boolean
function ItemSlotCharacter.Equals(obj) end

---@return number
function ItemSlotCharacter.GetHashCode() end


