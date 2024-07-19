---@meta

---@class TCTCache:  IGeometryTester
---@field blockFaceVertices FastVec3f[][]
---@field lx number
---@field ly number
---@field lz number
---@field posX number
---@field posY number
---@field posZ number
---@field dimension number
---@field extIndex3d number
---@field index3d number
---@field finalX number
---@field finalY number
---@field finalZ number
---@field xMin number
---@field xMax number
---@field yMin number
---@field yMax number
---@field zMin number
---@field zMax number
---@field drawFaceFlags number
---@field blockId number
---@field block Block
---@field shapes ShapeTesselatorManager
---@field preRotationMatrix number
---@field textureSubId number
---@field textureVOffset number
---@field subPosition number
---@field ColorMapData ColorMapData
---@field VertexFlags number
---@field RenderPass EnumChunkRenderPass
---@field occ number
---@field halfoccInverted number
---@field CurrentLightRGBByCorner number
---@field tct ChunkTesselator
---@field textureAtlasPositionsByTextureSubId TextureAtlasPosition[]
---@field fastBlockTextureSubidsByFace number
---@field aoAndSmoothShadows boolean
---@field rainHeightMap number
---@field DARK number
---@field chunkSize number
---@field extChunkSize number
---@field extMovey number
TCTCache = {}

---@param tct ChunkTesselator
---@return TCTCache
function TCTCache.ctor(tct) end

---@param side BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return BlockEntity # Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function TCTCache.GetCurrentBlockEntityOnSide(side) end

---@param neibOffset Vec3iAndFacingFlags
---@return BlockEntity # Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function TCTCache.GetCurrentBlockEntityOnSide(neibOffset) end

---@param x number
---@param y number
---@param z number
function TCTCache.UpdateChunkMinMax(x, y, z) end

---@return userdata
function TCTCache.GetType() end

---@return string
function TCTCache.ToString() end

---@param obj userdata
---@return boolean
function TCTCache.Equals(obj) end

---@return number
function TCTCache.GetHashCode() end


