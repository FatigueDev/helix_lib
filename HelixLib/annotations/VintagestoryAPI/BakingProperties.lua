---@meta

---@class BakingProperties
---@field Temp Nullable`1
---@field LevelFrom number
---@field LevelTo number
---@field StartScaleY number
---@field EndScaleY number
---@field ResultCode string
---@field InitialCode string
---@field LargeItem boolean
BakingProperties = {}

---@return BakingProperties
function BakingProperties.ctor() end

---@param stack ItemStack
---@return BakingProperties
function BakingProperties.ReadFrom(stack) end

---@return userdata
function BakingProperties.GetType() end

---@return string
function BakingProperties.ToString() end

---@param obj userdata
---@return boolean
function BakingProperties.Equals(obj) end

---@return number
function BakingProperties.GetHashCode() end


