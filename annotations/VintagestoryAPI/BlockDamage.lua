---@meta

---@class BlockDamage
---@field ByPlayer IPlayer
---@field DecalId number
---@field Position BlockPos
---@field Facing BlockFacing
---@field Block Block
---@field RemainingResistance number
---@field LastBreakEllapsedMs number
---@field BeginBreakEllapsedMs number
---@field Tool Nullable`1
---@field BreakingCounter number
BlockDamage = {}

---@return BlockDamage
function BlockDamage.ctor() end

---@return userdata
function BlockDamage.GetType() end

---@return string
function BlockDamage.ToString() end

---@param obj userdata
---@return boolean
function BlockDamage.Equals(obj) end

---@return number
function BlockDamage.GetHashCode() end


