---@meta

---@class LineRectangled: Rectangled, Rectangled
---@field AscentOrHeight number
---@field Ascent number
---@field X number
---@field Y number
---@field Width number
---@field Height number
LineRectangled = {}

---@param X number
---@param Y number
---@param width number
---@param height number
---@return LineRectangled
function LineRectangled.ctor(X, Y, width, height) end
---@return LineRectangled
function LineRectangled.ctor() end

---@return number
function LineRectangled.get_AscentOrHeight() end

---@return number
function LineRectangled.Bottom() end

---@param x number
---@param y number
---@return boolean
function LineRectangled.PointInside(x, y) end

---@return userdata
function LineRectangled.GetType() end

---@return string
function LineRectangled.ToString() end

---@param obj userdata
---@return boolean
function LineRectangled.Equals(obj) end

---@return number
function LineRectangled.GetHashCode() end


