---@meta

---@class Privilege
---@field buildblocks string Place or break blocks
---@field useblock string Interact with block (e.g. door, chest)
---@field buildblockseverywhere string Place or break blocks everywhere, completely ignoring area permissons. You still need to be in creative mode however.
---@field useblockseverywhere string Use blocks everywhere, completely ignoring area permissons. You still need to be in creative mode however.
---@field attackplayers string Cause damage to a player
---@field attackcreatures string Cause damage to any non-player creature
---@field freemove string Ability to fly or change movepseed
---@field gamemode string Ability to set own game mode
---@field pickingrange string Ability to set own picking range
---@field chat string Ability to chat
---@field selfkill string Ability to use the /kill command
---@field kick string Ability to kick players
---@field ban string Ability to ban/unban a player
---@field whitelist string Ability to whitelist/unwhitelist a player
---@field setwelcome string Ability to set welcome message
---@field announce string Ability to make a server wide announcement
---@field readlists string Ability to see client, group, banned user and area lists
---@field give string Ability to create block from given block id
---@field claimland string Ability to claim lands
---@field setspawn string Ability to set default spawn
---@field controlserver string Ability to restart/shutdown server, reload mods, etc.
---@field tp string Ability to teleport
---@field time string Ability to read, modify game world time
---@field grantrevoke string Ability to set player role and ability to grant/revoke individual privileges. A player can only grant the same or a lower level group and the same or less privileges.
---@field root string Ability to do everything and have all permissions
---@field commandplayer string Ability to issue a command for another player (e.g. teleport another player or set another players game mode)
---@field controlplayergroups string Ability to join/leave/invite/op own player groups and their chat channels
---@field manageplayergroups string Ability to create/disband own player groups and their chat channels
Privilege = {}

---@return Privilege
function Privilege.ctor() end

---@return string
function Privilege.AllCodes() end

---@return userdata
function Privilege.GetType() end

---@return string
function Privilege.ToString() end

---@param obj userdata
---@return boolean
function Privilege.Equals(obj) end

---@return number
function Privilege.GetHashCode() end


