---@meta

---@class ItemTypeNet: CollectibleNet, CollectibleNet
ItemTypeNet = {}

---@return ItemTypeNet
function ItemTypeNet.ctor() end

---@param packet Packet_ItemType
---@param world IWorldAccessor Important interface to access the game world.
---@param registry ClassRegistry
---@return Item # Represents an in game Item of Vintage Story
function ItemTypeNet.ReadItemTypePacket(packet, world, registry) end

---@param item Item Represents an in game Item of Vintage Story
---@param registry IClassRegistryAPI Interface for creating instances
---@return Packet_ItemType
function ItemTypeNet.GetItemTypePacket(item, registry) end

---@return userdata
function ItemTypeNet.GetType() end

---@return string
function ItemTypeNet.ToString() end

---@param obj userdata
---@return boolean
function ItemTypeNet.Equals(obj) end

---@return number
function ItemTypeNet.GetHashCode() end


