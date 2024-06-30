---@meta

---@class TreeModifiedListener
---@field listener function
---@field path string
TreeModifiedListener = {}

---@return TreeModifiedListener
function TreeModifiedListener.ctor() end

---@return userdata
function TreeModifiedListener.GetType() end

---@return string
function TreeModifiedListener.ToString() end

---@param obj userdata
---@return boolean
function TreeModifiedListener.Equals(obj) end

---@return number
function TreeModifiedListener.GetHashCode() end


