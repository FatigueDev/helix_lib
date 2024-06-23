---@meta Packet_LandClaimSerializer
---@class Packet_LandClaimSerializer: Object
---@field ctor fun(): Packet_LandClaimSerializer
---@field DeserializeLengthDelimitedNew fun(stream: CitoMemoryStream): Packet_LandClaim
---@field DeserializeBuffer fun(buffer: number[], length: number, instance: Packet_LandClaim): Packet_LandClaim
---@field Deserialize fun(stream: CitoMemoryStream, instance: Packet_LandClaim): Packet_LandClaim
---@field DeserializeLengthDelimited fun(stream: CitoMemoryStream, instance: Packet_LandClaim): Packet_LandClaim
---@field Serialize fun(stream: CitoStream, instance: Packet_LandClaim): nil
---@field SerializeToBytes fun(instance: Packet_LandClaim): number[]
---@field SerializeLengthDelimited fun(stream: CitoStream, instance: Packet_LandClaim): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
Packet_LandClaimSerializer = {}
