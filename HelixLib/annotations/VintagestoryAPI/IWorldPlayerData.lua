---@meta

-- Some world-specific information about a connected player. If you want modify any value, also broadcast the playerdata to all connected clients. This is the object that stored and loaded with the save game
---@class IWorldPlayerData
---@field PlayerUID string The players unique identifier
---@field EntityPlayer EntityPlayer The player entity this player is currently controlling
---@field EntityControls EntityControls The controls that moves around the EntityPlayer
---@field LastApprovedViewDistance number The players viewing distance in blocks that is allowed by the server
---@field DesiredViewDistance number The players desired viewing distance in blocks
---@field CurrentGameMode EnumGameMode The players current game mode. Will return Spectator mode while the player is connecting.
---@field FreeMove boolean Whether the player can freely fly around
---@field FreeMovePlaneLock EnumFreeMovAxisLock Whether the player is forcefully kept on vertical or horizontal plane during freemove
---@field NoClip boolean Affected by collision boxes or not
---@field MoveSpeedMultiplier number The players movement speed
---@field PickingRange number Range of selectable blox
---@field AreaSelectionMode boolean Block selection mode
---@field Deaths number
IWorldPlayerData = {}


---@return string
function IWorldPlayerData.get_PlayerUID() end

---@return EntityPlayer
function IWorldPlayerData.get_EntityPlayer() end

---@return EntityControls # The available controls to move around a character in a game world
function IWorldPlayerData.get_EntityControls() end

---@return number
function IWorldPlayerData.get_LastApprovedViewDistance() end

---@param value number
function IWorldPlayerData.set_LastApprovedViewDistance(value) end

---@return number
function IWorldPlayerData.get_DesiredViewDistance() end

---@param value number
function IWorldPlayerData.set_DesiredViewDistance(value) end

---@return EnumGameMode # A players game mode
function IWorldPlayerData.get_CurrentGameMode() end

---@param value EnumGameMode A players game mode
function IWorldPlayerData.set_CurrentGameMode(value) end

---@return boolean
function IWorldPlayerData.get_FreeMove() end

---@param value boolean
function IWorldPlayerData.set_FreeMove(value) end

---@return EnumFreeMovAxisLock
function IWorldPlayerData.get_FreeMovePlaneLock() end

---@param value EnumFreeMovAxisLock
function IWorldPlayerData.set_FreeMovePlaneLock(value) end

---@return boolean
function IWorldPlayerData.get_NoClip() end

---@param value boolean
function IWorldPlayerData.set_NoClip(value) end

---@return number
function IWorldPlayerData.get_MoveSpeedMultiplier() end

---@param value number
function IWorldPlayerData.set_MoveSpeedMultiplier(value) end

---@return number
function IWorldPlayerData.get_PickingRange() end

---@param value number
function IWorldPlayerData.set_PickingRange(value) end

---@return boolean
function IWorldPlayerData.get_AreaSelectionMode() end

---@param value boolean
function IWorldPlayerData.set_AreaSelectionMode(value) end

---@return number
function IWorldPlayerData.get_Deaths() end

-- Allows setting of arbitrary, permanantly stored moddata attached to this player. Not synced to client.
---@param key string
---@param data number
function IWorldPlayerData.SetModdata(key, data) end

-- Removes the permanently stored mod data
---@param key string
function IWorldPlayerData.RemoveModdata(key) end

-- Retrieve arbitrary, permantly stored mod data
---@param key string
---@return number
function IWorldPlayerData.GetModdata(key) end


