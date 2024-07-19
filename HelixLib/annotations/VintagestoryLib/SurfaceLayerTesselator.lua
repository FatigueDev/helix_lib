---@meta

---@class SurfaceLayerTesselator:  IBlockTesselator
SurfaceLayerTesselator = {}

---@return SurfaceLayerTesselator
function SurfaceLayerTesselator.ctor() end

---@param vars TCTCache
function SurfaceLayerTesselator.Tesselate(vars) end

---@param vars TCTCache
---@param tileSide number
---@param quadOffsets FastVec3f[] Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param texPos TextureAtlasPosition The position of a texture inside an atlas
---@param flags number
---@param colorMapDataValue number
---@param meshPools MeshData[] A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param blockHeight? number
---@param rotIndex? number
function SurfaceLayerTesselator.DrawBlockFace(vars, tileSide, quadOffsets, texPos, flags, colorMapDataValue, meshPools, blockHeight, rotIndex) end

---@return userdata
function SurfaceLayerTesselator.GetType() end

---@return string
function SurfaceLayerTesselator.ToString() end

---@param obj userdata
---@return boolean
function SurfaceLayerTesselator.Equals(obj) end

---@return number
function SurfaceLayerTesselator.GetHashCode() end


