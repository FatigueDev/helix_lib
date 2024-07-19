---@meta

---@class EntitySelection
---@field Entity Entity The selected Entity.
---@field Position Vec3d The position of the selected entity.
---@field Face BlockFacing the facing of the entity.
---@field HitPosition Vec3d The hit position of the entity.
EntitySelection = {}

---@return EntitySelection
function EntitySelection.ctor() end

---@return EntitySelection
function EntitySelection.Clone() end

---@return userdata
function EntitySelection.GetType() end

---@return string
function EntitySelection.ToString() end

---@param obj userdata
---@return boolean
function EntitySelection.Equals(obj) end

---@return number
function EntitySelection.GetHashCode() end


