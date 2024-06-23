---@meta Packet_BlockDropSerializer
---@class Packet_BlockDropSerializer: Object
---@field ctor fun(): Packet_BlockDropSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_BlockDrop
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_BlockDrop): Packet_BlockDrop
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_BlockDrop): Packet_BlockDrop
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_BlockDrop): Packet_BlockDrop
---@field Serialize fun(stream: CitoStream, instance: Packet_BlockDrop): nil
---@field SerializeToBytes fun(instance: Packet_BlockDrop): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_BlockDrop): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_BlockDropSerializer = {}