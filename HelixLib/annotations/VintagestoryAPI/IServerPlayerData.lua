---@meta

-- The player configuration that is world independent
---@class IServerPlayerData
---@field PlayerUID string The players unique identifier
---@field RoleCode string The players role code
---@field PermaPrivileges HashSet`1 Privilige explicitly granted to this player
---@field DeniedPrivileges HashSet`1 Privilige explicitly revoked from this player
---@field PlayerGroupMemberships table List of groups the player is a member off
---@field AllowInvite boolean Whether or not this player wants to receive group invites
---@field LastKnownPlayername string The players last known player name. This may have changed since the last log in.
---@field CustomPlayerData table Store your own custom data in here if you need. Might want to serialize your data to json code first.
---@field ExtraLandClaimAllowance number Extra land claim allowance (beyond whats granted by the role)
---@field ExtraLandClaimAreas number Extra land claim areas (beyond whats granted by the role)
IServerPlayerData = {}


---@return string
function IServerPlayerData.get_PlayerUID() end

---@return string
function IServerPlayerData.get_RoleCode() end

---@return HashSet`1
function IServerPlayerData.get_PermaPrivileges() end

---@return HashSet`1
function IServerPlayerData.get_DeniedPrivileges() end

---@return table
function IServerPlayerData.get_PlayerGroupMemberships() end

---@return boolean
function IServerPlayerData.get_AllowInvite() end

---@return string
function IServerPlayerData.get_LastKnownPlayername() end

---@return table
function IServerPlayerData.get_CustomPlayerData() end

---@return number
function IServerPlayerData.get_ExtraLandClaimAllowance() end

---@param value number
function IServerPlayerData.set_ExtraLandClaimAllowance(value) end

---@return number
function IServerPlayerData.get_ExtraLandClaimAreas() end

---@param value number
function IServerPlayerData.set_ExtraLandClaimAreas(value) end


