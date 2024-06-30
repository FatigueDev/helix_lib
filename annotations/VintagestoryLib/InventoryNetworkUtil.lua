---@meta

---@class InventoryNetworkUtil:  IInventoryNetworkUtil
---@field Api ICoreAPI
---@field PauseInventoryUpdates boolean
InventoryNetworkUtil = {}

---@param inv InventoryBase Basic class representing an item inventory
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@return InventoryNetworkUtil
function InventoryNetworkUtil.ctor(inv, api) end

---@return ICoreAPI # Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function InventoryNetworkUtil.get_Api() end

---@param value ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function InventoryNetworkUtil.set_Api(value) end

---@return boolean
function InventoryNetworkUtil.get_PauseInventoryUpdates() end

---@param value boolean
function InventoryNetworkUtil.set_PauseInventoryUpdates(value) end

---@param byPlayer IPlayer Represents a player
---@param packetId number
---@param data number
function InventoryNetworkUtil.HandleClientPacket(byPlayer, packetId, data) end

---@param byPlayer IPlayer Represents a player
---@param packetId number
---@param packet Packet_Client
function InventoryNetworkUtil.HandleClientPacket(byPlayer, packetId, packet) end

---@param player IPlayer Represents a player
---@param invIds string
---@param slotIds number
---@return number
function InventoryNetworkUtil.getDoubleUpdatePacket(player, invIds, slotIds) end

---@param player IPlayer Represents a player
---@return Packet_InventoryContents
function InventoryNetworkUtil.ToPacket(player) end

---@param player IPlayer Represents a player
---@param slotId number
---@return Packet_Server
function InventoryNetworkUtil.getSlotUpdatePacket(player, slotId) end

---@param player IPlayer Represents a player
---@return userdata
function InventoryNetworkUtil.DidOpen(player) end

---@param player IPlayer Represents a player
---@return userdata
function InventoryNetworkUtil.DidClose(player) end

---@param resolver IWorldAccessor Important interface to access the game world.
---@param packet Packet_InventoryContents
function InventoryNetworkUtil.UpdateFromPacket(resolver, packet) end

---@param resolver IWorldAccessor Important interface to access the game world.
---@param packet Packet_InventoryUpdate
function InventoryNetworkUtil.UpdateFromPacket(resolver, packet) end

---@param resolver IWorldAccessor Important interface to access the game world.
---@param packet Packet_InventoryDoubleUpdate
function InventoryNetworkUtil.UpdateFromPacket(resolver, packet) end

---@param slotId number
---@param op ItemStackMoveOperation
---@return userdata
function InventoryNetworkUtil.GetActivateSlotPacket(slotId, op) end

---@param sourceInv IInventory Basic interface representing an item inventory
---@param sourceSlotId number
---@param targetSlotId number
---@return userdata
function InventoryNetworkUtil.GetFlipSlotsPacket(sourceInv, sourceSlotId, targetSlotId) end

---@return userdata
function InventoryNetworkUtil.GetType() end

---@return string
function InventoryNetworkUtil.ToString() end

---@param obj userdata
---@return boolean
function InventoryNetworkUtil.Equals(obj) end

---@return number
function InventoryNetworkUtil.GetHashCode() end


