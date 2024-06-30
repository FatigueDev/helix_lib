---@meta

-- A collectible object that can be placed on the ground or on shelves or in display cases, but also can still accept interactions from the player
---@class ICollectibleOnDisplayInteractable
ICollectibleOnDisplayInteractable = {}


---@param inSlot ItemSlot The default item slot to item stacks
---@param byPlayer IPlayer Represents a player
---@return boolean
function ICollectibleOnDisplayInteractable.OnInteractStart(inSlot, byPlayer) end

---@param secondsUsed number
---@param inSlot ItemSlot The default item slot to item stacks
---@param byPlayer IPlayer Represents a player
---@return boolean
function ICollectibleOnDisplayInteractable.OnInteractStep(secondsUsed, inSlot, byPlayer) end

---@param secondsUsed number
---@param inSlot ItemSlot The default item slot to item stacks
---@param byPlayer IPlayer Represents a player
function ICollectibleOnDisplayInteractable.OnInteractStop(secondsUsed, inSlot, byPlayer) end

---@param secondsUsed number
---@param inSlot ItemSlot The default item slot to item stacks
---@param byPlayer IPlayer Represents a player
---@param cancelReason EnumItemUseCancelReason
---@return boolean
function ICollectibleOnDisplayInteractable.OnInteractCancel(secondsUsed, inSlot, byPlayer, cancelReason) end


