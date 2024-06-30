---@meta

---@class ServerConsolePlayer: ServerPlayer, ServerPlayer, IServerPlayer, IPlayer
---@field ConnectionState EnumClientState
---@field PlayerUID string
---@field Role IPlayerRole
---@field Entitlements table
---@field ActiveSlot number
---@field ImmersiveFpMode boolean
---@field ItemCollectMode number
---@field ClientId number
---@field Entity EntityPlayer
---@field InventoryManager IPlayerInventoryManager
---@field LanguageCode string
---@field IpAddress string
---@field Ping number
---@field PlayerName string
---@field WorldData IWorldPlayerData
---@field Groups PlayerGroupMembership[]
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
ServerConsolePlayer = {}

---@param server ServerMain
---@param worlddata ServerWorldPlayerData
---@return ServerConsolePlayer
function ServerConsolePlayer.ctor(server, worlddata) end

---@param sendInventory? boolean
function ServerConsolePlayer.BroadcastPlayerData(sendInventory) end

---@return EnumClientState # The current connection state of a player thats currently connecting to the server
function ServerConsolePlayer.get_ConnectionState() end

---@return string
function ServerConsolePlayer.get_PlayerUID() end

---@param privilegeCode string
---@return boolean
function ServerConsolePlayer.HasPrivilege(privilegeCode) end

function ServerConsolePlayer.Disconnect() end

---@param message string
function ServerConsolePlayer.Disconnect(message) end

---@return IPlayerRole
function ServerConsolePlayer.get_Role() end

---@param value OnEntityAction
function ServerConsolePlayer.add_InWorldAction(value) end

---@param value OnEntityAction
function ServerConsolePlayer.remove_InWorldAction(value) end

---@return table
function ServerConsolePlayer.get_Entitlements() end

---@param value table
function ServerConsolePlayer.set_Entitlements(value) end

---@return number
function ServerConsolePlayer.get_ActiveSlot() end

---@param value number
function ServerConsolePlayer.set_ActiveSlot(value) end

---@return boolean
function ServerConsolePlayer.get_ImmersiveFpMode() end

---@param value boolean
function ServerConsolePlayer.set_ImmersiveFpMode(value) end

---@return number
function ServerConsolePlayer.get_ItemCollectMode() end

---@param value number
function ServerConsolePlayer.set_ItemCollectMode(value) end

---@return number
function ServerConsolePlayer.get_ClientId() end

---@return EntityPlayer
function ServerConsolePlayer.get_Entity() end

---@return IPlayerInventoryManager # Let's you do various interesting things with the players inventory.
function ServerConsolePlayer.get_InventoryManager() end

---@return string
function ServerConsolePlayer.get_LanguageCode() end

---@param value string
function ServerConsolePlayer.set_LanguageCode(value) end

---@return string
function ServerConsolePlayer.get_IpAddress() end

---@return number
function ServerConsolePlayer.get_Ping() end

---@return string
function ServerConsolePlayer.get_PlayerName() end

---@param consumeSpawnUse boolean
---@return FuzzyEntityPos
function ServerConsolePlayer.GetSpawnPosition(consumeSpawnUse) end

---@return IWorldPlayerData # Some world-specific information about a connected player. If you want modify any value, also broadcast the playerdata to all connected clients. This is the object that stored and loaded with the save game
function ServerConsolePlayer.get_WorldData() end

---@return PlayerGroupMembership[]
function ServerConsolePlayer.get_Groups() end

---@param inv InventoryBasePlayer Abstract class used for all inventories that are "on" the player. Any inventory not inheriting from this class will not be stored to the savegame as part of the players inventory.
function ServerConsolePlayer.SetInventory(inv) end

---@param value IPlayerRole
function ServerConsolePlayer.set_Role(value) end

---@return IServerPlayerData # The player configuration that is world independent
function ServerConsolePlayer.get_ServerData() end

---@return string
function ServerConsolePlayer.get_Privileges() end

---@return number
function ServerConsolePlayer.get_CurrentChunkSentRadius() end

---@param value number
function ServerConsolePlayer.set_CurrentChunkSentRadius(value) end

---@return BlockSelection # Contains all the information for a players block selection event
function ServerConsolePlayer.get_CurrentBlockSelection() end

---@return EntitySelection
function ServerConsolePlayer.get_CurrentEntitySelection() end

---@return BlockSelection # Contains all the information for a players block selection event
function ServerConsolePlayer.get_CurrentUsingBlockSelection() end

---@param value BlockSelection Contains all the information for a players block selection event
function ServerConsolePlayer.set_CurrentUsingBlockSelection(value) end

---@return EntitySelection
function ServerConsolePlayer.get_CurrentUsingEntitySelection() end

---@param value EntitySelection
function ServerConsolePlayer.set_CurrentUsingEntitySelection(value) end

---@return number
function ServerConsolePlayer.get_LastReceivedClientPosition() end

---@param value number
function ServerConsolePlayer.set_LastReceivedClientPosition(value) end

---@param code string
---@param message? string
---@param langparams userdata
function ServerConsolePlayer.SendIngameError(code, message, langparams) end

---@param groupId number
---@param message string
---@param chatType EnumChatType A definition for the types of chat that could occur.
---@param data? string
function ServerConsolePlayer.SendMessage(groupId, message, chatType, data) end

---@param groupId number
---@param message string
---@param args userdata
function ServerConsolePlayer.SendLocalisedMessage(groupId, message, args) end

function ServerConsolePlayer.SendPositionToClient() end

---@param pos PlayerSpawnPos
function ServerConsolePlayer.SetSpawnPosition(pos) end

function ServerConsolePlayer.ClearSpawnPosition() end

---@return PlayerGroupMembership[]
function ServerConsolePlayer.GetGroups() end

---@param groupId number
---@return PlayerGroupMembership
function ServerConsolePlayer.GetGroup(groupId) end

---@param roleCode string
function ServerConsolePlayer.SetRole(roleCode) end

---@param key string
---@param data number
function ServerConsolePlayer.SetModdata(key, data) end

---@param key string
function ServerConsolePlayer.RemoveModdata(key) end

---@param key string
---@return number
function ServerConsolePlayer.GetModdata(key) end

---@param key string
---@param data T
function ServerConsolePlayer.SetModData(key, data) end

---@param key string
---@param defaultValue? T
---@return T
function ServerConsolePlayer.GetModData(key, defaultValue) end

---@param action EnumEntityAction A players in-world action
---@param on boolean
---@return EnumHandling # Tells the engine how to handle default or subsequent similar behaviors
function ServerConsolePlayer.TriggerInWorldAction(action, on) end

---@return userdata
function ServerConsolePlayer.GetType() end

---@return string
function ServerConsolePlayer.ToString() end

---@param obj userdata
---@return boolean
function ServerConsolePlayer.Equals(obj) end

---@return number
function ServerConsolePlayer.GetHashCode() end


