---@meta

---@class PlayerUidName
---@field Uid string
---@field Name string
PlayerUidName = {}

---@return PlayerUidName
function PlayerUidName.ctor() end
---@param uid string
---@param name string
---@return PlayerUidName
function PlayerUidName.ctor(uid, name) end

---@return userdata
function PlayerUidName.GetType() end

---@return string
function PlayerUidName.ToString() end

---@param obj userdata
---@return boolean
function PlayerUidName.Equals(obj) end

---@return number
function PlayerUidName.GetHashCode() end


