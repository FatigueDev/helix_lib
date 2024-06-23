---@meta Packet_CrushingPropertiesSerializer
---@class Packet_CrushingPropertiesSerializer: Object
---@field ctor fun(): Packet_CrushingPropertiesSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_CrushingProperties
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_CrushingProperties): Packet_CrushingProperties
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_CrushingProperties): Packet_CrushingProperties
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_CrushingProperties): Packet_CrushingProperties
---@field Serialize fun(stream: CitoStream, instance: Packet_CrushingProperties): nil
---@field SerializeToBytes fun(instance: Packet_CrushingProperties): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_CrushingProperties): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_CrushingPropertiesSerializer = {}
