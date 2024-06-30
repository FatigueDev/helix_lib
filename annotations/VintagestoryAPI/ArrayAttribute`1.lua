---@meta

---@class ArrayAttribute`1
---@field value T[]
ArrayAttribute`1 = {}


---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param attr IAttribute An attribute from an attribute tree
---@return boolean
function ArrayAttribute`1.Equals(worldForResolve, attr) end

---@return userdata
function ArrayAttribute`1.GetValue() end

---@return string
function ArrayAttribute`1.ToJsonToken() end

---@return string
function ArrayAttribute`1.ToString() end

---@return number
function ArrayAttribute`1.GetHashCode() end

---@return userdata
function ArrayAttribute`1.GetType() end

---@param obj userdata
---@return boolean
function ArrayAttribute`1.Equals(obj) end


