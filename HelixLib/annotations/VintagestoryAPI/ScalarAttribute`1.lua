---@meta

---@class ScalarAttribute`1
---@field value T
ScalarAttribute`1 = {}


---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param attr IAttribute An attribute from an attribute tree
---@return boolean
function ScalarAttribute`1.Equals(worldForResolve, attr) end

---@param b userdata
---@return boolean
function ScalarAttribute`1.Equals(b) end

---@return userdata
function ScalarAttribute`1.GetValue() end

---@return string
function ScalarAttribute`1.ToString() end

---@return string
function ScalarAttribute`1.ToJsonToken() end

---@return number
function ScalarAttribute`1.GetHashCode() end

---@return userdata
function ScalarAttribute`1.GetType() end


