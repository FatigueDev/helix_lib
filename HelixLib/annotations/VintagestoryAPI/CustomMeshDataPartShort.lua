---@meta

-- Holds arbitrary short data for meshes to be used in the shader
---@class CustomMeshDataPartShort: CustomMeshDataPart`1
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
CustomMeshDataPartShort = {}

---@return CustomMeshDataPartShort
function CustomMeshDataPartShort.ctor() end
---@param size number
---@return CustomMeshDataPartShort
function CustomMeshDataPartShort.ctor(size) end

-- Creates a clone of this collection of data parts.
---@return CustomMeshDataPartShort # Holds arbitrary short data for meshes to be used in the shader
function CustomMeshDataPartShort.Clone() end

---@return CustomMeshDataPartShort # Holds arbitrary short data for meshes to be used in the shader
function CustomMeshDataPartShort.EmptyClone() end

---@return number
function CustomMeshDataPartShort.get_BufferSize() end

---@return number
function CustomMeshDataPartShort.get_AllocationSize() end

-- Grows the buffer with a minimum.
---@param growAtLeastBy? number
function CustomMeshDataPartShort.GrowBuffer(growAtLeastBy) end

-- Adds a value to the buffer.
---@param value number
function CustomMeshDataPartShort.Add(value) end

-- Adds the same value to the buffer 4 times - coded for performance.
---@param value number
function CustomMeshDataPartShort.Add4(value) end

---@param values number
function CustomMeshDataPartShort.Add(values) end

-- Lets you define your a self defined size to be allocated on the graphics card.
-- If not called the allocation size will be the count of the Elements in the Array
---@param size number
function CustomMeshDataPartShort.SetAllocationSize(size) end

-- Use the element count as the allocation size (default behavior)
function CustomMeshDataPartShort.AutoAllocationSize() end

---@param meshdatapart CustomMeshDataPart`1 Holds arbitrary mesh data for meshes to be used in a shader
function CustomMeshDataPartShort.SetFrom(meshdatapart) end

---@return userdata
function CustomMeshDataPartShort.GetType() end

---@return string
function CustomMeshDataPartShort.ToString() end

---@param obj userdata
---@return boolean
function CustomMeshDataPartShort.Equals(obj) end

---@return number
function CustomMeshDataPartShort.GetHashCode() end


