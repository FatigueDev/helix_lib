---@meta Packet_EntitySpawnSerializer
---@class Packet_EntitySpawnSerializer: Object
---@field ctor fun(): Packet_EntitySpawnSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_EntitySpawn
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_EntitySpawn): Packet_EntitySpawn
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_EntitySpawn): Packet_EntitySpawn
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_EntitySpawn): Packet_EntitySpawn
---@field Serialize fun(stream: CitoStream, instance: Packet_EntitySpawn): nil
---@field SerializeToBytes fun(instance: Packet_EntitySpawn): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_EntitySpawn): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_EntitySpawnSerializer = {}