---@meta ItemStackMergeOperation
---@class ItemStackMergeOperation: ItemStackMoveOperation
---@field ctor fun(world: IWorldAccessor, mouseButton: EnumMouseButton, modifiers: EnumModifierKey, currentPriority: EnumMergePriority, requestedQuantity: number): ItemStackMergeOperation
---@field get_NotMovedQuantity fun(): number
---@field get_ShiftDown fun(): boolean
---@field get_CtrlDown fun(): boolean
---@field get_AltDown fun(): boolean
---@field ToMergeOperation fun(SinkSlot: ItemSlot, SourceSlot: ItemSlot): ItemStackMergeOperation
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field NotMovedQuantity number
---@field ShiftDown number
---@field CtrlDown number
---@field AltDown number
---@field SinkSlot number
---@field SourceSlot number
---@field World number
---@field ActingPlayer number
---@field MouseButton number
---@field Modifiers number
---@field CurrentPriority number
---@field RequiredPriority number
---@field ConfirmationMessageCode number
---@field RequestedQuantity number
---@field MovableQuantity number
---@field MovedQuantity number
---@field WheelDir number
ItemStackMergeOperation = {}