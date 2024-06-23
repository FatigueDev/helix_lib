---@meta Packet_PlayerPositionSerializer
---@class Packet_PlayerPositionSerializer: Object
---@field ctor fun(): Packet_PlayerPositionSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_PlayerPosition
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_PlayerPosition): Packet_PlayerPosition
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_PlayerPosition): Packet_PlayerPosition
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_PlayerPosition): Packet_PlayerPosition
---@field Serialize fun(stream: CitoStream, instance: Packet_PlayerPosition): nil
---@field SerializeToBytes fun(instance: Packet_PlayerPosition): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_PlayerPosition): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_PlayerPositionSerializer = {}