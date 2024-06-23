---@meta InventoryCharacter
---@class InventoryCharacter: InventoryBasePlayer
---@field ctor fun(className: string, playerUID: string, api: ICoreAPI): InventoryCharacter
---@overload fun(inventoryId: string, api: ICoreAPI): InventoryCharacter
---@field OnItemSlotModified fun(slot: ItemSlot): nil
---@field get_Count fun(): number
---@field get_Item fun(slotId: number): ItemSlot
---@field set_Item fun(slotId: number, value: ItemSlot): nil
---@field FromTreeAttributes fun(tree: ITreeAttribute): nil
---@field ToTreeAttributes fun(tree: ITreeAttribute): nil
---@field DiscardAll fun(): nil
---@field OnOwningEntityDeath fun(pos: Vec3d): nil
---@field GetBestSuitedSlot fun(sourceSlot: ItemSlot, op: ItemStackMoveOperation, skipSlots: any[]): WeightedSlot
---@field get_RemoveOnClose fun(): boolean
---@field get_Player fun(): IPlayer
---@field CanPlayerAccess fun(player: IPlayer, position: EntityPos): boolean
---@field HasOpened fun(player: IPlayer): boolean
---@field DropAll fun(pos: Vec3d, maxStackSize: number): nil
---@field get_MaxContentDimensions fun(): Size3f
---@field set_MaxContentDimensions fun(value: Size3f): nil
---@field get_InventoryID fun(): string
---@field get_ClassName fun(): string
---@field get_LastChanged fun(): Int64
---@field get_CountForNetworkPacket fun(): number
---@field get_IsDirty fun(): boolean
---@field get_DirtySlots fun(): HashSet`1
---@field get_TakeLocked fun(): boolean
---@field set_TakeLocked fun(value: boolean): nil
---@field get_PutLocked fun(): boolean
---@field set_PutLocked fun(value: boolean): nil
---@field add_SlotModified fun(value: any`1): nil
---@field remove_SlotModified fun(value: any`1): nil
---@field add_SlotNotified fun(value: any`1): nil
---@field remove_SlotNotified fun(value: any`1): nil
---@field add_OnInventoryOpened fun(value: OnInventoryOpenedDelegate): nil
---@field remove_OnInventoryOpened fun(value: OnInventoryOpenedDelegate): nil
---@field add_OnInventoryClosed fun(value: OnInventoryClosedDelegate): nil
---@field remove_OnInventoryClosed fun(value: OnInventoryClosedDelegate): nil
---@field get_Empty fun(): boolean
---@field get_FirstNonEmptySlot fun(): ItemSlot
---@field LateInitialize fun(inventoryID: string, api: ICoreAPI): nil
---@field AfterBlocksLoaded fun(world: IWorldAccessor): nil
---@field ResolveBlocksOrItems fun(): nil
---@field GetSlotId fun(slot: ItemSlot): number
---@field GetBestSuitedSlot fun(sourceSlot: ItemSlot, skipSlots: any[]): WeightedSlot
---@field GetSuitability fun(sourceSlot: ItemSlot, targetSlot: ItemSlot, isMerge: boolean): Single
---@field CanContain fun(sinkSlot: ItemSlot, sourceSlot: ItemSlot): boolean
---@field TryFlipItems fun(targetSlotId: number, itemSlot: ItemSlot): table
---@field CanPlayerModify fun(player: IPlayer, position: EntityPos): boolean
---@field OnSearchTerm fun(text: string): nil
---@field ActivateSlot fun(slotId: number, sourceSlot: ItemSlot, op: ItemStackMoveOperation&): table
---@field DidModifyItemSlot fun(slot: ItemSlot, extractedStack: ItemStack): nil
---@field PerformNotifySlot fun(slotId: number): nil
---@field TryFlipItemStack fun(owningPlayer: IPlayer, invIds: string[], slotIds: number[], lastChanged: Int64[]): boolean
---@field TryMoveItemStack fun(player: IPlayer, invIds: string[], slotIds: number[], op: ItemStackMoveOperation&): boolean
---@field GetSlotsIfExists fun(player: IPlayer, invIds: string[], slotIds: number[]): ItemSlot[]
---@field SlotsFromTreeAttributes fun(tree: ITreeAttribute, slots: ItemSlot[], modifiedSlots: any[]): ItemSlot[]
---@field SlotsToTreeAttributes fun(slots: ItemSlot[], tree: ITreeAttribute): nil
---@field GenEmptySlots fun(quantity: number): ItemSlot[]
---@field MarkSlotDirty fun(slotId: number): nil
---@field DropSlotIfHot fun(slot: ItemSlot, player: IPlayer): nil
---@field DropSlots fun(pos: Vec3d, slotsIds: number[]): nil
---@field Clear fun(): nil
---@field GetTransitionSpeedMul fun(transType: EnumTransitionany, stack: ItemStack): Single
---@field Open fun(player: IPlayer): table
---@field Close fun(player: IPlayer): table
---@field GetEnumerator fun(): IEnumerator`1
---@field GetAutoPushIntoSlot fun(atBlockFace: BlockFacing, fromSlot: ItemSlot): ItemSlot
---@field GetAutoPullFromSlot fun(atBlockFace: BlockFacing): ItemSlot
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field Count number
---@field Item number
---@field RemoveOnClose number
---@field Player number
---@field MaxContentDimensions number
---@field InventoryID number
---@field ClassName number
---@field LastChanged number
---@field CountForNetworkPacket number
---@field IsDirty number
---@field DirtySlots number
---@field TakeLocked number
---@field PutLocked number
---@field Empty number
---@field FirstNonEmptySlot number
---@field SlotModified number
---@field SlotNotified number
---@field OnInventoryOpened number
---@field OnInventoryClosed number
---@field Api number
---@field Pos number
---@field lastChangedSinceServerStart number
---@field openedByPlayerGUIds number
---@field InvNetworkUtil number
---@field dirtySlots number
---@field OnAcquireTransitionSpeed number
InventoryCharacter = {}
