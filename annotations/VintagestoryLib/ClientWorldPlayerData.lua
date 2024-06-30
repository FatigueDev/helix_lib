---@meta

---@class ClientWorldPlayerData:  IWorldPlayerData
---@field CurrentGameMode EnumGameMode
---@field RenderMetablocks boolean
---@field MoveSpeedMultiplier number
---@field PickingRange number
---@field FreeMove boolean
---@field NoClip boolean
---@field Deaths number
---@field FreeMovePlaneLock EnumFreeMovAxisLock
---@field AreaSelectionMode boolean
---@field EntityPlayer EntityPlayer
---@field EntityControls EntityControls
---@field LastApprovedViewDistance number
---@field CurrentClientId number
---@field Connected boolean
---@field DidSelectSkin boolean
---@field DesiredViewDistance number
---@field ClientId number
---@field PlayerUID string
---@field PlayerName string
ClientWorldPlayerData = {}


---@return EnumGameMode # A players game mode
function ClientWorldPlayerData.get_CurrentGameMode() end

---@param value EnumGameMode A players game mode
function ClientWorldPlayerData.set_CurrentGameMode(value) end

---@return boolean
function ClientWorldPlayerData.get_RenderMetablocks() end

---@param value boolean
function ClientWorldPlayerData.set_RenderMetablocks(value) end

---@return number
function ClientWorldPlayerData.get_MoveSpeedMultiplier() end

---@param value number
function ClientWorldPlayerData.set_MoveSpeedMultiplier(value) end

---@return number
function ClientWorldPlayerData.get_PickingRange() end

---@param value number
function ClientWorldPlayerData.set_PickingRange(value) end

---@return boolean
function ClientWorldPlayerData.get_FreeMove() end

---@param value boolean
function ClientWorldPlayerData.set_FreeMove(value) end

---@return boolean
function ClientWorldPlayerData.get_NoClip() end

---@param value boolean
function ClientWorldPlayerData.set_NoClip(value) end

---@return number
function ClientWorldPlayerData.get_Deaths() end

---@param value number
function ClientWorldPlayerData.set_Deaths(value) end

---@return EnumFreeMovAxisLock
function ClientWorldPlayerData.get_FreeMovePlaneLock() end

---@param value EnumFreeMovAxisLock
function ClientWorldPlayerData.set_FreeMovePlaneLock(value) end

---@return boolean
function ClientWorldPlayerData.get_AreaSelectionMode() end

---@param value boolean
function ClientWorldPlayerData.set_AreaSelectionMode(value) end

---@return EntityPlayer
function ClientWorldPlayerData.get_EntityPlayer() end

---@param value EntityPlayer
function ClientWorldPlayerData.set_EntityPlayer(value) end

---@return EntityControls # The available controls to move around a character in a game world
function ClientWorldPlayerData.get_EntityControls() end

---@return number
function ClientWorldPlayerData.get_LastApprovedViewDistance() end

---@param value number
function ClientWorldPlayerData.set_LastApprovedViewDistance(value) end

---@return number
function ClientWorldPlayerData.get_CurrentClientId() end

---@return boolean
function ClientWorldPlayerData.get_Connected() end

---@return boolean
function ClientWorldPlayerData.get_DidSelectSkin() end

---@param value boolean
function ClientWorldPlayerData.set_DidSelectSkin(value) end

---@return number
function ClientWorldPlayerData.get_DesiredViewDistance() end

---@param value number
function ClientWorldPlayerData.set_DesiredViewDistance(value) end

---@param game ClientMain
function ClientWorldPlayerData.RequestNewViewDistance(game) end

---@param game ClientMain
function ClientWorldPlayerData.RequestMode(game) end

---@param game ClientMain
---@param moveSpeedMultiplier number
function ClientWorldPlayerData.SetMode(game, moveSpeedMultiplier) end

---@param game ClientMain
---@param noClip boolean
---@param freeMove boolean
function ClientWorldPlayerData.RequestMode(game, noClip, freeMove) end

---@param game ClientMain
---@param FreeMovePlaneLock EnumFreeMovAxisLock
function ClientWorldPlayerData.RequestMode(game, FreeMovePlaneLock) end

---@param game ClientMain
---@param noClip boolean
function ClientWorldPlayerData.RequestModeNoClip(game, noClip) end

---@param game ClientMain
---@param freeMove boolean
function ClientWorldPlayerData.RequestModeFreeMove(game, freeMove) end

---@param game ClientMain
---@param moveSpeed number
---@param pickRange number
---@param gameMode EnumGameMode A players game mode
---@param freeMove boolean
---@param noClip boolean
---@param freeMovePlaneLock EnumFreeMovAxisLock
---@param renderMetaBlocks boolean
function ClientWorldPlayerData.RequestMode(game, moveSpeed, pickRange, gameMode, freeMove, noClip, freeMovePlaneLock, renderMetaBlocks) end

---@return ClientWorldPlayerData
function ClientWorldPlayerData.CreateNew() end

---@return ClientWorldPlayerData
function ClientWorldPlayerData.Clone() end

---@param game ClientMain
---@param packet Packet_PlayerData
function ClientWorldPlayerData.UpdateFromPacket(game, packet) end

---@param game ClientMain
---@param mode Packet_PlayerMode
function ClientWorldPlayerData.UpdateFromPacket(game, mode) end

---@param key string
---@param data number
function ClientWorldPlayerData.SetModdata(key, data) end

---@param key string
function ClientWorldPlayerData.RemoveModdata(key) end

---@param key string
---@return number
function ClientWorldPlayerData.GetModdata(key) end

---@return userdata
function ClientWorldPlayerData.GetType() end

---@return string
function ClientWorldPlayerData.ToString() end

---@param obj userdata
---@return boolean
function ClientWorldPlayerData.Equals(obj) end

---@return number
function ClientWorldPlayerData.GetHashCode() end


