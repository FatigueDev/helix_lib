---@meta Packet_StringListSerializer
---@class Packet_StringListSerializer: Object
---@field ctor fun(): Packet_StringListSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_stringList
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_stringList): Packet_stringList
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_stringList): Packet_stringList
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_stringList): Packet_stringList
---@field Serialize fun(stream: CitoStream, instance: Packet_stringList): nil
---@field SerializeToBytes fun(instance: Packet_stringList): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_stringList): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_StringListSerializer = {}
