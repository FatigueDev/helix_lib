---@meta

---@class BlockUpdate
---@field ExchangeOnly boolean
---@field Pos BlockPos
---@field OldBlockId number Contains either liquid layer of solid layer block
---@field OldFluidBlockId number Contains liquid layer of block
---@field NewSolidBlockId number If this value is negative, it indicates no change to the block (neither air block nor anything else) because only the fluid is being updated
---@field NewFluidBlockId number If this value is negative, it indicates no change to the fluids layer block (neither air block nor anything else) because only the solid block is being updated
---@field ByStack ItemStack
---@field OldBlockEntityData number
---@field NewBlockEntityData number
---@field Decor DecorUpdate[]
BlockUpdate = {}

---@return BlockUpdate
function BlockUpdate.ctor() end

---@return userdata
function BlockUpdate.GetType() end

---@return string
function BlockUpdate.ToString() end

---@param obj userdata
---@return boolean
function BlockUpdate.Equals(obj) end

---@return number
function BlockUpdate.GetHashCode() end


