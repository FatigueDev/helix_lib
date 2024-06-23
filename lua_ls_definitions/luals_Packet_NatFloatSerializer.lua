---@meta Packet_NatFloatSerializer
---@class Packet_NatFloatSerializer: Object
---@field ctor fun(): Packet_NatFloatSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_NatFloat
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_NatFloat): Packet_NatFloat
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_NatFloat): Packet_NatFloat
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_NatFloat): Packet_NatFloat
---@field Serialize fun(stream: CitoStream, instance: Packet_NatFloat): nil
---@field SerializeToBytes fun(instance: Packet_NatFloat): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_NatFloat): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_NatFloatSerializer = {}