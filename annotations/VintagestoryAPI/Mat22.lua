---@meta

-- 2x2 Matrix
---@class Mat22
Mat22 = {}

---@return Mat22
function Mat22.ctor() end

-- Creates a new identity mat2
-- Returns a new 2x2 matrix
---@return number
function Mat22.Create() end

-- Creates a new mat2 initialized with values from an existing matrix
-- Returns a new 2x2 matrix
---@param a number
---@return number
function Mat22.CloneIt(a) end

-- Copy the values from one mat2 to another
-- Returns output
---@param output number
---@param a number
---@return number
function Mat22.Copy(output, a) end

-- Set a mat2 to the identity matrix
-- Returns output
---@param output number
---@return number
function Mat22.Identity_(output) end

-- Transpose the values of a mat2
-- Returns output
---@param output number
---@param a number
---@return number
function Mat22.Transpose(output, a) end

-- Inverts a mat2
-- Returns output
---@param output number
---@param a number
---@return number
function Mat22.Invert(output, a) end

-- Calculates the adjugate of a mat2
-- Returns output
---@param output number
---@param a number
---@return number
function Mat22.Adjoint(output, a) end

-- Calculates the determinant of a mat2
-- Returns determinant of a
---@param a number
---@return number
function Mat22.Determinant(a) end

-- Multiplies two mat2's
-- Returns output
---@param output number
---@param a number
---@param b number
---@return number
function Mat22.Multiply(output, a, b) end

-- Alias for {@link mat2.multiply}
---@param output number
---@param a number
---@param b number
---@return number
function Mat22.Mul(output, a, b) end

-- Rotates a mat2 by the given angle
-- Returns output
---@param output number
---@param a number
---@param rad number
---@return number
function Mat22.Rotate(output, a, rad) end

-- Scales the mat2 by the dimensions in the given vec2
-- Returns output
---@param output number
---@param a number
---@param v number
---@return number
function Mat22.Scale(output, a, v) end

---@return userdata
function Mat22.GetType() end

---@return string
function Mat22.ToString() end

---@param obj userdata
---@return boolean
function Mat22.Equals(obj) end

---@return number
function Mat22.GetHashCode() end


