---@meta

---@class Cardinal
---@field Normali Vec3i
---@field Normalf Vec3f
---@field Opposite Cardinal
---@field Index number
---@field Initial string
---@field Code string
---@field IsDiagnoal boolean
---@field OppositeIndex number
---@field North Cardinal Negative Z
---@field NorthEast Cardinal Positive X, negative Z
---@field East Cardinal Positive X
---@field SouthEast Cardinal Positive X, positive Z
---@field South Cardinal Positive Z
---@field SouthWest Cardinal Negative X, positive Z
---@field West Cardinal Negative X
---@field NorthWest Cardinal Negative X, negative Z
---@field ALL Cardinal[]
Cardinal = {}

---@param code string
---@param initial string
---@param normali Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@param index number
---@param oppositeIndex number
---@param isDiagonal boolean
---@return Cardinal
function Cardinal.ctor(code, initial, normali, index, oppositeIndex, isDiagonal) end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function Cardinal.get_Normali() end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Cardinal.get_Normalf() end

---@return Cardinal
function Cardinal.get_Opposite() end

---@return number
function Cardinal.get_Index() end

---@return string
function Cardinal.get_Initial() end

---@return string
function Cardinal.get_Code() end

---@return boolean
function Cardinal.get_IsDiagnoal() end

---@return number
function Cardinal.get_OppositeIndex() end

---@param normali Vec3i Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
---@return Cardinal
function Cardinal.FromNormali(normali) end

---@param initials string
---@return Cardinal
function Cardinal.FromInitial(initials) end

---@param x number
---@param y number
---@param z number
---@return Cardinal
function Cardinal.FromVector(x, y, z) end

---@return userdata
function Cardinal.GetType() end

---@return string
function Cardinal.ToString() end

---@param obj userdata
---@return boolean
function Cardinal.Equals(obj) end

---@return number
function Cardinal.GetHashCode() end


