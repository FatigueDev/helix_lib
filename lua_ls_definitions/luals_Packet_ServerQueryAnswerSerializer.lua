---@meta Packet_ServerQueryAnswerSerializer
---@class Packet_ServerQueryAnswerSerializer: Object
---@field ctor fun(): Packet_ServerQueryAnswerSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_ServerQueryAnswer
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_ServerQueryAnswer): Packet_ServerQueryAnswer
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_ServerQueryAnswer): Packet_ServerQueryAnswer
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_ServerQueryAnswer): Packet_ServerQueryAnswer
---@field Serialize fun(stream: CitoStream, instance: Packet_ServerQueryAnswer): nil
---@field SerializeToBytes fun(instance: Packet_ServerQueryAnswer): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_ServerQueryAnswer): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_ServerQueryAnswerSerializer = {}
