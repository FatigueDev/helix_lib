---@meta

---@class CubeTesselator:  IBlockTesselator
CubeTesselator = {}

---@param blockHeight number
---@return CubeTesselator
function CubeTesselator.ctor(blockHeight) end

---@param vars TCTCache
function CubeTesselator.Tesselate(vars) end

---@param vars TCTCache
---@param tileSide number
---@param quadOffsets FastVec3f[] Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param texPos TextureAtlasPosition The position of a texture inside an atlas
---@param flags number
---@param colorMapDataValue number
---@param meshPools MeshData[] A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@param blockHeight? number
function CubeTesselator.DrawBlockFace(vars, tileSide, quadOffsets, texPos, flags, colorMapDataValue, meshPools, blockHeight) end

---@return userdata
function CubeTesselator.GetType() end

---@return string
function CubeTesselator.ToString() end

---@param obj userdata
---@return boolean
function CubeTesselator.Equals(obj) end

---@return number
function CubeTesselator.GetHashCode() end


