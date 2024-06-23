---@meta Packet_PlayerModeSerializer
---@class Packet_PlayerModeSerializer: Object
---@field ctor fun(): Packet_PlayerModeSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_PlayerMode
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_PlayerMode): Packet_PlayerMode
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_PlayerMode): Packet_PlayerMode
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_PlayerMode): Packet_PlayerMode
---@field Serialize fun(stream: CitoStream, instance: Packet_PlayerMode): nil
---@field SerializeToBytes fun(instance: Packet_PlayerMode): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_PlayerMode): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_PlayerModeSerializer = {}
