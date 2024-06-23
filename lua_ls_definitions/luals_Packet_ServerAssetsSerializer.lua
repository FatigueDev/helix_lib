---@meta Packet_ServerAssetsSerializer
---@class Packet_ServerAssetsSerializer: Object
---@field ctor fun(): Packet_ServerAssetsSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_ServerAssets
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_ServerAssets): Packet_ServerAssets
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_ServerAssets): Packet_ServerAssets
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_ServerAssets): Packet_ServerAssets
---@field Serialize fun(stream: CitoStream, instance: Packet_ServerAssets): nil
---@field SerializeToBytes fun(instance: Packet_ServerAssets): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_ServerAssets): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_ServerAssetsSerializer = {}
