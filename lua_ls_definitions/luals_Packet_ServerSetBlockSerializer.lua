---@meta Packet_ServerSetBlockSerializer
---@class Packet_ServerSetBlockSerializer: Object
---@field ctor fun(): Packet_ServerSetBlockSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_ServerSetBlock
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_ServerSetBlock): Packet_ServerSetBlock
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_ServerSetBlock): Packet_ServerSetBlock
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_ServerSetBlock): Packet_ServerSetBlock
---@field Serialize fun(stream: CitoStream, instance: Packet_ServerSetBlock): nil
---@field SerializeToBytes fun(instance: Packet_ServerSetBlock): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_ServerSetBlock): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_ServerSetBlockSerializer = {}