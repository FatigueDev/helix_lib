---@meta

---@class IInventoryNetworkUtil
---@field Api ICoreAPI The core API
---@field PauseInventoryUpdates boolean
IInventoryNetworkUtil = {}


---@return ICoreAPI # Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function IInventoryNetworkUtil.get_Api() end

---@param value ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
function IInventoryNetworkUtil.set_Api(value) end

-- Gets the active slot packet.  
---@param slotId number
---@param op ItemStackMoveOperation
---@return userdata
function IInventoryNetworkUtil.GetActivateSlotPacket(slotId, op) end

-- Flips the items between the source slot and target slot.
---@param sourceInv IInventory Basic interface representing an item inventory
---@param sourceSlotId number
---@param targetSlotId number
---@return userdata
function IInventoryNetworkUtil.GetFlipSlotsPacket(sourceInv, sourceSlotId, targetSlotId) end

-- Handles the client packet.
---@param byPlayer IPlayer Represents a player
---@param packetId number
---@param data number
function IInventoryNetworkUtil.HandleClientPacket(byPlayer, packetId, data) end

-- Opens a target inventory, passing it to the player.
---@param player IPlayer Represents a player
---@return userdata
function IInventoryNetworkUtil.DidOpen(player) end

-- Closes the target inventory attached to a player.
---@param player IPlayer Represents a player
---@return userdata
function IInventoryNetworkUtil.DidClose(player) end

---@return boolean
function IInventoryNetworkUtil.get_PauseInventoryUpdates() end

---@param value boolean
function IInventoryNetworkUtil.set_PauseInventoryUpdates(value) end


