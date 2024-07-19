---@meta

-- Holds arbitrary int data for meshes to be used in the shader
---@class CustomMeshDataPartInt: CustomMeshDataPart`1
---@field BufferSize number Size of the Values array
---@field AllocationSize number Size of the array that should be allocated on the graphics card.
---@field Conversion DataConversion
---@field Values number The arbitrary data to be uploaded to the graphics card
---@field Count number Amout of values currently added
---@field InterleaveSizes number Amount of variable components for variable (i.e. 2, 3 for a vec2 and a vec3), valid values are 1, 2, 3 and 4 (limited by glVertexAttribPointer)
---@field InterleaveStride number Stride - Size in bytes of all values for one vertex
---@field InterleaveOffsets number Offset in bytes for each variable 
---@field Instanced boolean For instanced rendering
---@field StaticDraw boolean Set to false if you intend to update the buffer very often (i.e. every frame)
---@field BaseOffset number Used as offset when doing a partial update on an existing buffer
CustomMeshDataPartInt = {}

---@return CustomMeshDataPartInt
function CustomMeshDataPartInt.ctor() end
---@param size number
---@return CustomMeshDataPartInt
function CustomMeshDataPartInt.ctor(size) end

-- Creates a clone of this collection of data parts.
---@return CustomMeshDataPartInt # Holds arbitrary int data for meshes to be used in the shader
function CustomMeshDataPartInt.Clone() end

---@return CustomMeshDataPartInt # Holds arbitrary int data for meshes to be used in the shader
function CustomMeshDataPartInt.EmptyClone() end

---@return number
function CustomMeshDataPartInt.get_BufferSize() end

---@return number
function CustomMeshDataPartInt.get_AllocationSize() end

-- Grows the buffer with a minimum.
---@param growAtLeastBy? number
function CustomMeshDataPartInt.GrowBuffer(growAtLeastBy) end

-- Adds a value to the buffer.
---@param value number
function CustomMeshDataPartInt.Add(value) end

-- Adds the same value to the buffer 4 times - coded for performance.
---@param value number
function CustomMeshDataPartInt.Add4(value) end

---@param values number
function CustomMeshDataPartInt.Add(values) end

-- Lets you define your a self defined size to be allocated on the graphics card.
-- If not called the allocation size will be the count of the Elements in the Array
---@param size number
function CustomMeshDataPartInt.SetAllocationSize(size) end

-- Use the element count as the allocation size (default behavior)
function CustomMeshDataPartInt.AutoAllocationSize() end

---@param meshdatapart CustomMeshDataPart`1 Holds arbitrary mesh data for meshes to be used in a shader
function CustomMeshDataPartInt.SetFrom(meshdatapart) end

---@return userdata
function CustomMeshDataPartInt.GetType() end

---@return string
function CustomMeshDataPartInt.ToString() end

---@param obj userdata
---@return boolean
function CustomMeshDataPartInt.Equals(obj) end

---@return number
function CustomMeshDataPartInt.GetHashCode() end


