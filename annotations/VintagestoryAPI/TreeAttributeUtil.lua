---@meta

---@class TreeAttributeUtil
TreeAttributeUtil = {}


---@param tree ITreeAttribute Represents a List of nestable Attributes
---@param code string
---@param defaultValue? Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function TreeAttributeUtil.GetVec3i(tree, code, defaultValue) end

---@param tree ITreeAttribute Represents a List of nestable Attributes
---@param code string
---@param defaultValue? BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function TreeAttributeUtil.GetBlockPos(tree, code, defaultValue) end

---@param tree ITreeAttribute Represents a List of nestable Attributes
---@param code string
---@param value Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function TreeAttributeUtil.SetVec3i(tree, code, value) end

---@param tree ITreeAttribute Represents a List of nestable Attributes
---@param code string
---@param value BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function TreeAttributeUtil.SetBlockPos(tree, code, value) end

---@param tree ITreeAttribute Represents a List of nestable Attributes
---@param code string
---@param defaultValue? Vec3i[] Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return Vec3i[] # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function TreeAttributeUtil.GetVec3is(tree, code, defaultValue) end

---@param tree ITreeAttribute Represents a List of nestable Attributes
---@param code string
---@param value Vec3i[] Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function TreeAttributeUtil.SetVec3is(tree, code, value) end

---@return userdata
function TreeAttributeUtil.GetType() end

---@return string
function TreeAttributeUtil.ToString() end

---@param obj userdata
---@return boolean
function TreeAttributeUtil.Equals(obj) end

---@return number
function TreeAttributeUtil.GetHashCode() end


