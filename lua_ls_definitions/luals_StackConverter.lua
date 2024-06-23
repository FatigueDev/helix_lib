---@meta StackConverter
---@class StackConverter: Object
---@field FromPacket fun(fromPacket: Packet_ItemStack, resolver: IWorldAccessor): ItemStack
---@field ToPacket fun(stack: ItemStack): Packet_ItemStack
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
StackConverter = {}
