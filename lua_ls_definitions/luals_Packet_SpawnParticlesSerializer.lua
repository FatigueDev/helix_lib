---@meta Packet_SpawnParticlesSerializer
---@class Packet_SpawnParticlesSerializer: Object
---@field ctor fun(): Packet_SpawnParticlesSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_SpawnParticles
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_SpawnParticles): Packet_SpawnParticles
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_SpawnParticles): Packet_SpawnParticles
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_SpawnParticles): Packet_SpawnParticles
---@field Serialize fun(stream: CitoStream, instance: Packet_SpawnParticles): nil
---@field SerializeToBytes fun(instance: Packet_SpawnParticles): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_SpawnParticles): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_SpawnParticlesSerializer = {}
