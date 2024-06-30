---@meta

---@class PosUtil
PosUtil = {}


---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param sourcePos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function PosUtil.SetOrCreate(pos, sourcePos) end

---@param pos Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param sourcePos Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function PosUtil.SetOrCreate(pos, sourcePos) end

---@return userdata
function PosUtil.GetType() end

---@return string
function PosUtil.ToString() end

---@param obj userdata
---@return boolean
function PosUtil.Equals(obj) end

---@return number
function PosUtil.GetHashCode() end


