---@meta

---@class IPermissionManager
IPermissionManager = {}


-- Retrieve a role by its role code
---@param code string
---@return IPlayerRole
function IPermissionManager.GetRole(code) end

-- Set given role for given player. Role must exist in the serverconfig.json. For a list of roles, read sapi.Config.Roles
---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param role IPlayerRole
function IPermissionManager.SetRole(player, role) end

-- Set given role for given player. Role must exist in the serverconfig.json. For a list of roles, read sapi.Config.Roles
---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param roleCode string
function IPermissionManager.SetRole(player, roleCode) end

-- Registers a user privilege with the server. Is only active for the current server session and lost during a server restart/shutdown, so register it during server startup.
-- New privileges are auto-granted to admins and the server console.
---@param code string
---@param shortdescription string
---@param adminAutoGrant? boolean
function IPermissionManager.RegisterPrivilege(code, shortdescription, adminAutoGrant) end

-- Grants privilege to all players connected or yet to connect. This setting is only active for the current server session and lost during a server restart/shutdown.
---@param code string
function IPermissionManager.GrantTemporaryPrivilege(code) end

-- Revokes a privilege that has been previously granted to all players. Does not revoke privileges granted from a group. Does nothing if this privilege hasn't been previously granted.
---@param code string
function IPermissionManager.DropTemporaryPrivilege(code) end

-- Grant a privilege to an individual connected player. 
---@param playerUID string
---@param code string
---@param permanent? boolean
---@return boolean
function IPermissionManager.GrantPrivilege(playerUID, code, permanent) end

-- Actively denies a privilege from a player, overrides privileges granted by a role. Does not however override non permanent privileges
---@param playerUID string
---@param code string
---@return boolean
function IPermissionManager.DenyPrivilege(playerUID, code) end

-- Removes a previously set privilege denial, if any was set.
---@param playerUID string
---@param code string
---@return boolean
function IPermissionManager.RemovePrivilegeDenial(playerUID, code) end

-- Revokes a privilege that has been previously granted to this player. Does not revoke privileges granted from a group. Does nothing if the player does not have given privilege.
---@param playerUID string
---@param code string
---@param permanent? boolean
---@return boolean
function IPermissionManager.RevokePrivilege(playerUID, code, permanent) end

-- Add given privilege to given group, granting everyone in this group access to this privilege. This setting is only active for the current server session and lost during a server restart/shutdown.
---@param groupCode string
---@param privilegeCode string
---@return boolean
function IPermissionManager.AddPrivilegeToGroup(groupCode, privilegeCode) end

-- Revokes given privilege to given group, revoking everyones access to this privilege inside this group
---@param groupCode string
---@param privilegeCode string
---@return boolean
function IPermissionManager.RemovePrivilegeFromGroup(groupCode, privilegeCode) end

-- Returns the players permission level
---@param player number
---@return number
function IPermissionManager.GetPlayerPermissionLevel(player) end


