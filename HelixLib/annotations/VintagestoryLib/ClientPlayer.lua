---@meta

---@class ClientPlayer:  IClientPlayer, IPlayer
---@field Role IPlayerRole
---@field PlayerUID string
---@field ClientId number
---@field Entity EntityPlayer
---@field InventoryManager IPlayerInventoryManager
---@field PlayerName string
---@field WorldData IWorldPlayerData
---@field SpawnPosition BlockPos
---@field CameraYaw number
---@field CameraPitch number
---@field CameraRoll number
---@field CameraMode EnumCameraMode
---@field Entitlements table
---@field ImmersiveFpMode boolean
---@field Groups PlayerGroupMembership[]
---@field Privileges string
---@field RoleCode string
---@field Ping number
---@field OverrideCameraMode Nullable`1
ClientPlayer = {}

---@param game ClientMain
---@return ClientPlayer
function ClientPlayer.ctor(game) end

---@return IPlayerRole
function ClientPlayer.get_Role() end

---@param value IPlayerRole
function ClientPlayer.set_Role(value) end

---@return string
function ClientPlayer.get_PlayerUID() end

---@return number
function ClientPlayer.get_ClientId() end

---@return EntityPlayer
function ClientPlayer.get_Entity() end

---@return IPlayerInventoryManager # Let's you do various interesting things with the players inventory.
function ClientPlayer.get_InventoryManager() end

---@return string
function ClientPlayer.get_PlayerName() end

---@return IWorldPlayerData # Some world-specific information about a connected player. If you want modify any value, also broadcast the playerdata to all connected clients. This is the object that stored and loaded with the save game
function ClientPlayer.get_WorldData() end

---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function ClientPlayer.get_SpawnPosition() end

---@param value BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function ClientPlayer.set_SpawnPosition(value) end

---@return number
function ClientPlayer.get_CameraYaw() end

---@param value number
function ClientPlayer.set_CameraYaw(value) end

---@return number
function ClientPlayer.get_CameraPitch() end

---@param value number
function ClientPlayer.set_CameraPitch(value) end

---@return number
function ClientPlayer.get_CameraRoll() end

---@param value number
function ClientPlayer.set_CameraRoll(value) end

---@return EnumCameraMode
function ClientPlayer.get_CameraMode() end

---@return table
function ClientPlayer.get_Entitlements() end

---@param value table
function ClientPlayer.set_Entitlements(value) end

---@return boolean
function ClientPlayer.get_ImmersiveFpMode() end

---@param game ClientMain
---@param packet Packet_PlayerData
function ClientPlayer.UpdateFromPacket(game, packet) end

---@param game ClientMain
---@param mode Packet_PlayerMode
function ClientPlayer.UpdateFromPacket(game, mode) end

---@param message string
function ClientPlayer.ShowChatNotification(message) end

---@param anim EnumHandInteract
function ClientPlayer.TriggerFpAnimation(anim) end

---@return PlayerGroupMembership[]
function ClientPlayer.GetGroups() end

---@param groupId number
---@return PlayerGroupMembership
function ClientPlayer.GetGroup(groupId) end

---@return PlayerGroupMembership[]
function ClientPlayer.get_Groups() end

---@param privilegeCode string
---@return boolean
function ClientPlayer.HasPrivilege(privilegeCode) end

---@return userdata
function ClientPlayer.GetType() end

---@return string
function ClientPlayer.ToString() end

---@param obj userdata
---@return boolean
function ClientPlayer.Equals(obj) end

---@return number
function ClientPlayer.GetHashCode() end


