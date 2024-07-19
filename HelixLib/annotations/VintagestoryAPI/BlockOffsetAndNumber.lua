---@meta

---@class BlockOffsetAndNumber: Vec4i, Vec4i
---@field BlockNumber number
---@field X number
---@field Y number
---@field Z number
---@field W number
BlockOffsetAndNumber = {}

---@return BlockOffsetAndNumber
function BlockOffsetAndNumber.ctor() end
---@param x number
---@param y number
---@param z number
---@param w number
---@return BlockOffsetAndNumber
function BlockOffsetAndNumber.ctor(x, y, z, w) end

---@return number
function BlockOffsetAndNumber.get_BlockNumber() end

---@param other Vec4i Represents a vector of 4 ints. Go bug Tyron if you need more utility methods in this class.
---@return boolean
function BlockOffsetAndNumber.Equals(other) end

---@return number
function BlockOffsetAndNumber.GetHashCode() end

-- Returns the squared Euclidean horizontal distance to between this and given position
---@param x number
---@param z number
---@return number
function BlockOffsetAndNumber.HorDistanceSqTo(x, z) end

---@return userdata
function BlockOffsetAndNumber.GetType() end

---@return string
function BlockOffsetAndNumber.ToString() end

---@param obj userdata
---@return boolean
function BlockOffsetAndNumber.Equals(obj) end


