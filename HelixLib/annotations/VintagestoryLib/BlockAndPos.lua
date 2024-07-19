---@meta

---@class BlockAndPos
---@field block Block
---@field pos BlockPos
BlockAndPos = {}

---@return BlockAndPos
function BlockAndPos.ctor() end

---@return userdata
function BlockAndPos.GetType() end

---@return string
function BlockAndPos.ToString() end

---@param obj userdata
---@return boolean
function BlockAndPos.Equals(obj) end

---@return number
function BlockAndPos.GetHashCode() end


