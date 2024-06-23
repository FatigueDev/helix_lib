---@meta Packet_ClientBlockPlaceOrBreakSerializer
---@class Packet_ClientBlockPlaceOrBreakSerializer: Object
---@field ctor fun(): Packet_ClientBlockPlaceOrBreakSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_ClientBlockPlaceOrBreak
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_ClientBlockPlaceOrBreak): Packet_ClientBlockPlaceOrBreak
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_ClientBlockPlaceOrBreak): Packet_ClientBlockPlaceOrBreak
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_ClientBlockPlaceOrBreak): Packet_ClientBlockPlaceOrBreak
---@field Serialize fun(stream: CitoStream, instance: Packet_ClientBlockPlaceOrBreak): nil
---@field SerializeToBytes fun(instance: Packet_ClientBlockPlaceOrBreak): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_ClientBlockPlaceOrBreak): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_ClientBlockPlaceOrBreakSerializer = {}
