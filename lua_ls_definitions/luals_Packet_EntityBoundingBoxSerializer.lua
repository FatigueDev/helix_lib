---@meta Packet_EntityBoundingBoxSerializer
---@class Packet_EntityBoundingBoxSerializer: Object
---@field ctor fun(): Packet_EntityBoundingBoxSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_EntityBoundingBox
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_EntityBoundingBox): Packet_EntityBoundingBox
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_EntityBoundingBox): Packet_EntityBoundingBox
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_EntityBoundingBox): Packet_EntityBoundingBox
---@field Serialize fun(stream: CitoStream, instance: Packet_EntityBoundingBox): nil
---@field SerializeToBytes fun(instance: Packet_EntityBoundingBox): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_EntityBoundingBox): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_EntityBoundingBoxSerializer = {}
