---@meta

-- 4x4 Matrix Math
---@class Mat4d
Mat4d = {}

---@return Mat4d
function Mat4d.ctor() end

-- Creates a new identity mat4
-- 0 4 8  12
-- 1 5 9  13
-- 2 6 10 14
-- 3 7 11 15
---@return number
function Mat4d.Create() end

---@param output number
---@param input number
---@return number
function Mat4d.ToMat4f(output, input) end

-- Creates a new mat4 initialized with values from an existing matrix
---@param a number
---@return number
function Mat4d.CloneIt(a) end

-- Copy the values from one mat4 to another
---@param output number
---@param a number
---@return number
function Mat4d.Copy(output, a) end

-- Set a mat4 to the identity matrix
---@param output number
---@return number
function Mat4d.Identity(output) end

-- Transpose the values of a mat4
---@param output number
---@param a number
---@return number
function Mat4d.Transpose(output, a) end

-- Inverts a mat4
---@param output number
---@param a number
---@return number
function Mat4d.Invert(output, a) end

-- Calculates the adjugate of a mat4   
---@param output number
---@param a number
---@return number
function Mat4d.Adjoint(output, a) end

-- Calculates the determinant of a mat4
---@param a number
---@return number
function Mat4d.Determinant(a) end

-- Multiplies two mat4's
---@param output number
---@param a number
---@param b number
---@return number
function Mat4d.Multiply(output, a, b) end

-- Multiplies two mat4's
---@param output number
---@param a number
---@param b number
---@return number
function Mat4d.Multiply(output, a, b) end

-- mat4.multiply
---@param output number
---@param a number
---@param b number
---@return number
function Mat4d.Mul(output, a, b) end

-- mat4.multiply
---@param output number
---@param a number
---@param b number
---@return number
function Mat4d.Mul(output, a, b) end

-- If we have a translation-only matrix - one with no rotation or scaling - return true.
-- If the matrix includes some scaling or rotation components, return false.
-- The identity matrix returns true here because there is no scaling or rotation, even though the translation is zero in that special case.
---@param matrix number
---@return boolean
function Mat4d.IsTranslationOnly(matrix) end

-- Translate a mat4 by the given vector
---@param output number
---@param input number
---@param x number
---@param y number
---@param z number
---@return number
function Mat4d.Translate(output, input, x, y, z) end

-- Translate a mat4 by the given vector
---@param output number
---@param input number
---@param translate number
---@return number
function Mat4d.Translate(output, input, translate) end

-- Scales the mat4 by the dimensions in the given vec3
---@param output number
---@param a number
---@param v number
---@return number
function Mat4d.Scale(output, a, v) end

---@param matrix number
---@param x number
---@param y number
---@param z number
function Mat4d.Scale(matrix, x, y, z) end

-- Rotates a mat4 by the given angle
---@param output number
---@param a number
---@param rad number
---@param axis number
---@return number
function Mat4d.Rotate(output, a, rad, axis) end

-- Rotates a mat4 by the given angle
---@param output number
---@param a number
---@param rad number
---@param x number
---@param y number
---@param z number
---@return number
function Mat4d.Rotate(output, a, rad, x, y, z) end

-- Rotates a matrix by the given angle around the X axis
---@param output number
---@param a number
---@param rad number
---@return number
function Mat4d.RotateX(output, a, rad) end

-- Rotates a matrix by the given angle around the Y axis
---@param output number
---@param a number
---@param rad number
---@return number
function Mat4d.RotateY(output, a, rad) end

-- Rotates a matrix by the given angle around the Z axis
---@param output number
---@param a number
---@param rad number
---@return number
function Mat4d.RotateZ(output, a, rad) end

-- Creates a matrix from a quaternion rotation and vector translation
-- This is equivalent to (but much faster than):
--     mat4.identity(dest);
--     mat4.translate(dest, vec);
--     var quatMat = mat4.create();
--     quat4.toMat4(quat, quatMat);
--     mat4.multiply(dest, quatMat);
---@param output number
---@param q number
---@param v number
---@return number
function Mat4d.FromRotationTranslation(output, q, v) end

-- Calculates a 4x4 matrix from the given quaternion
---@param output number
---@param q number
---@return number
function Mat4d.FromQuat(output, q) end

-- Generates a frustum matrix with the given bounds
---@param output number
---@param left number
---@param right number
---@param bottom number
---@param top number
---@param near number
---@param far number
---@return number
function Mat4d.Frustum(output, left, right, bottom, top, near, far) end

-- Generates a perspective projection matrix with the given bounds
---@param output number
---@param fovy number
---@param aspect number
---@param near number
---@param far number
---@return number
function Mat4d.Perspective(output, fovy, aspect, near, far) end

-- Generates a orthogonal projection matrix with the given bounds
---@param output number
---@param left number
---@param right number
---@param bottom number
---@param top number
---@param near number
---@param far number
---@return number
function Mat4d.Ortho(output, left, right, bottom, top, near, far) end

-- Generates a look-at matrix with the given eye position, focal point, and up axis
---@param output number
---@param eye number
---@param center number
---@param up number
---@return number
function Mat4d.LookAt(output, eye, center, up) end

-- Multiply the matrix with a vec4. Reference: http://mathinsight.org/matrix_vector_multiplication
-- Returns a new vec4 vector
---@param matrix number
---@param vec4 number
---@return number
function Mat4d.MulWithVec4(matrix, vec4) end

-- Multiply the matrix with a vec4. Reference: http://mathinsight.org/matrix_vector_multiplication
---@param matrix number
---@param vec4 number
---@param outVal Vec4d
function Mat4d.MulWithVec4(matrix, vec4, outVal) end

-- Multiply the matrix with a vec4. Reference: http://mathinsight.org/matrix_vector_multiplication
---@param matrix number
---@param inVal Vec4d
---@param outVal Vec4d
function Mat4d.MulWithVec4(matrix, inVal, outVal) end

---@return userdata
function Mat4d.GetType() end

---@return string
function Mat4d.ToString() end

---@param obj userdata
---@return boolean
function Mat4d.Equals(obj) end

---@return number
function Mat4d.GetHashCode() end


