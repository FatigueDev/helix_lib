---@meta

-- A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
---@class MeshRef:  IDisposable
---@field MultidrawByTextureId boolean
---@field Initialized boolean
---@field Disposed boolean Am I disposed?
MeshRef = {}


---@return boolean
function MeshRef.get_MultidrawByTextureId() end

---@return boolean
function MeshRef.get_Initialized() end

---@return boolean
function MeshRef.get_Disposed() end

-- Frees up any gpu allocated memory. Equivalent to calling api.Render.DeleteMesh()
function MeshRef.Dispose() end

---@return userdata
function MeshRef.GetType() end

---@return string
function MeshRef.ToString() end

---@param obj userdata
---@return boolean
function MeshRef.Equals(obj) end

---@return number
function MeshRef.GetHashCode() end


