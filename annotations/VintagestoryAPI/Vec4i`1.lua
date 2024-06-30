---@meta

---@class Vec4i`1
---@field X number
---@field Y number
---@field Z number
---@field Value T
Vec4i`1 = {}

---@return Vec4i`1
function Vec4i`1.ctor() end
---@param x number
---@param y number
---@param z number
---@param Value T
---@return Vec4i`1
function Vec4i`1.ctor(x, y, z, Value) end

---@return userdata
function Vec4i`1.GetType() end

---@return string
function Vec4i`1.ToString() end

---@param obj userdata
---@return boolean
function Vec4i`1.Equals(obj) end

---@return number
function Vec4i`1.GetHashCode() end


