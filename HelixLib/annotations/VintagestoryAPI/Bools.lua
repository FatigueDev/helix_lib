---@meta

---@class Bools
---@field Item boolean
Bools = {}

---@param a boolean
---@param b boolean
---@return Bools
function Bools.ctor(a, b) end

---@param i number
---@return boolean
function Bools.get_Item(i) end

---@param i number
---@param value boolean
function Bools.set_Item(i, value) end

---@return userdata
function Bools.GetType() end

---@return string
function Bools.ToString() end

---@param obj userdata
---@return boolean
function Bools.Equals(obj) end

---@return number
function Bools.GetHashCode() end


