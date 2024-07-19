---@meta

---@class ServerWorldPlayerData:  IWorldPlayerData
---@field EntityPlayer EntityPlayer
---@field SpawnPosition PlayerSpawnPos
---@field EntityControls EntityControls
---@field LastApprovedViewDistance number
---@field AreaSelectionMode boolean
---@field FreeMovePlaneLock EnumFreeMovAxisLock
---@field CurrentClientId number
---@field Connected boolean
---@field DidSelectSkin boolean
---@field SelectedHotbarSlot number
---@field DesiredViewDistance number
---@field GameMode EnumGameMode
---@field MoveSpeedMultiplier number
---@field PickingRange number
---@field FreeMove boolean
---@field NoClip boolean
---@field Viewdistance number
---@field ModData table
---@field PreviousPickingRange number
---@field Deaths number
---@field RenderMetaBlocks boolean
ServerWorldPlayerData = {}

---@return ServerWorldPlayerData
function ServerWorldPlayerData.ctor() end

---@return EntityPlayer
function ServerWorldPlayerData.get_EntityPlayer() end

---@param value EntityPlayer
function ServerWorldPlayerData.set_EntityPlayer(value) end

---@return PlayerSpawnPos
function ServerWorldPlayerData.get_SpawnPosition() end

---@param value PlayerSpawnPos
function ServerWorldPlayerData.set_SpawnPosition(value) end

---@return EntityControls # The available controls to move around a character in a game world
function ServerWorldPlayerData.get_EntityControls() end

---@return number
function ServerWorldPlayerData.get_LastApprovedViewDistance() end

---@param value number
function ServerWorldPlayerData.set_LastApprovedViewDistance(value) end

---@return boolean
function ServerWorldPlayerData.get_AreaSelectionMode() end

---@param value boolean
function ServerWorldPlayerData.set_AreaSelectionMode(value) end

---@return EnumFreeMovAxisLock
function ServerWorldPlayerData.get_FreeMovePlaneLock() end

---@param value EnumFreeMovAxisLock
function ServerWorldPlayerData.set_FreeMovePlaneLock(value) end

---@return number
function ServerWorldPlayerData.get_CurrentClientId() end

---@return boolean
function ServerWorldPlayerData.get_Connected() end

---@return boolean
function ServerWorldPlayerData.get_DidSelectSkin() end

---@param value boolean
function ServerWorldPlayerData.set_DidSelectSkin(value) end

---@return number
function ServerWorldPlayerData.get_SelectedHotbarSlot() end

---@param value number
function ServerWorldPlayerData.set_SelectedHotbarSlot(value) end

---@return number
function ServerWorldPlayerData.get_DesiredViewDistance() end

---@param value number
function ServerWorldPlayerData.set_DesiredViewDistance(value) end

---@param playername string
---@param playerUID string
---@return ServerWorldPlayerData
function ServerWorldPlayerData.CreateNew(playername, playerUID) end

---@param server ServerMain
function ServerWorldPlayerData.Init(server) end

function ServerWorldPlayerData.BeforeSerialization() end

---@param owningPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param sendInventory? boolean
---@param sendPrivileges? boolean
---@return Packet_Server
function ServerWorldPlayerData.ToPacket(owningPlayer, sendInventory, sendPrivileges) end

---@param owningPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@return Packet_Server
function ServerWorldPlayerData.ToPacketForOtherPlayers(owningPlayer) end

---@param key string
---@param data number
function ServerWorldPlayerData.SetModdata(key, data) end

---@param key string
function ServerWorldPlayerData.RemoveModdata(key) end

---@param key string
---@return number
function ServerWorldPlayerData.GetModdata(key) end

---@return userdata
function ServerWorldPlayerData.GetType() end

---@return string
function ServerWorldPlayerData.ToString() end

---@param obj userdata
---@return boolean
function ServerWorldPlayerData.Equals(obj) end

---@return number
function ServerWorldPlayerData.GetHashCode() end


