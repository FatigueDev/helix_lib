---@meta

-- Contains all the information for a players block selection event
---@class BlockSelection
---@field FullPosition Vec3d
---@field Position BlockPos The position the player wants to place/break something at
---@field Face BlockFacing The face the player aimed at
---@field HitPosition Vec3d The coordinate of the exact aimed position, relative to the Block Position
---@field SelectionBoxIndex number Which selection box was aimed at. The index corresponds to the array returned by Block.GetSelectionBoxes()
---@field DidOffset boolean Always false during block use. True during placement if the Position value was offseted. Example: - When trying to place planks while aiming at rock, the Position is the one in front of the Rock and DidOffset is True - When trying to place planks while aiming at tallgrass, the Position is where the tall grass is and DidOffset is false (because tallgrass is replacable)
---@field Block Block The block actually being looked at!
BlockSelection = {}

---@return BlockSelection
function BlockSelection.ctor() end
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param face BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param block Block Basic class for a placeable block
---@return BlockSelection
function BlockSelection.ctor(pos, face, block) end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function BlockSelection.get_FullPosition() end

-- Creates a deep copy 
---@return BlockSelection # Contains all the information for a players block selection event
function BlockSelection.Clone() end

-- Returns a subposition index for use addressing decor subpositions on a block
---@return number
function BlockSelection.ToDecorIndex() end

-- Turn face and local voxel position to a decor index
---@param face BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param vx number
---@param vy number
---@param vz number
---@return number
function BlockSelection.GetDecorIndex(face, vx, vy, vz) end

-- Turn face to a decor index
---@param face BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return number
function BlockSelection.GetDecorIndex(face) end

---@return userdata
function BlockSelection.GetType() end

---@return string
function BlockSelection.ToString() end

---@param obj userdata
---@return boolean
function BlockSelection.Equals(obj) end

---@return number
function BlockSelection.GetHashCode() end


