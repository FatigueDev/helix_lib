---@meta

-- Used for blocks (e.g. chiselled blocks) where the basic block geometry: AO shading, side opaque etc - depends on the individual block or blockEntity
---@class IGeometryTester
IGeometryTester = {}


---@param side BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return BlockEntity # Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function IGeometryTester.GetCurrentBlockEntityOnSide(side) end

---@param vec Vec3iAndFacingFlags
---@return BlockEntity # Basic class for block entities - a data structures to hold custom information for blocks, e.g. for chests to hold it's contents
function IGeometryTester.GetCurrentBlockEntityOnSide(vec) end


