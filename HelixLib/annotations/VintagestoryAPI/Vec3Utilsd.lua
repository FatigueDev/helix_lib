---@meta

-- Don't use this class unless you need it to interoperate with Mat4d
---@class Vec3Utilsd
Vec3Utilsd = {}

---@return Vec3Utilsd
function Vec3Utilsd.ctor() end

---@return number
function Vec3Utilsd.Create() end

-- Creates a new vec3 initialized with values from an existing vector. Returns {vec3} a new 3D vector
---@param a number
---@return number
function Vec3Utilsd.CloneIt(a) end

-- Creates a new vec3 initialized with the given values. Returns {vec3} a new 3D vector
---@param x number
---@param y number
---@param z number
---@return number
function Vec3Utilsd.FromValues(x, y, z) end

-- Copy the values from one vec3 to another. Returns {vec3} out
---@param output number
---@param a number
---@return number
function Vec3Utilsd.Copy(output, a) end

-- Set the components of a vec3 to the given values. Returns {vec3} out
---@param output number
---@param x number
---@param y number
---@param z number
---@return number
function Vec3Utilsd.Set(output, x, y, z) end

-- Adds two vec3's. returns {vec3} out
---@param output number
---@param a number
---@param b number
---@return number
function Vec3Utilsd.Add(output, a, b) end

-- Subtracts vector b from vector a. Returns {vec3} out
---@param output number
---@param a number
---@param b number
---@return number
function Vec3Utilsd.Substract(output, a, b) end

-- Multiplies two vec3's
---@param output number
---@param a number
---@param b number
---@return number
function Vec3Utilsd.Multiply(output, a, b) end

-- Divides two vec3's
---@param output number
---@param a number
---@param b number
---@return number
function Vec3Utilsd.Divide(output, a, b) end

-- Returns the minimum of two vec3's
---@param output number
---@param a number
---@param b number
---@return number
function Vec3Utilsd.Min(output, a, b) end

-- Returns the maximum of two vec3's
---@param output number
---@param a number
---@param b number
---@return number
function Vec3Utilsd.Max(output, a, b) end

-- Scales a vec3 by a scalar number
---@param output number
---@param a number
---@param b number
---@return number
function Vec3Utilsd.Scale(output, a, b) end

-- Adds two vec3's after scaling the second operand by a scalar value
---@param output number
---@param a number
---@param b number
---@param scale number
---@return number
function Vec3Utilsd.ScaleAndAdd(output, a, b, scale) end

-- Calculates the euclidian distance between two vec3's. Returns {Number} distance between a and b
---@param a number
---@param b number
---@return number
function Vec3Utilsd.Distance(a, b) end

-- Calculates the squared euclidian distance between two vec3's. Returns {Number} squared distance between a and b
---@param a number
---@param b number
---@return number
function Vec3Utilsd.SquaredDistance(a, b) end

-- Calculates the length of a vec3
---@param a number
---@return number
function Vec3Utilsd.Length_(a) end

-- Calculates the squared length of a vec3. Returns {Number} squared length of a
---@param a number
---@return number
function Vec3Utilsd.SquaredLength(a) end

-- SquaredLength()
---@param a number
---@return number
function Vec3Utilsd.SqrLen(a) end

-- Negates the components of a vec3
---@param output number
---@param a number
---@return number
function Vec3Utilsd.Negate(output, a) end

-- Normalize a vec3
---@param output number
---@param a number
---@return number
function Vec3Utilsd.Normalize(output, a) end

-- Calculates the dot product of two vec3's. Returns {Number} dot product of a and b
---@param a number
---@param b number
---@return number
function Vec3Utilsd.Dot(a, b) end

-- Computes the cross product of two vec3's
---@param output number
---@param a number
---@param b number
---@return number
function Vec3Utilsd.Cross(output, a, b) end

-- Performs a linear interpolation between two vec3's
---@param output number
---@param a number
---@param b number
---@param t number
---@return number
function Vec3Utilsd.Lerp(output, a, b, t) end

-- Transforms the vec3 with a mat4. 4th vector component is implicitly '1'
---@param output number
---@param a number
---@param m number
---@return number
function Vec3Utilsd.TransformMat4(output, a, m) end

-- Transforms the vec3 with a mat3.
---@param output number
---@param a number
---@param m number
---@return number
function Vec3Utilsd.TransformMat3(output, a, m) end

-- Transforms the vec3 with a quat
---@param output number
---@param a number
---@param q number
---@return number
function Vec3Utilsd.TransformQuat(output, a, q) end

---@return userdata
function Vec3Utilsd.GetType() end

---@return string
function Vec3Utilsd.ToString() end

---@param obj userdata
---@return boolean
function Vec3Utilsd.Equals(obj) end

---@return number
function Vec3Utilsd.GetHashCode() end


