---@meta

---@class IGroupManager
---@field PlayerGroupsById table
IGroupManager = {}


---@return table
function IGroupManager.get_PlayerGroupsById() end

---@param name string
---@return PlayerGroup
function IGroupManager.GetPlayerGroupByName(name) end

---@param group PlayerGroup
function IGroupManager.AddPlayerGroup(group) end

---@param group PlayerGroup
function IGroupManager.RemovePlayerGroup(group) end


