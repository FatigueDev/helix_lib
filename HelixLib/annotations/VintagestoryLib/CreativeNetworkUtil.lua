---@meta

---@class CreativeNetworkUtil: InventoryNetworkUtil, InventoryNetworkUtil, IInventoryNetworkUtil
---@field Api ICoreAPI
---@field PauseInventoryUpdates boolean
CreativeNetworkUtil = {}

---@param inv InventoryBase Basic class representing an item inventory
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@return CreativeNetworkUtil
function CreativeNetworkUtil.ctor(inv, api) end

---@param player IPlayer Represents a player
---@return Packet_InventoryContents
function CreativeNetworkUtil.ToPacket(player) end

---@param world IWorldAccessor Important interface to access the game world.
---@param packet Packet_InventoryContents
function CreativeNetworkUtil.UpdateFromPacket(world, packet) end

---@param resolver IWorldAccessor Important interface to access the game world.
---@param packet Packet_InventoryUpdate
function CreativeNetworkUtil.UpdateFromPacket(resolver, packet) end

---@param resolver IWorldAccessor Important interface to access the game world.
---@param packet Packet_InventoryDoubleUpdate
function CreativeNetworkUtil.UpdateFromPacket(resolver, packet) end

---@return ICoreAPI # Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function CreativeNetworkUtil.get_Api() end

---@param value ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function CreativeNetworkUtil.set_Api(value) end

---@return boolean
function CreativeNetworkUtil.get_PauseInventoryUpdates() end

---@param value boolean
function CreativeNetworkUtil.set_PauseInventoryUpdates(value) end

---@param byPlayer IPlayer Represents a player
---@param packetId number
---@param data number
function CreativeNetworkUtil.HandleClientPacket(byPlayer, packetId, data) end

---@param byPlayer IPlayer Represents a player
---@param packetId number
---@param packet Packet_Client
function CreativeNetworkUtil.HandleClientPacket(byPlayer, packetId, packet) end

---@param player IPlayer Represents a player
---@param slotId number
---@return Packet_Server
function CreativeNetworkUtil.getSlotUpdatePacket(player, slotId) end

---@param player IPlayer Represents a player
---@return userdata
function CreativeNetworkUtil.DidOpen(player) end

---@param player IPlayer Represents a player
---@return userdata
function CreativeNetworkUtil.DidClose(player) end

---@param slotId number
---@param op ItemStackMoveOperation
---@return userdata
function CreativeNetworkUtil.GetActivateSlotPacket(slotId, op) end

---@param sourceInv IInventory Basic interface representing an item inventory
---@param sourceSlotId number
---@param targetSlotId number
---@return userdata
function CreativeNetworkUtil.GetFlipSlotsPacket(sourceInv, sourceSlotId, targetSlotId) end

---@return userdata
function CreativeNetworkUtil.GetType() end

---@return string
function CreativeNetworkUtil.ToString() end

---@param obj userdata
---@return boolean
function CreativeNetworkUtil.Equals(obj) end

---@return number
function CreativeNetworkUtil.GetHashCode() end


