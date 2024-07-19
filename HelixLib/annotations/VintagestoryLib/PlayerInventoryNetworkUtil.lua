---@meta

---@class PlayerInventoryNetworkUtil: InventoryNetworkUtil, InventoryNetworkUtil, IInventoryNetworkUtil
---@field Api ICoreAPI
---@field PauseInventoryUpdates boolean
PlayerInventoryNetworkUtil = {}

---@param inv InventoryBase Basic class representing an item inventory
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@return PlayerInventoryNetworkUtil
function PlayerInventoryNetworkUtil.ctor(inv, api) end

---@param world IWorldAccessor Important interface to access the game world.
---@param packet Packet_InventoryUpdate
function PlayerInventoryNetworkUtil.UpdateFromPacket(world, packet) end

---@return ICoreAPI # Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function PlayerInventoryNetworkUtil.get_Api() end

---@param value ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function PlayerInventoryNetworkUtil.set_Api(value) end

---@return boolean
function PlayerInventoryNetworkUtil.get_PauseInventoryUpdates() end

---@param value boolean
function PlayerInventoryNetworkUtil.set_PauseInventoryUpdates(value) end

---@param byPlayer IPlayer Represents a player
---@param packetId number
---@param data number
function PlayerInventoryNetworkUtil.HandleClientPacket(byPlayer, packetId, data) end

---@param byPlayer IPlayer Represents a player
---@param packetId number
---@param packet Packet_Client
function PlayerInventoryNetworkUtil.HandleClientPacket(byPlayer, packetId, packet) end

---@param player IPlayer Represents a player
---@return Packet_InventoryContents
function PlayerInventoryNetworkUtil.ToPacket(player) end

---@param player IPlayer Represents a player
---@param slotId number
---@return Packet_Server
function PlayerInventoryNetworkUtil.getSlotUpdatePacket(player, slotId) end

---@param player IPlayer Represents a player
---@return userdata
function PlayerInventoryNetworkUtil.DidOpen(player) end

---@param player IPlayer Represents a player
---@return userdata
function PlayerInventoryNetworkUtil.DidClose(player) end

---@param resolver IWorldAccessor Important interface to access the game world.
---@param packet Packet_InventoryContents
function PlayerInventoryNetworkUtil.UpdateFromPacket(resolver, packet) end

---@param resolver IWorldAccessor Important interface to access the game world.
---@param packet Packet_InventoryDoubleUpdate
function PlayerInventoryNetworkUtil.UpdateFromPacket(resolver, packet) end

---@param slotId number
---@param op ItemStackMoveOperation
---@return userdata
function PlayerInventoryNetworkUtil.GetActivateSlotPacket(slotId, op) end

---@param sourceInv IInventory Basic interface representing an item inventory
---@param sourceSlotId number
---@param targetSlotId number
---@return userdata
function PlayerInventoryNetworkUtil.GetFlipSlotsPacket(sourceInv, sourceSlotId, targetSlotId) end

---@return userdata
function PlayerInventoryNetworkUtil.GetType() end

---@return string
function PlayerInventoryNetworkUtil.ToString() end

---@param obj userdata
---@return boolean
function PlayerInventoryNetworkUtil.Equals(obj) end

---@return number
function PlayerInventoryNetworkUtil.GetHashCode() end


