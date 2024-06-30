---@meta

---@class MultiTextureMeshRef:  IDisposable
---@field Disposed boolean
---@field Initialized boolean
---@field meshrefs MeshRef[]
---@field textureids number
MultiTextureMeshRef = {}

---@param meshrefs MeshRef[] A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
---@param textureids number
---@return MultiTextureMeshRef
function MultiTextureMeshRef.ctor(meshrefs, textureids) end

---@return boolean
function MultiTextureMeshRef.get_Disposed() end

---@return boolean
function MultiTextureMeshRef.get_Initialized() end

function MultiTextureMeshRef.Dispose() end

---@return userdata
function MultiTextureMeshRef.GetType() end

---@return string
function MultiTextureMeshRef.ToString() end

---@param obj userdata
---@return boolean
function MultiTextureMeshRef.Equals(obj) end

---@return number
function MultiTextureMeshRef.GetHashCode() end


