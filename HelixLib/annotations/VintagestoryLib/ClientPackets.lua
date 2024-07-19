---@meta

---@class ClientPackets
ClientPackets = {}

---@return ClientPackets
function ClientPackets.ctor() end

---@param platform ClientPlatformAbstract
---@param connectData ServerConnectData
---@return Packet_Client
function ClientPackets.CreateIdentificationPacket(platform, connectData) end

---@param groupid number
---@param message string
---@param data? string
---@return Packet_Client
function ClientPackets.Chat(groupid, message, data) end

---@return Packet_Client
function ClientPackets.PingReply() end

---@param mouseButton number
---@param entityId number
---@param onBlockFace BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param hit Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return Packet_Client
function ClientPackets.EntityInteraction(mouseButton, entityId, onBlockFace, hit) end

---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param mode number
---@param type number
---@return Packet_Client
function ClientPackets.BlockInteraction(blockSel, mode, type) end

---@return Packet_Client
function ClientPackets.SpecialKeyRespawn() end

---@return Packet_Client
function ClientPackets.RequestJoin() end

---@param reason number
---@return Packet_Client
function ClientPackets.Leave(reason) end

---@return Packet_Client
function ClientPackets.SpecialKeyTabPlayerList() end

---@return Packet_Client
function ClientPackets.SpecialKeySelectTeam() end

---@return Packet_Client
function ClientPackets.SpecialKeySetSpawn() end

---@param currentSlotId number
---@return Packet_Client
function ClientPackets.SelectedHotbarSlot(currentSlotId) end

---@return Packet_Client
function ClientPackets.ServerQuery() end

---@param entity EntityAgent A goal-directed entity which observes and acts upon an environment
---@return Packet_Client
function ClientPackets.PlayerPosition(entity) end

---@return userdata
function ClientPackets.GetType() end

---@return string
function ClientPackets.ToString() end

---@param obj userdata
---@return boolean
function ClientPackets.Equals(obj) end

---@return number
function ClientPackets.GetHashCode() end


