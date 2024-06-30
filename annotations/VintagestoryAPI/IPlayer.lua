---@meta

-- Represents a player
---@class IPlayer
---@field Role IPlayerRole Returns the players privilege role
---@field Groups PlayerGroupMembership[] The players player group memberships
---@field Entitlements table List of the users entitlements, vanilla servers will list VIV and/or VS Team member entitlements
---@field CurrentBlockSelection BlockSelection The block the player is currently aiming at
---@field CurrentEntitySelection EntitySelection The entity the player is currently aiming at
---@field PlayerName string Get the players character name. The character name can be changed every 60 days in the account manager, so don't consider the players name as a unique identifier for a player. Use PlayerUID instead
---@field PlayerUID string Returns the players identifier that is unique across all registered players and will never change. Use this to uniquely identify a player for all eternity. Shorthand for WorldData.PlayerUID
---@field ClientId number The players current client id, 0 if not connected. This is the number thats assigned by the server for any connecting player. You probably don't need this number.
---@field Entity EntityPlayer The entity the player currently controls
---@field WorldData IWorldPlayerData Some world-specific information about the player. This object is stored with the save game. If you modify it server side, be sure to call player.BroadcastPlayerData() to send it to affected clients.
---@field InventoryManager IPlayerInventoryManager Returns the given players inventory manager that let's you do various interesting things with the players inventory.
---@field Privileges string The list of privileges the player currently has access to (by role or direct assignment) This list is available for the playing player on the client, but not for other players.
---@field ImmersiveFpMode boolean
IPlayer = {}


---@return IPlayerRole
function IPlayer.get_Role() end

---@param value IPlayerRole
function IPlayer.set_Role(value) end

---@return PlayerGroupMembership[]
function IPlayer.get_Groups() end

-- Load the players group that he is a member of
---@return PlayerGroupMembership[]
function IPlayer.GetGroups() end

-- Returns the membership data if player is part of this group, otherwise null
---@param groupId number
---@return PlayerGroupMembership
function IPlayer.GetGroup(groupId) end

---@return table
function IPlayer.get_Entitlements() end

---@return BlockSelection # Contains all the information for a players block selection event
function IPlayer.get_CurrentBlockSelection() end

---@return EntitySelection
function IPlayer.get_CurrentEntitySelection() end

---@return string
function IPlayer.get_PlayerName() end

---@return string
function IPlayer.get_PlayerUID() end

---@return number
function IPlayer.get_ClientId() end

---@return EntityPlayer
function IPlayer.get_Entity() end

---@return IWorldPlayerData # Some world-specific information about a connected player. If you want modify any value, also broadcast the playerdata to all connected clients. This is the object that stored and loaded with the save game
function IPlayer.get_WorldData() end

---@return IPlayerInventoryManager # Let's you do various interesting things with the players inventory.
function IPlayer.get_InventoryManager() end

---@return string
function IPlayer.get_Privileges() end

---@return boolean
function IPlayer.get_ImmersiveFpMode() end

-- Check if a player has the given privilege
---@param privilegeCode string
---@return boolean
function IPlayer.HasPrivilege(privilegeCode) end


