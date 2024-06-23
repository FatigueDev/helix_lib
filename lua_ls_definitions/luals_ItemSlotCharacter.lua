---@meta ItemSlotCharacter
---@class ItemSlotCharacter: ItemSlot
---@field ctor fun(type: EnumCharacterDressany, inventory: InventoryBase): ItemSlotCharacter
---@field get_StorageType fun(): EnumItemStorageFlags
---@field CanTakeFrom fun(sourceSlot: ItemSlot, priority: EnumMergePriority): boolean
---@field CanHold fun(itemstackFromSourceSlot: ItemSlot): boolean
---@field IsDressType fun(itemstack: IItemStack, dressType: EnumCharacterDressany): boolean
---@field add_MarkedDirty fun(value: ActionConsumable): nil
---@field remove_MarkedDirty fun(value: ActionConsumable): nil
---@field get_MaxSlotStackSize fun(): number
---@field set_MaxSlotStackSize fun(value: number): nil
---@field get_Inventory fun(): InventoryBase
---@field get_DrawUnavailable fun(): boolean
---@field set_DrawUnavailable fun(value: boolean): nil
---@field get_Itemstack fun(): ItemStack
---@field set_Itemstack fun(value: ItemStack): nil
---@field get_StackSize fun(): number
---@field get_Empty fun(): boolean
---@field set_StorageType fun(value: EnumItemStorageFlags): nil
---@field GetRemainingSlotSpace fun(forItemstack: ItemStack): number
---@field CanTake fun(): boolean
---@field TakeOutWhole fun(): ItemStack
---@field TakeOut fun(quantity: number): ItemStack
---@field TryPutInto fun(world: IWorldAccessor, sinkSlot: ItemSlot, quantity: number): number
---@overload fun(sinkSlot: ItemSlot, op: ItemStackMoveOperation&): number
---@field TryFlipWith fun(itemSlot: ItemSlot): boolean
---@field ActivateSlot fun(sourceSlot: ItemSlot, op: ItemStackMoveOperation&): nil
---@field OnItemSlotModified fun(sinkStack: ItemStack): nil
---@field MarkDirty fun(): nil
---@field GetStackName fun(): string
---@field GetStackDescription fun(world: IClientWorldAccessor, extendedDebugInfo: boolean): string
---@field ToString fun(): string
---@field GetType fun(): any
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field StorageType EnumItemStorageFlags
---@field MaxSlotStackSize EnumItemStorageFlags
---@field Inventory EnumItemStorageFlags
---@field DrawUnavailable EnumItemStorageFlags
---@field Itemstack EnumItemStorageFlags
---@field StackSize EnumItemStorageFlags
---@field Empty EnumItemStorageFlags
---@field MarkedDirty EnumItemStorageFlags
---@field BackgroundIcon EnumItemStorageFlags
---@field HexBackgroundColor EnumItemStorageFlags
ItemSlotCharacter = {}
