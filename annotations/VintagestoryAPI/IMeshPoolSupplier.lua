---@meta

---@class IMeshPoolSupplier
IMeshPoolSupplier = {}


-- Gets a mesh pool supplier for the given render pass.
---@param textureid number
---@param forRenderPass EnumChunkRenderPass The various render passes available for rendering blocks
---@param lodLevel number
---@return MeshData # A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function IMeshPoolSupplier.GetMeshPoolForPass(textureid, forRenderPass, lodLevel) end


