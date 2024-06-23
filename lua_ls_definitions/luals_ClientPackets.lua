---@meta ClientPackets
---@class ClientPackets: Object
---@field ctor fun(): ClientPackets
---@field CreateIdentificationPacket fun(platform: ClientPlatformAbstract, connectData: ServerConnectData): Packet_Client
---@field Chat fun(groupid: number, message: string, data: string): Packet_Client
---@field PingReply fun(): Packet_Client
---@field EntityInteraction fun(mouseButton: number, entityId: Int64, onBlockFace: BlockFacing, hit: Vec3d): Packet_Client
---@field BlockInteraction fun(blockSel: BlockSelection, mode: number, type: number): Packet_Client
---@field SpecialKeyRespawn fun(): Packet_Client
---@field RequestJoin fun(): Packet_Client
---@field Leave fun(reason: number): Packet_Client
---@field SpecialKeyTabPlayerList fun(): Packet_Client
---@field SpecialKeySelectTeam fun(): Packet_Client
---@field SpecialKeySetSpawn fun(): Packet_Client
---@field SelectedHotbarSlot fun(currentSlotId: number): Packet_Client
---@field ServerQuery fun(): Packet_Client
---@field PlayerPosition fun(entity: EntityAgent): Packet_Client
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
ClientPackets = {}
