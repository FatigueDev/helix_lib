---@meta

---@class ServerPlayer:  IServerPlayer, IPlayer
---@field Entitlements table
---@field ActiveSlot number
---@field PlayerUID string
---@field ImmersiveFpMode boolean
---@field ItemCollectMode number
---@field ClientId number
---@field ConnectionState EnumClientState
---@field Entity EntityPlayer
---@field InventoryManager IPlayerInventoryManager
---@field LanguageCode string
---@field IpAddress string
---@field Ping number
---@field PlayerName string
---@field WorldData IWorldPlayerData
---@field Groups PlayerGroupMembership[]
---@field Role IPlayerRole
---@field ServerData IServerPlayerData
---@field Privileges string
---@field CurrentChunkSentRadius number
---@field CurrentBlockSelection BlockSelection
---@field CurrentEntitySelection EntitySelection
---@field CurrentUsingBlockSelection BlockSelection
---@field CurrentUsingEntitySelection EntitySelection
---@field LastReceivedClientPosition number
---@field InWorldAction OnEntityAction
---@field serverdata ServerPlayerData
ServerPlayer = {}

---@param server ServerMain
---@param worlddata ServerWorldPlayerData
---@return ServerPlayer
function ServerPlayer.ctor(server, worlddata) end

---@param value OnEntityAction
function ServerPlayer.add_InWorldAction(value) end

---@param value OnEntityAction
function ServerPlayer.remove_InWorldAction(value) end

---@return table
function ServerPlayer.get_Entitlements() end

---@param value table
function ServerPlayer.set_Entitlements(value) end

---@return number
function ServerPlayer.get_ActiveSlot() end

---@param value number
function ServerPlayer.set_ActiveSlot(value) end

---@return string
function ServerPlayer.get_PlayerUID() end

---@return boolean
function ServerPlayer.get_ImmersiveFpMode() end

---@param value boolean
function ServerPlayer.set_ImmersiveFpMode(value) end

---@return number
function ServerPlayer.get_ItemCollectMode() end

---@param value number
function ServerPlayer.set_ItemCollectMode(value) end

---@return number
function ServerPlayer.get_ClientId() end

---@return EnumClientState # The current connection state of a player thats currently connecting to the server
function ServerPlayer.get_ConnectionState() end

---@return EntityPlayer
function ServerPlayer.get_Entity() end

---@return IPlayerInventoryManager # Let's you do various interesting things with the players inventory.
function ServerPlayer.get_InventoryManager() end

---@return string
function ServerPlayer.get_LanguageCode() end

---@param value string
function ServerPlayer.set_LanguageCode(value) end

---@return string
function ServerPlayer.get_IpAddress() end

---@return number
function ServerPlayer.get_Ping() end

---@return string
function ServerPlayer.get_PlayerName() end

---@param consumeSpawnUse boolean
---@return FuzzyEntityPos
function ServerPlayer.GetSpawnPosition(consumeSpawnUse) end

---@return IWorldPlayerData # Some world-specific information about a connected player. If you want modify any value, also broadcast the playerdata to all connected clients. This is the object that stored and loaded with the save game
function ServerPlayer.get_WorldData() end

---@return PlayerGroupMembership[]
function ServerPlayer.get_Groups() end

---@param inv InventoryBasePlayer Abstract class used for all inventories that are "on" the player. Any inventory not inheriting from this class will not be stored to the savegame as part of the players inventory.
function ServerPlayer.SetInventory(inv) end

---@param sendInventory? boolean
function ServerPlayer.BroadcastPlayerData(sendInventory) end

function ServerPlayer.Disconnect() end

---@param message string
function ServerPlayer.Disconnect(message) end

---@return IPlayerRole
function ServerPlayer.get_Role() end

---@param value IPlayerRole
function ServerPlayer.set_Role(value) end

---@return IServerPlayerData # The player configuration that is world independent
function ServerPlayer.get_ServerData() end

---@return string
function ServerPlayer.get_Privileges() end

---@return number
function ServerPlayer.get_CurrentChunkSentRadius() end

---@param value number
function ServerPlayer.set_CurrentChunkSentRadius(value) end

---@return BlockSelection # Contains all the information for a players block selection event
function ServerPlayer.get_CurrentBlockSelection() end

---@return EntitySelection
function ServerPlayer.get_CurrentEntitySelection() end

---@return BlockSelection # Contains all the information for a players block selection event
function ServerPlayer.get_CurrentUsingBlockSelection() end

---@param value BlockSelection Contains all the information for a players block selection event
function ServerPlayer.set_CurrentUsingBlockSelection(value) end

---@return EntitySelection
function ServerPlayer.get_CurrentUsingEntitySelection() end

---@param value EntitySelection
function ServerPlayer.set_CurrentUsingEntitySelection(value) end

---@return number
function ServerPlayer.get_LastReceivedClientPosition() end

---@param value number
function ServerPlayer.set_LastReceivedClientPosition(value) end

---@param privilegeCode string
---@return boolean
function ServerPlayer.HasPrivilege(privilegeCode) end

---@param code string
---@param message? string
---@param langparams userdata
function ServerPlayer.SendIngameError(code, message, langparams) end

---@param groupId number
---@param message string
---@param chatType EnumChatType A definition for the types of chat that could occur.
---@param data? string
function ServerPlayer.SendMessage(groupId, message, chatType, data) end

---@param groupId number
---@param message string
---@param args userdata
function ServerPlayer.SendLocalisedMessage(groupId, message, args) end

function ServerPlayer.SendPositionToClient() end

---@param pos PlayerSpawnPos
function ServerPlayer.SetSpawnPosition(pos) end

function ServerPlayer.ClearSpawnPosition() end

---@return PlayerGroupMembership[]
function ServerPlayer.GetGroups() end

---@param groupId number
---@return PlayerGroupMembership
function ServerPlayer.GetGroup(groupId) end

---@param roleCode string
function ServerPlayer.SetRole(roleCode) end

---@param key string
---@param data number
function ServerPlayer.SetModdata(key, data) end

---@param key string
function ServerPlayer.RemoveModdata(key) end

---@param key string
---@return number
function ServerPlayer.GetModdata(key) end

---@param key string
---@param data T
function ServerPlayer.SetModData(key, data) end

---@param key string
---@param defaultValue? T
---@return T
function ServerPlayer.GetModData(key, defaultValue) end

---@param action EnumEntityAction A players in-world action
---@param on boolean
---@return EnumHandling # Tells the engine how to handle default or subsequent similar behaviors
function ServerPlayer.TriggerInWorldAction(action, on) end

---@return userdata
function ServerPlayer.GetType() end

---@return string
function ServerPlayer.ToString() end

---@param obj userdata
---@return boolean
function ServerPlayer.Equals(obj) end

---@return number
function ServerPlayer.GetHashCode() end


