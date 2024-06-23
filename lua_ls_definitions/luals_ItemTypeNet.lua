---@meta ItemTypeNet
---@class ItemTypeNet: CollectibleNet
---@field ctor fun(): ItemTypeNet
---@field ReadItemTypePacket fun(packet: Packet_Itemany, world: IWorldAccessor, registry: ClassRegistry): Item
---@field GetItemTypePacket fun(item: Item, registry: IClassRegistryAPI): Packet_Itemany
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
ItemTypeNet = {}
