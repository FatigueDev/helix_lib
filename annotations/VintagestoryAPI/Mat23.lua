---@meta

-- 2x3 Matrix * A mat2d contains six elements defined as: *  * [a, b, *  c, d, *  tx,ty] *  * This is a short form for the 3x3 matrix: *  * [a, b, 0 *  c, d, 0 *  tx,ty,1] *  * The last column is ignored so the array is shorter and operations are faster.
---@class Mat23
Mat23 = {}

---@return Mat23
function Mat23.ctor() end

-- Creates a new identity mat2d
-- Returns a new 2x3 matrix
---@return number
function Mat23.Create() end

-- Creates a new mat2d initialized with values from an existing matrix
-- Returns a new 2x3 matrix
---@param a number
---@return number
function Mat23.CloneIt(a) end

-- Copy the values from one mat2d to another
-- Returns output
---@param output number
---@param a number
---@return number
function Mat23.Copy(output, a) end

-- Set a mat2d to the identity matrix
-- Returns output
---@param output number
---@return number
function Mat23.Identity_(output) end

-- Inverts a mat2d
-- Returns output
---@param output number
---@param a number
---@return number
function Mat23.Invert(output, a) end

-- Calculates the determinant of a mat2d
-- Returns determinant of a
---@param a number
---@return number
function Mat23.Determinant(a) end

-- Multiplies two mat2d's
-- Returns output
---@param output number
---@param a number
---@param b number
---@return number
function Mat23.Multiply(output, a, b) end

-- Alias for {@link mat2d.multiply} @function
---@param output number
---@param a number
---@param b number
---@return number
function Mat23.Mul(output, a, b) end

-- Rotates a mat2d by the given angle
-- Returns output
---@param output number
---@param a number
---@param rad number
---@return number
function Mat23.Rotate(output, a, rad) end

-- Scales the mat2d by the dimensions in the given vec2
-- Returns output
---@param output number
---@param a number
---@param v number
---@return number
function Mat23.Scale(output, a, v) end

-- Translates the mat2d by the dimensions in the given vec2
-- Returns output
---@param output number
---@param a number
---@param v number
---@return number
function Mat23.Translate(output, a, v) end

---@return userdata
function Mat23.GetType() end

---@return string
function Mat23.ToString() end

---@param obj userdata
---@return boolean
function Mat23.Equals(obj) end

---@return number
function Mat23.GetHashCode() end


