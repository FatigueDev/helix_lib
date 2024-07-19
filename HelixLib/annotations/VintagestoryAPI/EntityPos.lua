---@meta

-- Represents all positional information of an entity, such as coordinates, motion and angles
---@class EntityPos
---@field X number The X position of the Entity.
---@field Y number The Y position of the Entity.
---@field InternalY number
---@field Z number The Z position of the Entity.
---@field Roll number The rotation around the X axis, in radians.
---@field Yaw number The rotation around the Y axis, in radians.
---@field Pitch number The rotation around the Z axis, in radians.
---@field AsBlockPos BlockPos Returns the position as BlockPos object
---@field XYZInt Vec3i Returns the position as a Vec3i object
---@field XYZ Vec3d Returns the position as a Vec3d object
---@field XYZFloat Vec3f Returns the position as a Vec3f object
---@field HeadYaw number The yaw of the agents head
---@field HeadPitch number The pitch of the agents head
---@field Motion Vec3d
---@field Dimension number
EntityPos = {}

---@return EntityPos
function EntityPos.ctor() end
---@param x number
---@param y number
---@param z number
---@param heading? number
---@param pitch? number
---@param roll? number
---@return EntityPos
function EntityPos.ctor(x, y, z, heading, pitch, roll) end

---@return number
function EntityPos.get_X() end

---@param value number
function EntityPos.set_X(value) end

---@return number
function EntityPos.get_Y() end

---@param value number
function EntityPos.set_Y(value) end

---@return number
function EntityPos.get_InternalY() end

---@return number
function EntityPos.get_Z() end

---@param value number
function EntityPos.set_Z(value) end

---@return number
function EntityPos.get_Roll() end

---@param value number
function EntityPos.set_Roll(value) end

---@return number
function EntityPos.get_Yaw() end

---@param value number
function EntityPos.set_Yaw(value) end

---@return number
function EntityPos.get_Pitch() end

---@param value number
function EntityPos.set_Pitch(value) end

---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function EntityPos.get_AsBlockPos() end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function EntityPos.get_XYZInt() end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function EntityPos.get_XYZ() end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function EntityPos.get_XYZFloat() end

-- Sets this position to a Vec3d
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function EntityPos.SetPos(pos) end

---@param x number
---@param y number
---@param z number
---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function EntityPos.Add(x, y, z) end

-- Sets the entity position.
---@param x number
---@param y number
---@param z number
---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function EntityPos.SetPos(x, y, z) end

-- Sets the entity position.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function EntityPos.SetPos(pos) end

-- Sets the entity position.
---@param x number
---@param y number
---@param z number
---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function EntityPos.SetPos(x, y, z) end

-- Sets the entity position.
---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function EntityPos.SetPos(pos) end

-- Sets the entity angles.
---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function EntityPos.SetAngles(pos) end

-- Sets the entity position.
---@param roll number
---@param yaw number
---@param pitch number
---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function EntityPos.SetAngles(roll, yaw, pitch) end

-- Sets the Yaw of this entity.
---@param yaw number
---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function EntityPos.SetYaw(yaw) end

-- Returns true if the entity is within given distance of the other entity
---@param position EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@param squareDistance number
---@return boolean
function EntityPos.InRangeOf(position, squareDistance) end

-- Returns true if the entity is within given distance of given position
---@param x number
---@param y number
---@param z number
---@param squareDistance number
---@return boolean
function EntityPos.InRangeOf(x, y, z, squareDistance) end

-- Returns true if the entity is within given distance of given position
---@param x number
---@param z number
---@param squareDistance number
---@return boolean
function EntityPos.InHorizontalRangeOf(x, z, squareDistance) end

-- Returns true if the entity is within given distance of given position
---@param x number
---@param y number
---@param z number
---@param squareDistance number
---@return boolean
function EntityPos.InRangeOf(x, y, z, squareDistance) end

-- Returns true if the entity is within given distance of given block position
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param squareDistance number
---@return boolean
function EntityPos.InRangeOf(pos, squareDistance) end

-- Returns true if the entity is within given distance of given position
---@param pos Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param squareDistance number
---@return boolean
function EntityPos.InRangeOf(pos, squareDistance) end

-- Returns true if the entity is within given distance of given position
---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param horRangeSq number
---@param vertRange number
---@return boolean
function EntityPos.InRangeOf(position, horRangeSq, vertRange) end

-- Returns the squared distance of the entity to this position
---@param x number
---@param y number
---@param z number
---@return number
function EntityPos.SquareDistanceTo(x, y, z) end

-- Returns the squared distance of the entity to this position
---@param x number
---@param y number
---@param z number
---@return number
function EntityPos.SquareDistanceTo(x, y, z) end

-- Returns the squared distance of the entity to this position
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return number
function EntityPos.SquareDistanceTo(pos) end

-- Returns the horizontal squared distance of the entity to this position
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return number
function EntityPos.SquareHorDistanceTo(pos) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return number
function EntityPos.DistanceTo(pos) end

---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@return number
function EntityPos.DistanceTo(pos) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return number
function EntityPos.HorDistanceTo(pos) end

---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@return number
function EntityPos.HorDistanceTo(pos) end

-- Returns the squared distance of the entity to this position
---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@return number
function EntityPos.SquareDistanceTo(pos) end

-- Creates a full copy
---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function EntityPos.Copy() end

-- Same as AheadCopy(1) - AheadCopy(0)
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function EntityPos.GetViewVector() end

-- Same as AheadCopy(1) - AheadCopy(0)
---@param pitch number
---@param yaw number
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function EntityPos.GetViewVector(pitch, yaw) end

-- Returns a new entity position that is in front of the position the entity is currently looking at
---@param offset number
---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function EntityPos.AheadCopy(offset) end

-- Returns a new entity position that is in front of the position the entity is currently looking at using only the entities yaw, meaning the resulting coordinate will be always at the same y position.
---@param offset number
---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function EntityPos.HorizontalAheadCopy(offset) end

-- Returns a new entity position that is behind of the position the entity is currently looking at
---@param offset number
---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function EntityPos.BehindCopy(offset) end

-- Makes a "basiclly equals" check on the position, motions and angles using a small tolerance of epsilon=0.0001f 
---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@param epsilon? number
---@return boolean
function EntityPos.BasicallySameAs(pos, epsilon) end

-- Makes a "basiclly equals" check on the position, motions and angles using a small tolerance of epsilon=0.0001f. Ignores motion
---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@param epsilon? number
---@return boolean
function EntityPos.BasicallySameAsIgnoreMotion(pos, epsilon) end

-- Makes a "basiclly equals" check on position and motions using a small tolerance of epsilon=0.0001f. Ignores the entities angles.
---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@param epsilon? number
---@return boolean
function EntityPos.BasicallySameAsIgnoreAngles(pos, epsilon) end

-- Loads the position and angles from given entity position.
---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
function EntityPos.SetFrom(pos) end

-- Loads the position from given position.
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function EntityPos.SetFrom(pos) end

---@return string
function EntityPos.ToString() end

---@return string
function EntityPos.OnlyPosToString() end

---@return string
function EntityPos.OnlyAnglesToString() end

-- Serializes all positional information. Does not write HeadYaw and HeadPitch.
---@param writer BinaryWriter
function EntityPos.ToBytes(writer) end

-- Deserializes all positional information. Does not read HeadYaw and HeadPitch
---@param reader BinaryReader
function EntityPos.FromBytes(reader) end

---@return userdata
function EntityPos.GetType() end

---@param obj userdata
---@return boolean
function EntityPos.Equals(obj) end

---@return number
function EntityPos.GetHashCode() end


