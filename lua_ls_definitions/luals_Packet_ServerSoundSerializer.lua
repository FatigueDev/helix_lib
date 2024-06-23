---@meta Packet_ServerSoundSerializer
---@class Packet_ServerSoundSerializer: Object
---@field ctor fun(): Packet_ServerSoundSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_ServerSound
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_ServerSound): Packet_ServerSound
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_ServerSound): Packet_ServerSound
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_ServerSound): Packet_ServerSound
---@field Serialize fun(stream: CitoStream, instance: Packet_ServerSound): nil
---@field SerializeToBytes fun(instance: Packet_ServerSound): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_ServerSound): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_ServerSoundSerializer = {}