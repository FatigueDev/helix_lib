---@meta

---@class Contribution4
---@field dx number
---@field dy number
---@field dz number
---@field dw number
---@field xsb number
---@field ysb number
---@field zsb number
---@field wsb number
---@field Next Contribution4
Contribution4 = {}

---@param multiplier number
---@param xsb number
---@param ysb number
---@param zsb number
---@param wsb number
---@return Contribution4
function Contribution4.ctor(multiplier, xsb, ysb, zsb, wsb) end

---@return userdata
function Contribution4.GetType() end

---@return string
function Contribution4.ToString() end

---@param obj userdata
---@return boolean
function Contribution4.Equals(obj) end

---@return number
function Contribution4.GetHashCode() end


