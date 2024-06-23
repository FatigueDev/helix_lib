---@meta Packet_MapRegionSerializer
---@class Packet_MapRegionSerializer: Object
---@field ctor fun(): Packet_MapRegionSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_MapRegion
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_MapRegion): Packet_MapRegion
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_MapRegion): Packet_MapRegion
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_MapRegion): Packet_MapRegion
---@field Serialize fun(stream: CitoStream, instance: Packet_MapRegion): nil
---@field SerializeToBytes fun(instance: Packet_MapRegion): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_MapRegion): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_MapRegionSerializer = {}