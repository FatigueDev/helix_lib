---@meta EntityTypeNet
---@class EntityTypeNet: Object
---@field EntityPropertiesToPacket fun(properties: EntityProperties): Packet_Entityany
---@field FromPacket fun(packet: Packet_Entityany, worldForResolve: IWorldAccessor): EntityProperties
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
EntityTypeNet = {}
