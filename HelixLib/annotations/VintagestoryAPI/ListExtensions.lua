---@meta

---@class ListExtensions
ListExtensions = {}


---@param array table
---@param rand Random
function ListExtensions.Shuffle(array, rand) end

---@param array table
---@param rand IRandom
function ListExtensions.Shuffle(array, rand) end

---@return userdata
function ListExtensions.GetType() end

---@return string
function ListExtensions.ToString() end

---@param obj userdata
---@return boolean
function ListExtensions.Equals(obj) end

---@return number
function ListExtensions.GetHashCode() end


