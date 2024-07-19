---@meta

-- Don't use this class unless you need it to interoperate with Mat4d
---@class Vec3Utilsf
Vec3Utilsf = {}

---@return Vec3Utilsf
function Vec3Utilsf.ctor() end

---@return number
function Vec3Utilsf.Create() end

-- Creates a new vec3 initialized with values from an existing vector. Returns {vec3} a new 3D vector
---@param a number
---@return number
function Vec3Utilsf.CloneIt(a) end

-- Creates a new vec3 initialized with the given values. Returns {vec3} a new 3D vector
---@param x number
---@param y number
---@param z number
---@return number
function Vec3Utilsf.FromValues(x, y, z) end

-- Copy the values from one vec3 to another. Returns {vec3} out
---@param output number
---@param a number
---@return number
function Vec3Utilsf.Copy(output, a) end

-- Set the components of a vec3 to the given values
---@param output number
---@param x number
---@param y number
---@param z number
---@return number
function Vec3Utilsf.Set(output, x, y, z) end

-- Adds two vec3's
---@param output number
---@param a number
---@param b number
---@return number
function Vec3Utilsf.Add(output, a, b) end

-- Subtracts vector b from vector a
---@param output number
---@param a number
---@param b number
---@return number
function Vec3Utilsf.Substract(output, a, b) end

-- Multiplies two vec3's
---@param output number
---@param a number
---@param b number
---@return number
function Vec3Utilsf.Multiply(output, a, b) end

-- Alias of Mul()
---@param output number
---@param a number
---@param b number
---@return number
function Vec3Utilsf.Mul(output, a, b) end

-- Divides two vec3's
---@param output number
---@param a number
---@param b number
---@return number
function Vec3Utilsf.Divide(output, a, b) end

-- Returns the minimum of two vec3's
---@param output number
---@param a number
---@param b number
---@return number
function Vec3Utilsf.Min(output, a, b) end

-- Returns the maximum of two vec3's
---@param output number
---@param a number
---@param b number
---@return number
function Vec3Utilsf.Max(output, a, b) end

-- Scales a vec3 by a scalar number
---@param output number
---@param a number
---@param b number
---@return number
function Vec3Utilsf.Scale(output, a, b) end

-- Adds two vec3's after scaling the second operand by a scalar value
---@param output number
---@param a number
---@param b number
---@param scale number
---@return number
function Vec3Utilsf.ScaleAndAdd(output, a, b, scale) end

-- Calculates the euclidian distance between two vec3's. Returns {Number} distance between a and b
---@param a number
---@param b number
---@return number
function Vec3Utilsf.Distance(a, b) end

-- Calculates the squared euclidian distance between two vec3's. Returns {Number} squared distance between a and b
---@param a number
---@param b number
---@return number
function Vec3Utilsf.SquaredDistance(a, b) end

-- Calculates the length of a vec3
---@param a number
---@return number
function Vec3Utilsf.Length_(a) end

-- Calculates the squared length of a vec3. Returns {Number} squared length of a
---@param a number
---@return number
function Vec3Utilsf.SquaredLength(a) end

-- Negates the components of a vec3
---@param output number
---@param a number
---@return number
function Vec3Utilsf.Negate(output, a) end

-- Normalize a vec3
---@param output number
---@param a number
---@return number
function Vec3Utilsf.Normalize(output, a) end

-- Calculates the dot product of two vec3's. Returns {Number} dot product of a and b
---@param a number
---@param b number
---@return number
function Vec3Utilsf.Dot(a, b) end

-- Computes the cross product of two vec3's. Returns {vec3} out
---@param output number
---@param a number
---@param b number
---@return number
function Vec3Utilsf.Cross(output, a, b) end

-- Performs a linear interpolation between two vec3's
---@param output number
---@param a number
---@param b number
---@param t number
---@return number
function Vec3Utilsf.Lerp(output, a, b, t) end

-- Transforms the vec3 with a mat4. 4th vector component is implicitly '1'. Returns {vec3} out
---@param output number
---@param a number
---@param m number
---@return number
function Vec3Utilsf.TransformMat4(output, a, m) end

-- Transforms the vec3 with a mat3. Returns {vec3} out
---@param output number
---@param a number
---@param m number
---@return number
function Vec3Utilsf.TransformMat3(output, a, m) end

-- Transforms the vec3 with a quat
---@param output number
---@param a number
---@param q number
---@return number
function Vec3Utilsf.TransformQuat(output, a, q) end

---@return userdata
function Vec3Utilsf.GetType() end

---@return string
function Vec3Utilsf.ToString() end

---@param obj userdata
---@return boolean
function Vec3Utilsf.Equals(obj) end

---@return number
function Vec3Utilsf.GetHashCode() end


