---@meta

-- Used for blocks (e.g. crops and dead crops) where the y-position might need to be adjusted at the time of tesselating an individual block
---@class IDrawYAdjustable
IDrawYAdjustable = {}


---@param chunkExtBlocks Block[] Basic class for a placeable block
---@param extIndex3d number
---@return number
function IDrawYAdjustable.AdjustYPosition(chunkExtBlocks, extIndex3d) end


