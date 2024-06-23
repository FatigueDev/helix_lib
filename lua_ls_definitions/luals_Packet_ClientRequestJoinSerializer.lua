---@meta Packet_ClientRequestJoinSerializer
---@class Packet_ClientRequestJoinSerializer: Object
---@field ctor fun(): Packet_ClientRequestJoinSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_ClientRequestJoin
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_ClientRequestJoin): Packet_ClientRequestJoin
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_ClientRequestJoin): Packet_ClientRequestJoin
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_ClientRequestJoin): Packet_ClientRequestJoin
---@field Serialize fun(stream: CitoStream, instance: Packet_ClientRequestJoin): nil
---@field SerializeToBytes fun(instance: Packet_ClientRequestJoin): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_ClientRequestJoin): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_ClientRequestJoinSerializer = {}
