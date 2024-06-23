---@meta Packet_ToolModeSerializer
---@class Packet_ToolModeSerializer: Object
---@field ctor fun(): Packet_ToolModeSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_ToolMode
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_ToolMode): Packet_ToolMode
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_ToolMode): Packet_ToolMode
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_ToolMode): Packet_ToolMode
---@field Serialize fun(stream: CitoStream, instance: Packet_ToolMode): nil
---@field SerializeToBytes fun(instance: Packet_ToolMode): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_ToolMode): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_ToolModeSerializer = {}