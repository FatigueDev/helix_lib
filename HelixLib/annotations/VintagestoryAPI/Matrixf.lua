---@meta

---@class Matrixf
---@field ValuesAsDouble number
---@field Values number
Matrixf = {}

---@return Matrixf
function Matrixf.ctor() end
---@param values number
---@return Matrixf
function Matrixf.ctor(values) end

---@return number
function Matrixf.get_ValuesAsDouble() end

---@return Matrixf
function Matrixf.Create() end

---@return Matrixf
function Matrixf.Identity() end

---@param values number
---@return Matrixf
function Matrixf.Set(values) end

---@param values number
---@return Matrixf
function Matrixf.Set(values) end

---@param x number
---@param y number
---@param z number
---@return Matrixf
function Matrixf.Translate(x, y, z) end

---@param x number
---@param y number
---@param z number
---@return Matrixf
function Matrixf.Translate(x, y, z) end

---@param x number
---@param y number
---@param z number
---@return Matrixf
function Matrixf.Scale(x, y, z) end

---@param degrees Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return Matrixf
function Matrixf.RotateDeg(degrees) end

---@param radians Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return Matrixf
function Matrixf.Rotate(radians) end

---@param radX number
---@param radY number
---@param radZ number
---@return Matrixf
function Matrixf.Rotate(radX, radY, radZ) end

---@param radX number
---@return Matrixf
function Matrixf.RotateX(radX) end

---@param radY number
---@return Matrixf
function Matrixf.RotateY(radY) end

---@param radZ number
---@return Matrixf
function Matrixf.RotateZ(radZ) end

---@param degX number
---@return Matrixf
function Matrixf.RotateXDeg(degX) end

---@param degY number
---@return Matrixf
function Matrixf.RotateYDeg(degY) end

---@param degZ number
---@return Matrixf
function Matrixf.RotateZDeg(degZ) end

---@param vec Vec4f
---@return Vec4f
function Matrixf.TransformVector(vec) end

---@param vec Vec4d
---@return Vec4d
function Matrixf.TransformVector(vec) end

---@param matrix number
---@return Matrixf
function Matrixf.Mul(matrix) end

---@param matrix Matrixf
---@return Matrixf
function Matrixf.Mul(matrix) end

---@param matrix number
---@return Matrixf
function Matrixf.ReverseMul(matrix) end

---@return Matrixf
function Matrixf.FollowPlayer() end

---@return Matrixf
function Matrixf.FollowPlayerXZ() end

---@return Matrixf
function Matrixf.Invert() end

---@return Matrixf
function Matrixf.Clone() end

---@return userdata
function Matrixf.GetType() end

---@return string
function Matrixf.ToString() end

---@param obj userdata
---@return boolean
function Matrixf.Equals(obj) end

---@return number
function Matrixf.GetHashCode() end


