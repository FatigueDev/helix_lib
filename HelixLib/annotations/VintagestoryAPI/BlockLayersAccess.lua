---@meta

-- Constants used for GetBlock or GetBlockId calls throughout the engine, to guide whether the block should be read from the solid blocks layer, the fluids layer, or perhaps both. The game engine supports different block layers in 1.17+.  Currently there is a solid blocks layer (e.g. terrain, loose stones, plants, reeds) and a fluid layer (e.g. still water, flowing water, lava, lake ice). Both layers can contain a block at the same position. Use the .Default value for getting blocks in the general case, use the .Solid/.Fluid value to read from the solid blocks or fluid layer specifically
---@class BlockLayersAccess
---@field Default number GetBlock: Returns the contents of the solid blocks layer. If the solid blocks layer is completely empty, returns the value from the fluid layer instead. Keep in mind, the fluid layer might contain ice! If this returns air (block id 0) then it really is an air block: there is nothing in either the solid blocks layer or the fluid layer SetBlock: Sets supplied block id. If that blocks property ForFluidsLayer is true, it will be placed in the fluids layer instead and the solid block layer will be cleared.
---@field SolidBlocks number Returns a block from the solid blocks layer only.  A return value of air (block id 0) signifies no solid block is present but there may still be a fluid block, for example still water
---@field Solid number Returns a block from the solid blocks layer only. Same as SolidBlocks
---@field Fluid number Returns a block from the fluid layer only, which might contain ice. A return value of air (block id 0) signifies no fluid is present at this position
---@field FluidOrSolid number Returns the contents of the fluid layer, unless it is empty in which case returns the solid blocks layer - useful for generating the RainHeightMap for example
---@field MostSolid number Returns the most solid block, in the following order:  1. Ice in the fluid layer 2. Whichever block is in the solid blocks layer 3. Air (block id 0) if neither is present - note this access may therefore return 0 even if liquid water or lava is present in the fluid layer. Useful for block collision checks, side solid checks (can a block attach here?) and similar physics
BlockLayersAccess = {}

---@return BlockLayersAccess
function BlockLayersAccess.ctor() end

---@return userdata
function BlockLayersAccess.GetType() end

---@return string
function BlockLayersAccess.ToString() end

---@param obj userdata
---@return boolean
function BlockLayersAccess.Equals(obj) end

---@return number
function BlockLayersAccess.GetHashCode() end


