---@meta Packet_EntityPacketSerializer
---@class Packet_EntityPacketSerializer: Object
---@field ctor fun(): Packet_EntityPacketSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_EntityPacket
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_EntityPacket): Packet_EntityPacket
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_EntityPacket): Packet_EntityPacket
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_EntityPacket): Packet_EntityPacket
---@field Serialize fun(stream: CitoStream, instance: Packet_EntityPacket): nil
---@field SerializeToBytes fun(instance: Packet_EntityPacket): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_EntityPacket): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_EntityPacketSerializer = {}