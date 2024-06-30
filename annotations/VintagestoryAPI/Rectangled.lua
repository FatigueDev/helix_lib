---@meta

---@class Rectangled
---@field X number
---@field Y number
---@field Width number
---@field Height number
Rectangled = {}

---@return Rectangled
function Rectangled.ctor() end
---@param width number
---@param height number
---@return Rectangled
function Rectangled.ctor(width, height) end
---@param X number
---@param Y number
---@param width number
---@param height number
---@return Rectangled
function Rectangled.ctor(X, Y, width, height) end

---@return number
function Rectangled.Bottom() end

---@param x number
---@param y number
---@return boolean
function Rectangled.PointInside(x, y) end

---@return userdata
function Rectangled.GetType() end

---@return string
function Rectangled.ToString() end

---@param obj userdata
---@return boolean
function Rectangled.Equals(obj) end

---@return number
function Rectangled.GetHashCode() end


