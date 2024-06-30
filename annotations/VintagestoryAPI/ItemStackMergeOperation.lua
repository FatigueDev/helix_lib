---@meta

---@class ItemStackMergeOperation: ItemStackMoveOperation, ItemStackMoveOperation
---@field NotMovedQuantity number The amount not moved.
---@field ShiftDown boolean Checks if the Shift Key is held down.
---@field CtrlDown boolean Checks if the Ctrl key is held down.
---@field AltDown boolean Checks if the Alt key is held down.
---@field SinkSlot ItemSlot The slot that the item is attempting transfer to.
---@field SourceSlot ItemSlot The slot that the item is being transferred from
---@field World IWorldAccessor The world that the move operation is being performed.
---@field ActingPlayer IPlayer The acting player within the world.
---@field MouseButton EnumMouseButton The mouse button the ActingPlayer has pressed.
---@field Modifiers EnumModifierKey Any modifiers that the ActingPlayer is using for the operation (Ctrl, shift, alt)
---@field CurrentPriority EnumMergePriority The current Priority for merging slots.
---@field RequiredPriority Nullable`1 The required Priority (can be null)
---@field ConfirmationMessageCode string The confirmation message code for this operation.
---@field RequestedQuantity number The amount requested.
---@field MovableQuantity number The amount moveable.
---@field MovedQuantity number The amount moved.
---@field WheelDir number
ItemStackMergeOperation = {}

---@param world IWorldAccessor Important interface to access the game world.
---@param mouseButton EnumMouseButton
---@param modifiers EnumModifierKey
---@param currentPriority EnumMergePriority
---@param requestedQuantity number
---@return ItemStackMergeOperation
function ItemStackMergeOperation.ctor(world, mouseButton, modifiers, currentPriority, requestedQuantity) end

---@return number
function ItemStackMergeOperation.get_NotMovedQuantity() end

---@return boolean
function ItemStackMergeOperation.get_ShiftDown() end

---@return boolean
function ItemStackMergeOperation.get_CtrlDown() end

---@return boolean
function ItemStackMergeOperation.get_AltDown() end

-- Converts this MoveOperation to a Merge Operation.
---@param SinkSlot ItemSlot The default item slot to item stacks
---@param SourceSlot ItemSlot The default item slot to item stacks
---@return ItemStackMergeOperation
function ItemStackMergeOperation.ToMergeOperation(SinkSlot, SourceSlot) end

---@return userdata
function ItemStackMergeOperation.GetType() end

---@return string
function ItemStackMergeOperation.ToString() end

---@param obj userdata
---@return boolean
function ItemStackMergeOperation.Equals(obj) end

---@return number
function ItemStackMergeOperation.GetHashCode() end


