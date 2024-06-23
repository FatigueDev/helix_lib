---@meta Packet_CompositeShapeSerializer
---@class Packet_CompositeShapeSerializer: Object
---@field ctor fun(): Packet_CompositeShapeSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_CompositeShape
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_CompositeShape): Packet_CompositeShape
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_CompositeShape): Packet_CompositeShape
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_CompositeShape): Packet_CompositeShape
---@field Serialize fun(stream: CitoStream, instance: Packet_CompositeShape): nil
---@field SerializeToBytes fun(instance: Packet_CompositeShape): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_CompositeShape): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_CompositeShapeSerializer = {}