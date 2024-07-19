---@meta

---@class EntityTypeNet
EntityTypeNet = {}


---@param properties EntityProperties
---@return Packet_EntityType
function EntityTypeNet.EntityPropertiesToPacket(properties) end

---@param packet Packet_EntityType
---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@return EntityProperties
function EntityTypeNet.FromPacket(packet, worldForResolve) end

---@return userdata
function EntityTypeNet.GetType() end

---@return string
function EntityTypeNet.ToString() end

---@param obj userdata
---@return boolean
function EntityTypeNet.Equals(obj) end

---@return number
function EntityTypeNet.GetHashCode() end


