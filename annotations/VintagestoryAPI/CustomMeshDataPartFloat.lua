---@meta

-- Holds arbitrary float data for meshes to be used in the shader
---@class CustomMeshDataPartFloat: CustomMeshDataPart`1
---@field BufferSize number Size of the Values array
---@field AllocationSize number Size of the array that should be allocated on the graphics card.
---@field Values number The arbitrary data to be uploaded to the graphics card
---@field Count number Amout of values currently added
---@field InterleaveSizes number Amount of variable components for variable (i.e. 2, 3 for a vec2 and a vec3), valid values are 1, 2, 3 and 4 (limited by glVertexAttribPointer)
---@field InterleaveStride number Stride - Size in bytes of all values for one vertex
---@field InterleaveOffsets number Offset in bytes for each variable 
---@field Instanced boolean For instanced rendering
---@field StaticDraw boolean Set to false if you intend to update the buffer very often (i.e. every frame)
---@field BaseOffset number Used as offset when doing a partial update on an existing buffer
CustomMeshDataPartFloat = {}

---@return CustomMeshDataPartFloat
function CustomMeshDataPartFloat.ctor() end
---@param arraySize number
---@return CustomMeshDataPartFloat
function CustomMeshDataPartFloat.ctor(arraySize) end

-- Creates a clone of this collection of data parts.
---@return CustomMeshDataPartFloat # Holds arbitrary float data for meshes to be used in the shader
function CustomMeshDataPartFloat.Clone() end

---@return CustomMeshDataPartFloat # Holds arbitrary float data for meshes to be used in the shader
function CustomMeshDataPartFloat.EmptyClone() end

---@return number
function CustomMeshDataPartFloat.get_BufferSize() end

---@return number
function CustomMeshDataPartFloat.get_AllocationSize() end

-- Grows the buffer with a minimum.
---@param growAtLeastBy? number
function CustomMeshDataPartFloat.GrowBuffer(growAtLeastBy) end

-- Adds a value to the buffer.
---@param value number
function CustomMeshDataPartFloat.Add(value) end

-- Adds the same value to the buffer 4 times - coded for performance.
---@param value number
function CustomMeshDataPartFloat.Add4(value) end

---@param values number
function CustomMeshDataPartFloat.Add(values) end

-- Lets you define your a self defined size to be allocated on the graphics card.
-- If not called the allocation size will be the count of the Elements in the Array
---@param size number
function CustomMeshDataPartFloat.SetAllocationSize(size) end

-- Use the element count as the allocation size (default behavior)
function CustomMeshDataPartFloat.AutoAllocationSize() end

---@param meshdatapart CustomMeshDataPart`1 Holds arbitrary mesh data for meshes to be used in a shader
function CustomMeshDataPartFloat.SetFrom(meshdatapart) end

---@return userdata
function CustomMeshDataPartFloat.GetType() end

---@return string
function CustomMeshDataPartFloat.ToString() end

---@param obj userdata
---@return boolean
function CustomMeshDataPartFloat.Equals(obj) end

---@return number
function CustomMeshDataPartFloat.GetHashCode() end


