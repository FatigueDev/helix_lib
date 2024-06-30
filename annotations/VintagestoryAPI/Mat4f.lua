---@meta

-- 4x4 Matrix Math
---@class Mat4f
Mat4f = {}

---@return Mat4f
function Mat4f.ctor() end

-- Creates a new identity mat4
-- 0 4 8  12
-- 1 5 9  13
-- 2 6 10 14
-- 3 7 11 15
---@return number
function Mat4f.Create() end

-- Creates a new mat4 initialized with values from an existing matrix
---@param a number
---@return number
function Mat4f.CloneIt(a) end

-- Copy the values from one mat4 to another
---@param output number
---@param a number
---@return number
function Mat4f.Copy(output, a) end

-- Set a mat4 to the identity matrix
---@param output number
---@return number
function Mat4f.Identity(output) end

-- Set a mat4 to the identity matrix with a scale applied
---@param output number
---@param scale number
---@return number
function Mat4f.Identity_Scaled(output, scale) end

-- Transpose the values of a mat4
---@param output number
---@param a number
---@return number
function Mat4f.Transpose(output, a) end

-- Inverts a mat4
---@param output number
---@param a number
---@return number
function Mat4f.Invert(output, a) end

-- Calculates the adjugate of a mat4   
---@param output number
---@param a number
---@return number
function Mat4f.Adjoint(output, a) end

-- Calculates the determinant of a mat4
---@param a number
---@return number
function Mat4f.Determinant(a) end

-- Multiplies two mat4's
---@param output number
---@param a number
---@param b number
---@return number
function Mat4f.Multiply(output, a, b) end

-- mat4.multiply
---@param output number
---@param a number
---@param b number
---@return number
function Mat4f.Mul(output, a, b) end

-- Translate a mat4 by the given vector
---@param output number
---@param input number
---@param x number
---@param y number
---@param z number
---@return number
function Mat4f.Translate(output, input, x, y, z) end

-- Translate a mat4 by the given vector
---@param output number
---@param input number
---@param translate number
---@return number
function Mat4f.Translate(output, input, translate) end

-- Scales the mat4 by the dimensions in the given vec3
---@param output number
---@param a number
---@param v number
---@return number
function Mat4f.Scale(output, a, v) end

---@param matrix Span`1
---@param x number
---@param y number
---@param z number
function Mat4f.SimpleScaleMatrix(matrix, x, y, z) end

-- Scales the mat4 by the dimensions in the given vec3
---@param output number
---@param a number
---@param xScale number
---@param yScale number
---@param zScale number
---@return number
function Mat4f.Scale(output, a, xScale, yScale, zScale) end

-- Rotates a mat4 by the given angle
---@param output number
---@param a number
---@param rad number
---@param axis number
---@return number
function Mat4f.Rotate(output, a, rad, axis) end

-- Rotates a matrix by the given angle around the X axis
---@param output number
---@param a number
---@param rad number
---@return number
function Mat4f.RotateX(output, a, rad) end

-- Rotates a matrix by the given angle around the Y axis
---@param output number
---@param a number
---@param rad number
---@return number
function Mat4f.RotateY(output, a, rad) end

-- Rotates a matrix by the given angle around the Z axis
---@param output number
---@param a number
---@param rad number
---@return number
function Mat4f.RotateZ(output, a, rad) end

-- Provides a composite rotation matrix, equivalent to RotateX followed by RotateY followed by RotateZ
-- Here we work on a Span (which may be on the stack) for higher performance
---@param matrix Span`1
---@param radX number
---@param radY number
---@param radZ number
function Mat4f.RotateXYZ(matrix, radX, radY, radZ) end

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
function Mat4f.FromRotationTranslation(output, q, v) end

-- Calculates a 4x4 matrix from the given quaternion
---@param output number
---@param q number
---@return number
function Mat4f.FromQuat(output, q) end

-- Generates a frustum matrix with the given bounds
---@param output number
---@param left number
---@param right number
---@param bottom number
---@param top number
---@param near number
---@param far number
---@return number
function Mat4f.Frustum(output, left, right, bottom, top, near, far) end

-- Generates a perspective projection matrix with the given bounds
---@param output number
---@param fovy number
---@param aspect number
---@param near number
---@param far number
---@return number
function Mat4f.Perspective(output, fovy, aspect, near, far) end

-- Generates a orthogonal projection matrix with the given bounds
---@param output number
---@param left number
---@param right number
---@param bottom number
---@param top number
---@param near number
---@param far number
---@return number
function Mat4f.Ortho(output, left, right, bottom, top, near, far) end

-- Generates a look-at matrix with the given eye position, focal point, and up axis
---@param output number
---@param eye number
---@param center number
---@param up number
---@return number
function Mat4f.LookAt(output, eye, center, up) end

-- Multiply the matrix with a vec4. Reference: http://mathinsight.org/matrix_vector_multiplication
-- Returns a new vec4 vector
---@param matrix number
---@param vec4 number
---@return number
function Mat4f.MulWithVec4(matrix, vec4) end

---@param matrix number
---@param v1 number
---@param v2 number
---@param v3 number
---@param v4 number
---@return number
function Mat4f.MulWithVec4(matrix, v1, v2, v3, v4) end

---@param matrix number
---@param vec number
---@param output number
function Mat4f.MulWithVec4(matrix, vec, output) end

---@param matrix Span`1
---@param vec number
---@param output number
function Mat4f.MulWithVec4(matrix, vec, output) end

-- Used for vec3 representing a direction or normal - as a vec4 this would have the 4th element set to 0, so that applying a matrix transform with a translation would have *no* effect
---@param matrix number
---@param vec number
---@param output number
function Mat4f.MulWithVec3(matrix, vec, output) end

-- Used for vec3 representing a direction or normal - as a vec4 this would have the 4th element set to 0, so that applying a matrix transform with a translation would have *no* effect
---@param matrix Span`1
---@param vec number
---@param output number
function Mat4f.MulWithVec3(matrix, vec, output) end

-- Used for vec3 representing an x,y,z position - as a vec4 this would have the 4th element set to 1, so that applying a matrix transform with a translation would have an effect
-- The offset is used to index within the original and output arrays - e.g. in MeshData.xyz
---@param matrix number
---@param vec number
---@param output number
---@param offset number
function Mat4f.MulWithVec3_Position(matrix, vec, output, offset) end

---@param matrix Span`1
---@param vec number
---@param output number
---@param offset number
function Mat4f.MulWithVec3_Position(matrix, vec, output, offset) end

---@param matrix number
---@param vec number
---@param output number
---@param offset number
---@param scaleFactor number
function Mat4f.MulWithVec3_Position_AndScale(matrix, vec, output, offset, scaleFactor) end

---@param matrix number
---@param vec number
---@param output number
---@param offset number
---@param scaleFactor number
function Mat4f.MulWithVec3_Position_AndScaleXY(matrix, vec, output, offset, scaleFactor) end

-- Used for vec3 representing an x,y,z position - as a vec4 this would have the 4th element set to 1, so that applying a matrix transform with a translation would have an effect
-- The offset is used to index within the original and output arrays - e.g. in MeshData.xyz
-- The origin is the origin for the rotation
---@param matrix number
---@param vec number
---@param output number
---@param offset number
---@param origin Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Mat4f.MulWithVec3_Position_WithOrigin(matrix, vec, output, offset, origin) end

---@param matrix Span`1
---@param vec number
---@param output number
---@param offset number
---@param origin Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Mat4f.MulWithVec3_Position_WithOrigin(matrix, vec, output, offset, origin) end

-- Used for vec3 representing an x,y,z position - as a vec4 this would have the 4th element set to 1, so that applying a matrix transform with a translation would have an effect
---@param matrix number
---@param x number
---@param y number
---@param z number
---@param output Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Mat4f.MulWithVec3_Position(matrix, x, y, z, output) end

-- Used for Vec3f representing a direction or normal - as a vec4 this would have the 4th element set to 0, so that applying a matrix transform with a translation would have *no* effect
---@param matrix number
---@param vec Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param output Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Mat4f.MulWithVec3(matrix, vec, output) end

-- Used for x,y,z representing a direction or normal - as a vec4 this would have the 4th element set to 0, so that applying a matrix transform with a translation would have *no* effect
---@param matrix number
---@param x number
---@param y number
---@param z number
---@return FastVec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function Mat4f.MulWithVec3(matrix, x, y, z) end

---@param matrix number
---@param vec Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return BlockFacing # Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
function Mat4f.MulWithVec3_BlockFacing(matrix, vec) end

---@param matrix Span`1
---@param vec Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@return BlockFacing # Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
function Mat4f.MulWithVec3_BlockFacing(matrix, vec) end

---@param matrix number
---@param vec4 number
---@return number
function Mat4f.MulWithVec4(matrix, vec4) end

-- Multiply the matrix with a vec4. Reference: http://mathinsight.org/matrix_vector_multiplication
---@param matrix number
---@param vec4 number
---@param outVal Vec4f
function Mat4f.MulWithVec4(matrix, vec4, outVal) end

-- Multiply the matrix with a vec4. Reference: http://mathinsight.org/matrix_vector_multiplication
---@param matrix number
---@param inVal Vec4d
---@param outVal Vec4d
function Mat4f.MulWithVec4(matrix, inVal, outVal) end

-- Multiply the matrix with a vec4. Reference: http://mathinsight.org/matrix_vector_multiplication
---@param matrix number
---@param inVal Vec4f
---@param outVal Vec4f
function Mat4f.MulWithVec4(matrix, inVal, outVal) end

---@param m number
---@param thetaX number
---@param thetaY number
---@param thetaZ number
function Mat4f.ExtractEulerAngles(m, thetaX, thetaY, thetaZ) end

---@return userdata
function Mat4f.GetType() end

---@return string
function Mat4f.ToString() end

---@param obj userdata
---@return boolean
function Mat4f.Equals(obj) end

---@return number
function Mat4f.GetHashCode() end


