---@meta

---@class Mat3d
Mat3d = {}

---@return Mat3d
function Mat3d.ctor() end

---@return number
function Mat3d.Create() end

---@param output number
---@param a number
---@return number
function Mat3d.FromMat4(output, a) end

---@param a number
---@return number
function Mat3d.CloneIt(a) end

---@param output number
---@param a number
---@return number
function Mat3d.Copy(output, a) end

---@param output number
---@return number
function Mat3d.Identity_(output) end

---@param output number
---@param a number
---@return number
function Mat3d.Transpose(output, a) end

---@param output number
---@param a number
---@return number
function Mat3d.Invert(output, a) end

---@param output number
---@param a number
---@return number
function Mat3d.Adjoint(output, a) end

---@param a number
---@return number
function Mat3d.Determinant(a) end

---@param output number
---@param a number
---@param b number
---@return number
function Mat3d.Multiply(output, a, b) end

---@param output number
---@param a number
---@param b number
---@return number
function Mat3d.Mul(output, a, b) end

---@param output number
---@param a number
---@param v number
---@return number
function Mat3d.Translate(output, a, v) end

---@param output number
---@param a number
---@param rad number
---@return number
function Mat3d.Rotate(output, a, rad) end

---@param output number
---@param a number
---@param v number
---@return number
function Mat3d.Scale(output, a, v) end

---@param output number
---@param a number
---@return number
function Mat3d.FromMat2d(output, a) end

---@param output number
---@param q number
---@return number
function Mat3d.FromQuat(output, q) end

---@param output number
---@param a number
---@return number
function Mat3d.NormalFromMat4(output, a) end

---@return userdata
function Mat3d.GetType() end

---@return string
function Mat3d.ToString() end

---@param obj userdata
---@return boolean
function Mat3d.Equals(obj) end

---@return number
function Mat3d.GetHashCode() end


