---@meta IPlayerInventoryManager
---@class IPlayerInventoryManager
---@field get_ActiveTool fun(): Nullable`1
---@field get_ActiveHotbarSlotNumber fun(): number
---@field set_ActiveHotbarSlotNumber fun(value: number): nil
---@field get_ActiveHotbarSlot fun(): ItemSlot
---@field get_Inventories fun(): table<any, any>
---@field get_InventoriesOrdered fun(): any[]
---@field get_OpenedInventories fun(): any[]
---@field get_MouseItemSlot fun(): ItemSlot
---@field get_CurrentHoveredSlot fun(): ItemSlot
---@field set_CurrentHoveredSlot fun(value: ItemSlot): nil
---@field DropMouseSlotItems fun(dropAll: boolean): boolean
---@field DropItem fun(slot: ItemSlot, fullStack: boolean): boolean
---@field NotifySlot fun(player: IPlayer, slot: ItemSlot): nil
---@field GetInventoryName fun(inventoryClassName: string): string
---@field GetOwnInventory fun(inventoryClassName: string): IInventory
---@field GetInventory fun(inventoryId: string): IInventory
---@field GetHotbarItemstack fun(slotId: number): ItemStack
---@field GetHotbarInventory fun(): IInventory
---@field GetInventory fun(invID: string, invFound: InventoryBase&): boolean
---@field GetBestSuitedSlot fun(sourceSlot: ItemSlot, onlyPlayerInventory: boolean, op: ItemStackMoveOperation, skipSlots: any[]): ItemSlot
---@overload fun(sourceSlot: ItemSlot, op: ItemStackMoveOperation, skipSlots: any[]): ItemSlot
---@field TryTransferAway fun(sourceSlot: ItemSlot, op: ItemStackMoveOperation&, onlyPlayerInventory: boolean, slotNotifyEffect: boolean): table[]
---@overload fun(sourceSlot: ItemSlot, op: ItemStackMoveOperation&, onlyPlayerInventory: boolean, shiftClickDebugText: stringBuilder, slotNotifyEffect: boolean): table[]
---@field TryTransferTo fun(sourceSlot: ItemSlot, targetSlot: ItemSlot, op: ItemStackMoveOperation&): table
---@field TryGiveItemstack fun(itemstack: ItemStack, slotNotifyEffect: boolean): boolean
---@field OpenInventory fun(inventory: IInventory): table
---@field CloseInventory fun(inventory: IInventory): table
---@field Find fun(matcher: fun(outResult: any): any): boolean
---@field HasInventory fun(inventory: IInventory): boolean
---@field DiscardAll fun(): nil
---@field OnDeath fun(): nil
---@field DropAllInventoryItems fun(inv: IInventory): nil
---@field BroadcastHotbarSlot fun(): nil
---@field ActiveTool Nullable`1
---@field ActiveHotbarSlotNumber Nullable`1
---@field ActiveHotbarSlot Nullable`1
---@field Inventories Nullable`1
---@field InventoriesOrdered Nullable`1
---@field OpenedInventories Nullable`1
---@field MouseItemSlot Nullable`1
---@field CurrentHoveredSlot Nullable`1
IPlayerInventoryManager = {}