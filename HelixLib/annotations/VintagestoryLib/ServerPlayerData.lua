---@meta

---@class ServerPlayerData:  IServerPlayerData
---@field PlayerGroupMemberships table
---@field PlayerUID string
---@field RoleCode string
---@field PlayerGroupMemberShips table
---@field AllowInvite boolean
---@field LastKnownPlayername string
---@field CustomPlayerData table
---@field ExtraLandClaimAllowance number
---@field ExtraLandClaimAreas number
ServerPlayerData = {}

---@return ServerPlayerData
function ServerPlayerData.ctor() end

---@return table
function ServerPlayerData.get_PlayerGroupMemberships() end

---@return string
function ServerPlayerData.ToString() end

---@param other ServerPlayerData
---@return number
function ServerPlayerData.CompareTo(other) end

---@param newGroup PlayerRole
function ServerPlayerData.SetRole(newGroup) end

---@param privilege string
function ServerPlayerData.GrantPrivilege(privilege) end

---@param privilege string
function ServerPlayerData.DenyPrivilege(privilege) end

---@param privilege string
function ServerPlayerData.RevokePrivilege(privilege) end

---@param group PlayerGroup
---@param level EnumPlayerGroupMemberShip
---@return PlayerGroupMembership
function ServerPlayerData.JoinGroup(group, level) end

---@param serverConfig ServerConfig
---@return HashSet`1
function ServerPlayerData.GetAllPrivilegeCodes(serverConfig) end

---@param group PlayerGroup
function ServerPlayerData.LeaveGroup(group) end

---@param groupid number
function ServerPlayerData.LeaveGroup(groupid) end

---@param privilege string
---@param rolesByCode table
---@return boolean
function ServerPlayerData.HasPrivilege(privilege, rolesByCode) end

---@param server ServerMain
---@return PlayerRole
function ServerPlayerData.GetPlayerRole(server) end

---@return userdata
function ServerPlayerData.GetType() end

---@param obj userdata
---@return boolean
function ServerPlayerData.Equals(obj) end

---@return number
function ServerPlayerData.GetHashCode() end


