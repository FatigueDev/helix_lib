---@meta

---@class ServerPackets
ServerPackets = {}

---@return ServerPackets
function ServerPackets.ctor() end

---@param code string
---@param text string
---@param langargs userdata
---@return Packet_Server
function ServerPackets.IngameError(code, text, langargs) end

---@param code string
---@param text string
---@param langargs userdata
---@return Packet_Server
function ServerPackets.IngameDiscovery(code, text, langargs) end

---@param groupid number
---@param text string
---@param chatType EnumChatType A definition for the types of chat that could occur.
---@param data string
---@return Packet_Server
function ServerPackets.ChatLine(groupid, text, chatType, data) end

---@param maxViewDistance number
---@return Packet_Server
function ServerPackets.LevelInitialize(maxViewDistance) end

---@return Packet_Server
function ServerPackets.LevelFinalize() end

---@param packet Packet_Server
---@param retLength IntRef
---@return number
function ServerPackets.Serialize(packet, retLength) end

---@param entity Entity The basic class for all entities in the game
---@param isTeleport boolean
---@return Packet_Server
function ServerPackets.GetSendableEntityMovedPacket(entity, isTeleport) end

---@param entitiesFull table
---@param entitiesPartial table
---@param entitiesPositionUpdate table
---@param entitiesPositionMinimalUpdate table
---@return Packet_Server
function ServerPackets.GetBulkEntityAttributesPacket(entitiesFull, entitiesPartial, entitiesPositionUpdate, entitiesPositionMinimalUpdate) end

---@param entitiesFull table
---@param entitiesPartial table
---@return Packet_Server
function ServerPackets.GetBulkEntityDebugAttributesPacket(entitiesFull, entitiesPartial) end

---@param entity Entity The basic class for all entities in the game
---@return Packet_Server
function ServerPackets.GetEntityAttributesPacket(entity) end

---@param entity Entity The basic class for all entities in the game
---@return Packet_Server
function ServerPackets.GetEntityAttributesUpdatePacket(entity) end

---@param entity Entity The basic class for all entities in the game
---@param ms MemoryStream
---@param writer BinaryWriter
---@return Packet_Server
function ServerPackets.GetFullEntityPacket(entity, ms, writer) end

---@param despawns table
---@return Packet_Server
function ServerPackets.GetEntityDespawnPacket(despawns) end

---@param spawns table
---@return Packet_Server
function ServerPackets.GetEntitySpawnPacket(spawns) end

---@param entity Entity The basic class for all entities in the game
---@return Packet_Entity
function ServerPackets.GetEntityPacket(entity) end

---@param entity Entity The basic class for all entities in the game
---@param ms MemoryStream
---@param writer BinaryWriter
---@return Packet_Entity
function ServerPackets.GetEntityPacket(entity, ms, writer) end

---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@param eagent EntityAgent A goal-directed entity which observes and acts upon an environment
---@return Packet_EntityPosition
function ServerPackets.getEntityPositionPacket(pos, eagent) end

---@param entity Entity The basic class for all entities in the game
---@param ms MemoryStream
---@param writer BinaryWriter
---@return number
function ServerPackets.getEntityDataForClient(entity, ms, writer) end

---@return userdata
function ServerPackets.GetType() end

---@return string
function ServerPackets.ToString() end

---@param obj userdata
---@return boolean
function ServerPackets.Equals(obj) end

---@return number
function ServerPackets.GetHashCode() end


