---@meta

---@class Mat3f
Mat3f = {}

---@return Mat3f
function Mat3f.ctor() end

---@return number
function Mat3f.Create() end

---@param output number
---@param a number
---@return number
function Mat3f.FromMat4(output, a) end

---@param a number
---@return number
function Mat3f.CloneIt(a) end

---@param output number
---@param a number
---@return number
function Mat3f.Copy(output, a) end

---@param output number
---@return number
function Mat3f.Identity_(output) end

---@param output number
---@param a number
---@return number
function Mat3f.Transpose(output, a) end

---@param output number
---@param a number
---@return number
function Mat3f.Invert(output, a) end

---@param output number
---@param a number
---@return number
function Mat3f.Adjoint(output, a) end

---@param a number
---@return number
function Mat3f.Determinant(a) end

---@param output number
---@param a number
---@param b number
---@return number
function Mat3f.Multiply(output, a, b) end

---@param output number
---@param a number
---@param b number
---@return number
function Mat3f.Mul(output, a, b) end

---@param output number
---@param a number
---@param v number
---@return number
function Mat3f.Translate(output, a, v) end

---@param output number
---@param a number
---@param rad number
---@return number
function Mat3f.Rotate(output, a, rad) end

---@param output number
---@param a number
---@param v number
---@return number
function Mat3f.Scale(output, a, v) end

---@param output number
---@param a number
---@return number
function Mat3f.FromMat2d(output, a) end

---@param output number
---@param q number
---@return number
function Mat3f.FromQuat(output, q) end

---@param output number
---@param a number
---@return number
function Mat3f.NormalFromMat4(output, a) end

---@return userdata
function Mat3f.GetType() end

---@return string
function Mat3f.ToString() end

---@param obj userdata
---@return boolean
function Mat3f.Equals(obj) end

---@return number
function Mat3f.GetHashCode() end


