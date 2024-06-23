---@meta Packet_EntityTypeSerializer
---@class Packet_EntityTypeSerializer: Object
---@field ctor fun(): Packet_EntityTypeSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_Entityany
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_Entityany): Packet_Entityany
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_Entityany): Packet_Entityany
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_Entityany): Packet_Entityany
---@field Serialize fun(stream: CitoStream, instance: Packet_Entityany): nil
---@field SerializeToBytes fun(instance: Packet_Entityany): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_Entityany): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_EntityTypeSerializer = {}
