---@meta

---@class ArrayConvert
ArrayConvert = {}


---@param shorts number
---@return number
function ArrayConvert.UshortToByte(shorts) end

---@param shorts number
---@param output number
function ArrayConvert.UshortToByte(shorts, output) end

---@param ints number
---@return number
function ArrayConvert.IntToByte(ints) end

---@param ints number
---@param output number
function ArrayConvert.IntToByte(ints, output) end

---@param data number
---@return number
function ArrayConvert.ByteToInt(data) end

---@param data number
---@param output number
function ArrayConvert.ByteToInt(data, output) end

---@param data number
---@param output number
---@param length number
function ArrayConvert.ByteToInt(data, output, length) end

---@param data number
---@param offset number
---@param output number
---@param length number
function ArrayConvert.ByteToInt(data, offset, output, length) end

---@param data number
---@param output number
---@param count number
---@param newArray Func`1
function ArrayConvert.ByteToIntArrays(data, output, count, newArray) end

---@param data number
---@param output number
---@param length number
function ArrayConvert.ByteToUint(data, output, length) end

---@param data function
---@param index number
---@param length number
---@return T[]
function ArrayConvert.Copy(data, index, length) end

---@param bytes number
---@return Vec3f[] # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ArrayConvert.ToVec3fs(bytes) end

---@param bytes number
---@return Vec2f[] # Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ArrayConvert.ToVec2fs(bytes) end

---@param bytes number
---@return Vec4s[] # Represents a vector of 4 shorts. Go bug Tyron if you need more utility methods in this class.
function ArrayConvert.ToVec4Ss(bytes) end

---@param bytes number
---@return Vec4us[] # Represents a vector of 4 unsigned shorts. Go bug Tyron if you need more utility methods in this class.
function ArrayConvert.ToVec4uss(bytes) end

---@param shorts number
---@return number
function ArrayConvert.ToInts(shorts) end

---@param shorts1 function
---@return Vec4s[] # Represents a vector of 4 shorts. Go bug Tyron if you need more utility methods in this class.
function ArrayConvert.ToVec4ss(shorts1) end

---@param shorts1 function
---@return Vec4us[] # Represents a vector of 4 unsigned shorts. Go bug Tyron if you need more utility methods in this class.
function ArrayConvert.ToVec4uss(shorts1) end

---@param floats1 function
---@return Vec3f[] # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function ArrayConvert.ToVec3fs(floats1) end

---@param floats1 function
---@return Vec2f[] # Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function ArrayConvert.ToVec2fs(floats1) end

---@param bytes function
---@return number
function ArrayConvert.ToInts(bytes) end

---@param bytes function
---@return number
function ArrayConvert.BytesToULongs(bytes) end

---@param shorts1 function
---@return number
function ArrayConvert.FourShortsToULong(shorts1) end

---@param shorts1 function
---@return number
function ArrayConvert.FourShortsToLong(shorts1) end

---@param bytes function
---@return number
function ArrayConvert.ToFloats(bytes) end

---@param bytes function
---@return number
function ArrayConvert.ToUShorts(bytes) end

---@param bytes function
---@return number
function ArrayConvert.ToShorts(bytes) end

---@param value number
---@return number
function ArrayConvert.GetRoundedUpSize(value) end

---@return userdata
function ArrayConvert.GetType() end

---@return string
function ArrayConvert.ToString() end

---@param obj userdata
---@return boolean
function ArrayConvert.Equals(obj) end

---@return number
function ArrayConvert.GetHashCode() end


