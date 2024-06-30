---@meta

---@class GltfType
---@field BaseTextures TextureAtlasPosition[]
---@field PBRTextures TextureAtlasPosition[]
---@field NormalTextures TextureAtlasPosition[]
---@field Asset GltfAsset
---@field Animations GltfAnimation[]
---@field Scene number
---@field Scenes GltfScene[]
---@field Nodes GltfNode[]
---@field Materials GltfMaterial[]
---@field Meshes GltfMesh[]
---@field Textures GltfTextureElement[]
---@field Images GltfImage[]
---@field Accessors GltfAccessor[]
---@field BufferViews GltfBufferView[]
---@field Samplers GltfImageSampler[]
---@field Buffers GltfBuffer[]
GltfType = {}

---@return GltfType
function GltfType.ctor() end

---@return TextureAtlasPosition[] # The position of a texture inside an atlas
function GltfType.get_BaseTextures() end

---@param value TextureAtlasPosition[] The position of a texture inside an atlas
function GltfType.set_BaseTextures(value) end

---@return TextureAtlasPosition[] # The position of a texture inside an atlas
function GltfType.get_PBRTextures() end

---@param value TextureAtlasPosition[] The position of a texture inside an atlas
function GltfType.set_PBRTextures(value) end

---@return TextureAtlasPosition[] # The position of a texture inside an atlas
function GltfType.get_NormalTextures() end

---@param value TextureAtlasPosition[] The position of a texture inside an atlas
function GltfType.set_NormalTextures(value) end

---@return GltfAsset
function GltfType.get_Asset() end

---@param value GltfAsset
function GltfType.set_Asset(value) end

---@return GltfAnimation[]
function GltfType.get_Animations() end

---@param value GltfAnimation[]
function GltfType.set_Animations(value) end

---@return number
function GltfType.get_Scene() end

---@param value number
function GltfType.set_Scene(value) end

---@return GltfScene[]
function GltfType.get_Scenes() end

---@param value GltfScene[]
function GltfType.set_Scenes(value) end

---@return GltfNode[]
function GltfType.get_Nodes() end

---@param value GltfNode[]
function GltfType.set_Nodes(value) end

---@return GltfMaterial[]
function GltfType.get_Materials() end

---@param value GltfMaterial[]
function GltfType.set_Materials(value) end

---@return GltfMesh[]
function GltfType.get_Meshes() end

---@param value GltfMesh[]
function GltfType.set_Meshes(value) end

---@return GltfTextureElement[]
function GltfType.get_Textures() end

---@param value GltfTextureElement[]
function GltfType.set_Textures(value) end

---@return GltfImage[]
function GltfType.get_Images() end

---@param value GltfImage[]
function GltfType.set_Images(value) end

---@return GltfAccessor[]
function GltfType.get_Accessors() end

---@param value GltfAccessor[]
function GltfType.set_Accessors(value) end

---@return GltfBufferView[]
function GltfType.get_BufferViews() end

---@param value GltfBufferView[]
function GltfType.set_BufferViews(value) end

---@return GltfImageSampler[]
function GltfType.get_Samplers() end

---@param value GltfImageSampler[]
function GltfType.set_Samplers(value) end

---@return GltfBuffer[]
function GltfType.get_Buffers() end

---@param value GltfBuffer[]
function GltfType.set_Buffers(value) end

---@return userdata
function GltfType.GetType() end

---@return string
function GltfType.ToString() end

---@param obj userdata
---@return boolean
function GltfType.Equals(obj) end

---@return number
function GltfType.GetHashCode() end


