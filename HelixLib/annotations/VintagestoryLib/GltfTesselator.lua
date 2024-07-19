---@meta

---@class GltfTesselator
GltfTesselator = {}

---@return GltfTesselator
function GltfTesselator.ctor() end

---@param asset GltfType
---@param mesh MeshData&
---@param pos TextureAtlasPosition The position of a texture inside an atlas
---@param generalGlowLevel number
---@param climateColorMapIndex number
---@param seasonColorMapIndex number
---@param renderPass number
---@param bakedTextures number
function GltfTesselator.Load(asset, mesh, pos, generalGlowLevel, climateColorMapIndex, seasonColorMapIndex, renderPass, bakedTextures) end

---@param gltf GltfType
---@param pos TextureAtlasPosition The position of a texture inside an atlas
---@param generalGlowLevel number
---@param climateColorMapIndex number
---@param seasonColorMapIndex number
---@param renderPass number
---@param bakedTextures number
function GltfTesselator.ParseGltf(gltf, pos, generalGlowLevel, climateColorMapIndex, seasonColorMapIndex, renderPass, bakedTextures) end

---@param node GltfNode
---@param pos TextureAtlasPosition The position of a texture inside an atlas
---@param climateColorMapIndex number
---@param seasonColorMapIndex number
---@param renderPass number
---@param colorFactor number
---@param pbrFactor number
function GltfTesselator.BuildMeshDataPart(node, pos, climateColorMapIndex, seasonColorMapIndex, renderPass, colorFactor, pbrFactor) end

---@return userdata
function GltfTesselator.GetType() end

---@return string
function GltfTesselator.ToString() end

---@param obj userdata
---@return boolean
function GltfTesselator.Equals(obj) end

---@return number
function GltfTesselator.GetHashCode() end


