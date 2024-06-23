---@meta Packet_TransitionablePropertiesSerializer
---@class Packet_TransitionablePropertiesSerializer: Object
---@field ctor fun(): Packet_TransitionablePropertiesSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_TransitionableProperties
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_TransitionableProperties): Packet_TransitionableProperties
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_TransitionableProperties): Packet_TransitionableProperties
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_TransitionableProperties): Packet_TransitionableProperties
---@field Serialize fun(stream: CitoStream, instance: Packet_TransitionableProperties): nil
---@field SerializeToBytes fun(instance: Packet_TransitionableProperties): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_TransitionableProperties): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_TransitionablePropertiesSerializer = {}