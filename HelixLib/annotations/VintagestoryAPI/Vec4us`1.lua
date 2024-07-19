---@meta

---@class Vec4us`1
---@field X number
---@field Y number
---@field Z number
---@field Value T
Vec4us`1 = {}

---@return Vec4us`1
function Vec4us`1.ctor() end
---@param x number
---@param y number
---@param z number
---@param Value T
---@return Vec4us`1
function Vec4us`1.ctor(x, y, z, Value) end

---@return userdata
function Vec4us`1.GetType() end

---@return string
function Vec4us`1.ToString() end

---@param obj userdata
---@return boolean
function Vec4us`1.Equals(obj) end

---@return number
function Vec4us`1.GetHashCode() end


