---@meta Packet_IntStringSerializer
---@class Packet_IntStringSerializer: Object
---@field ctor fun(): Packet_IntStringSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_Intstring
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_Intstring): Packet_Intstring
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_Intstring): Packet_Intstring
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_Intstring): Packet_Intstring
---@field Serialize fun(stream: CitoStream, instance: Packet_Intstring): nil
---@field SerializeToBytes fun(instance: Packet_Intstring): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_Intstring): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_IntStringSerializer = {}