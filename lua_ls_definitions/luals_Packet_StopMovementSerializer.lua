---@meta Packet_StopMovementSerializer
---@class Packet_StopMovementSerializer: Object
---@field ctor fun(): Packet_StopMovementSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_StopMovement
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_StopMovement): Packet_StopMovement
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_StopMovement): Packet_StopMovement
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_StopMovement): Packet_StopMovement
---@field Serialize fun(stream: CitoStream, instance: Packet_StopMovement): nil
---@field SerializeToBytes fun(instance: Packet_StopMovement): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_StopMovement): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_StopMovementSerializer = {}
