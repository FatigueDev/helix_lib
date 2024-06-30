---@meta

---@class CraftingInventoryNetworkUtil: InventoryNetworkUtil, InventoryNetworkUtil, IInventoryNetworkUtil
---@field Api ICoreAPI
---@field PauseInventoryUpdates boolean
CraftingInventoryNetworkUtil = {}

---@param inv InventoryBase Basic class representing an item inventory
---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@return CraftingInventoryNetworkUtil
function CraftingInventoryNetworkUtil.ctor(inv, api) end

---@param resolver IWorldAccessor Important interface to access the game world.
---@param packet Packet_InventoryContents
function CraftingInventoryNetworkUtil.UpdateFromPacket(resolver, packet) end

---@return ICoreAPI # Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function CraftingInventoryNetworkUtil.get_Api() end

---@param value ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function CraftingInventoryNetworkUtil.set_Api(value) end

---@return boolean
function CraftingInventoryNetworkUtil.get_PauseInventoryUpdates() end

---@param value boolean
function CraftingInventoryNetworkUtil.set_PauseInventoryUpdates(value) end

---@param byPlayer IPlayer Represents a player
---@param packetId number
---@param data number
function CraftingInventoryNetworkUtil.HandleClientPacket(byPlayer, packetId, data) end

---@param byPlayer IPlayer Represents a player
---@param packetId number
---@param packet Packet_Client
function CraftingInventoryNetworkUtil.HandleClientPacket(byPlayer, packetId, packet) end

---@param player IPlayer Represents a player
---@return Packet_InventoryContents
function CraftingInventoryNetworkUtil.ToPacket(player) end

---@param player IPlayer Represents a player
---@param slotId number
---@return Packet_Server
function CraftingInventoryNetworkUtil.getSlotUpdatePacket(player, slotId) end

---@param player IPlayer Represents a player
---@return userdata
function CraftingInventoryNetworkUtil.DidOpen(player) end

---@param player IPlayer Represents a player
---@return userdata
function CraftingInventoryNetworkUtil.DidClose(player) end

---@param resolver IWorldAccessor Important interface to access the game world.
---@param packet Packet_InventoryUpdate
function CraftingInventoryNetworkUtil.UpdateFromPacket(resolver, packet) end

---@param resolver IWorldAccessor Important interface to access the game world.
---@param packet Packet_InventoryDoubleUpdate
function CraftingInventoryNetworkUtil.UpdateFromPacket(resolver, packet) end

---@param slotId number
---@param op ItemStackMoveOperation
---@return userdata
function CraftingInventoryNetworkUtil.GetActivateSlotPacket(slotId, op) end

---@param sourceInv IInventory Basic interface representing an item inventory
---@param sourceSlotId number
---@param targetSlotId number
---@return userdata
function CraftingInventoryNetworkUtil.GetFlipSlotsPacket(sourceInv, sourceSlotId, targetSlotId) end

---@return userdata
function CraftingInventoryNetworkUtil.GetType() end

---@return string
function CraftingInventoryNetworkUtil.ToString() end

---@param obj userdata
---@return boolean
function CraftingInventoryNetworkUtil.Equals(obj) end

---@return number
function CraftingInventoryNetworkUtil.GetHashCode() end


