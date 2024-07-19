---@meta

---@class Contribution3
---@field dx number
---@field dy number
---@field dz number
---@field xsb number
---@field ysb number
---@field zsb number
---@field Next Contribution3
Contribution3 = {}

---@param multiplier number
---@param xsb number
---@param ysb number
---@param zsb number
---@return Contribution3
function Contribution3.ctor(multiplier, xsb, ysb, zsb) end

---@return userdata
function Contribution3.GetType() end

---@return string
function Contribution3.ToString() end

---@param obj userdata
---@return boolean
function Contribution3.Equals(obj) end

---@return number
function Contribution3.GetHashCode() end


