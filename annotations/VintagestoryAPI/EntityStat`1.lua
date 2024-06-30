---@meta

---@class EntityStat`1
---@field Value T
---@field Weight number
---@field Persistent boolean
EntityStat`1 = {}

---@return EntityStat`1
function EntityStat`1.ctor() end

---@return userdata
function EntityStat`1.GetType() end

---@return string
function EntityStat`1.ToString() end

---@param obj userdata
---@return boolean
function EntityStat`1.Equals(obj) end

---@return number
function EntityStat`1.GetHashCode() end


