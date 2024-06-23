---@meta Packet_BulkEntityDebugAttributesSerializer
---@class Packet_BulkEntityDebugAttributesSerializer: Object
---@field ctor fun(): Packet_BulkEntityDebugAttributesSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_BulkEntityDebugAttributes
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_BulkEntityDebugAttributes): Packet_BulkEntityDebugAttributes
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_BulkEntityDebugAttributes): Packet_BulkEntityDebugAttributes
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_BulkEntityDebugAttributes): Packet_BulkEntityDebugAttributes
---@field Serialize fun(stream: CitoStream, instance: Packet_BulkEntityDebugAttributes): nil
---@field SerializeToBytes fun(instance: Packet_BulkEntityDebugAttributes): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_BulkEntityDebugAttributes): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_BulkEntityDebugAttributesSerializer = {}
