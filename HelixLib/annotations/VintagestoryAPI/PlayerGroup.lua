---@meta

---@class PlayerGroup
---@field Uid number
---@field Name string
---@field CreatedDate string
---@field OwnerUID string
---@field ChatHistory table
---@field Md5Identifier string
---@field CreatedByPrivateMessage boolean
---@field OnlinePlayers table
PlayerGroup = {}

---@return PlayerGroup
function PlayerGroup.ctor() end

---@return userdata
function PlayerGroup.GetType() end

---@return string
function PlayerGroup.ToString() end

---@param obj userdata
---@return boolean
function PlayerGroup.Equals(obj) end

---@return number
function PlayerGroup.GetHashCode() end


