---@meta

---@class EntityUpdate
---@field EntityId number If set this entity was spawned or Moved (position needs to be set too)
---@field EntityProperties EntityProperties If set this entity needs to be spawned
---@field OldPosition EntityPos If set the entity was moved
---@field NewPosition EntityPos
EntityUpdate = {}

---@return EntityUpdate
function EntityUpdate.ctor() end

---@return userdata
function EntityUpdate.GetType() end

---@return string
function EntityUpdate.ToString() end

---@param obj userdata
---@return boolean
function EntityUpdate.Equals(obj) end

---@return number
function EntityUpdate.GetHashCode() end


