---@meta Packet_EntityInteractionSerializer
---@class Packet_EntityInteractionSerializer: Object
---@field ctor fun(): Packet_EntityInteractionSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_EntityInteraction
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_EntityInteraction): Packet_EntityInteraction
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_EntityInteraction): Packet_EntityInteraction
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_EntityInteraction): Packet_EntityInteraction
---@field Serialize fun(stream: CitoStream, instance: Packet_EntityInteraction): nil
---@field SerializeToBytes fun(instance: Packet_EntityInteraction): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_EntityInteraction): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_EntityInteractionSerializer = {}
