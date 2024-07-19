---@meta

---@class Contribution2
---@field dx number
---@field dy number
---@field xsb number
---@field ysb number
---@field Next Contribution2
Contribution2 = {}

---@param multiplier number
---@param xsb number
---@param ysb number
---@return Contribution2
function Contribution2.ctor(multiplier, xsb, ysb) end

---@return userdata
function Contribution2.GetType() end

---@return string
function Contribution2.ToString() end

---@param obj userdata
---@return boolean
function Contribution2.Equals(obj) end

---@return number
function Contribution2.GetHashCode() end


