---@meta

---@class IMeshCreator
---@field texSizeU number
---@field texSizeV number
IMeshCreator = {}


---@return number
function IMeshCreator.get_texSizeU() end

---@return number
function IMeshCreator.get_texSizeV() end

---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function IMeshCreator.CreateMesh() end

---@param mesh MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
function IMeshCreator.RegisterMesh(mesh) end


