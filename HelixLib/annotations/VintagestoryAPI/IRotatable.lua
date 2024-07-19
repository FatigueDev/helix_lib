---@meta

-- Implement this interface if schematics containing this block entity needs to modify it's tree attribute data. Beware, this method is called without the block entity existing in the world (yet). The modified tree will then be used to actually create the block
---@class IRotatable
IRotatable = {}


-- If flipAxis is null it means it was not flipped, only horizontally rotated. Apply flip first, and then rotation.
---@param worldAccessor IWorldAccessor Important interface to access the game world.
---@param tree ITreeAttribute Represents a List of nestable Attributes
---@param degreeRotation number
---@param oldBlockIdMapping table
---@param oldItemIdMapping table
---@param flipAxis Nullable`1 Represents an axis in the cartesian coordinate system
function IRotatable.OnTransformed(worldAccessor, tree, degreeRotation, oldBlockIdMapping, oldItemIdMapping, flipAxis) end


