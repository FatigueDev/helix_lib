---@meta

---@class VAO: MeshRef, IDisposable, MeshRef
---@field Initialized boolean
---@field MultidrawByTextureId boolean
---@field Disposed boolean Am I disposed?
---@field VaoId number
---@field IndicesCount number
---@field drawMode PrimitiveType
---@field vaoSlotNumber number
---@field vboIdIndex number
---@field xyzVboId number
---@field normalsVboId number
---@field uvVboId number
---@field rgbaVboId number
---@field flagsVboId number
---@field customDataFloatVboId number
---@field customDataIntVboId number
---@field customDataShortVboId number
---@field customDataByteVboId number
---@field Persistent boolean
---@field xyzPtr IntPtr
---@field normalsPtr IntPtr
---@field uvPtr IntPtr
---@field rgbaPtr IntPtr
---@field flagsPtr IntPtr
---@field customDataFloatPtr IntPtr
---@field customDataIntPtr IntPtr
---@field customDataShortPtr IntPtr
---@field customDataBytePtr IntPtr
---@field indicesPtr IntPtr
VAO = {}

---@return VAO
function VAO.ctor() end

---@return boolean
function VAO.get_Initialized() end

function VAO.Dispose() end

---@return boolean
function VAO.get_MultidrawByTextureId() end

---@return boolean
function VAO.get_Disposed() end

---@return userdata
function VAO.GetType() end

---@return string
function VAO.ToString() end

---@param obj userdata
---@return boolean
function VAO.Equals(obj) end

---@return number
function VAO.GetHashCode() end


