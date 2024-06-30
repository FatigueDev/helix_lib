---@meta

---@class Rectanglef
---@field X number
---@field Y number
---@field Width number
---@field Height number
Rectanglef = {}

---@return Rectanglef
function Rectanglef.ctor() end
---@param x number
---@param y number
---@param width number
---@param height number
---@return Rectanglef
function Rectanglef.ctor(x, y, width, height) end

---@return number
function Rectanglef.Bottom() end

---@param x number
---@param y number
---@param width number
---@param height number
---@return Rectanglef
function Rectanglef.Create(x, y, width, height) end

---@return userdata
function Rectanglef.GetType() end

---@return string
function Rectanglef.ToString() end

---@param obj userdata
---@return boolean
function Rectanglef.Equals(obj) end

---@return number
function Rectanglef.GetHashCode() end


