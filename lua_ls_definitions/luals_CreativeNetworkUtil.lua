---@meta CreativeNetworkUtil
---@class CreativeNetworkUtil: InventoryNetworkUtil
---@field ctor fun(inv: InventoryBase, api: ICoreAPI): CreativeNetworkUtil
---@field ToPacket fun(player: IPlayer): Packet_InventoryContents
---@field UpdateFromPacket fun(world: IWorldAccessor, packet: Packet_InventoryContents): nil
---@overload fun(resolver: IWorldAccessor, packet: Packet_InventoryUpdate): nil
---@overload fun(resolver: IWorldAccessor, packet: Packet_InventoryDoubleUpdate): nil
---@field get_Api fun(): ICoreAPI
---@field set_Api fun(value: ICoreAPI): nil
---@field get_PauseInventoryUpdates fun(): boolean
---@field set_PauseInventoryUpdates fun(value: boolean): nil
---@field HandleClientPacket fun(byPlayer: IPlayer, packetId: number, data: number[]): nil
---@overload fun(byPlayer: IPlayer, packetId: number, packet: Packet_Client): nil
---@field getSlotUpdatePacket fun(player: IPlayer, slotId: number): Packet_Server
---@field DidOpen fun(player: IPlayer): table
---@field DidClose fun(player: IPlayer): table
---@field GetActivateSlotPacket fun(slotId: number, op: ItemStackMoveOperation): table
---@field GetFlipSlotsPacket fun(sourceInv: IInventory, sourceSlotId: number, targetSlotId: number): table
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field Api ICoreAPI
---@field PauseInventoryUpdates ICoreAPI
CreativeNetworkUtil = {}