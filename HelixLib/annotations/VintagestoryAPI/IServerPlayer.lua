---@meta

-- Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@class IServerPlayer:  IPlayer
---@field ItemCollectMode number
---@field CurrentChunkSentRadius number The "radius" of chunks that the player already received. If set to 0, the server will recheck all nearby chunks if they have been sent or not and send them when necessary
---@field ConnectionState EnumClientState Retrieves the current connection state of the client
---@field IpAddress string Get the IP for the given player ID. Returns null if not connected, or when called on client side.
---@field LanguageCode string The language this player is currently using
---@field Ping number Returns the players ping time in seconds. Returns NaN if not connected or when on client side.
---@field ServerData IServerPlayerData The players configuration that is world independent
---@field InWorldAction OnEntityAction
IServerPlayer = {}


---@param value OnEntityAction
function IServerPlayer.add_InWorldAction(value) end

---@param value OnEntityAction
function IServerPlayer.remove_InWorldAction(value) end

---@return number
function IServerPlayer.get_ItemCollectMode() end

---@param value number
function IServerPlayer.set_ItemCollectMode(value) end

---@return number
function IServerPlayer.get_CurrentChunkSentRadius() end

---@param value number
function IServerPlayer.set_CurrentChunkSentRadius(value) end

---@return EnumClientState # The current connection state of a player thats currently connecting to the server
function IServerPlayer.get_ConnectionState() end

---@return string
function IServerPlayer.get_IpAddress() end

---@return string
function IServerPlayer.get_LanguageCode() end

---@return number
function IServerPlayer.get_Ping() end

---@return IServerPlayerData # The player configuration that is world independent
function IServerPlayer.get_ServerData() end

-- Notifies all clients of given players playerdata. Useful when you modified any of the WorldData. Does nothing if this player is not connected. Also sends the player data to the player himself
---@param sendInventory? boolean
function IServerPlayer.BroadcastPlayerData(sendInventory) end

-- Disconnects (kicks) this player from the server. Does nothing if this player is not connected.
function IServerPlayer.Disconnect() end

-- Disconnects (kicks) a player from the server with given reason. Does nothing if this player is not connected.
---@param message string
function IServerPlayer.Disconnect(message) end

-- Shows a vibrating red text in the players screen. If text is null the client will try to find a language entry using supplied code prefixed with 'ingameerror-' (which is recommended so that the errors are translated to the users local language)
---@param code string
---@param message? string
---@param langparams userdata
function IServerPlayer.SendIngameError(code, message, langparams) end

-- Sends a chat message to this player to given groupId. You can use GlobalConstants.GeneralChatGroup as groupId to send it to the players general chat.
---@param groupId number
---@param message string
---@param chatType EnumChatType A definition for the types of chat that could occur.
---@param data? string
function IServerPlayer.SendMessage(groupId, message, chatType, data) end

-- Sends a chat message (notification type) to this player, localised to the player's own language independent from the server language
-- The message will be string formatted - similar to Lang.Get() - with the specified optional args
---@param groupId number
---@param message string
---@param args userdata
function IServerPlayer.SendLocalisedMessage(groupId, message, args) end

-- Sets the players privilege role. For a list of roles, read sapi.Config.Roles
---@param roleCode string
function IServerPlayer.SetRole(roleCode) end

-- Sets a player specific spawn position
---@param pos PlayerSpawnPos
function IServerPlayer.SetSpawnPosition(pos) end

-- Removes the player specific spawn position, which means it will default to the role or global default spawn position
function IServerPlayer.ClearSpawnPosition() end

-- Returns the default spawn position.
-- This method will return the custom spawnpoint if one has been permanently set.
-- If no custom spawnpoint is present this method will return the global default spawnpoint.
-- Returns null when called on client side.
---@param consumeSpawnUse boolean
---@return FuzzyEntityPos
function IServerPlayer.GetSpawnPosition(consumeSpawnUse) end

-- Tells the server send a position packet to the client
function IServerPlayer.SendPositionToClient() end

---@param key string
---@param data T
function IServerPlayer.SetModData(key, data) end

---@param key string
---@param defaultValue? T
---@return T
function IServerPlayer.GetModData(key, defaultValue) end

-- Allows setting of arbitrary, permanantly stored moddata attached to this player. Not synced to client.
---@param key string
---@param data number
function IServerPlayer.SetModdata(key, data) end

-- Removes the permanently stored mod data
---@param key string
function IServerPlayer.RemoveModdata(key) end

-- Retrieve arbitrary, permantly stored mod data
---@param key string
---@return number
function IServerPlayer.GetModdata(key) end


