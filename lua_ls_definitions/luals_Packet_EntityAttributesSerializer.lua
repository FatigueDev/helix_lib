---@meta Packet_EntityAttributesSerializer
---@class Packet_EntityAttributesSerializer: Object
---@field ctor fun(): Packet_EntityAttributesSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_EntityAttributes
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_EntityAttributes): Packet_EntityAttributes
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_EntityAttributes): Packet_EntityAttributes
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_EntityAttributes): Packet_EntityAttributes
---@field Serialize fun(stream: CitoStream, instance: Packet_EntityAttributes): nil
---@field SerializeToBytes fun(instance: Packet_EntityAttributes): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_EntityAttributes): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_EntityAttributesSerializer = {}
