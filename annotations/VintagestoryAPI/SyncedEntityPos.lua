---@meta

-- Represents an EntityPos thats synced over the network using a dirty flag and regular is-dirty checks
---@class SyncedEntityPos: EntityPos, EntityPos
---@field X number
---@field Y number
---@field Z number
---@field Roll number
---@field Yaw number
---@field Pitch number
---@field XInternal number Internally sets the value of X.  This may cause desync.
---@field YInternal number Internally sets the value of Y.  This may cause desync.
---@field ZInternal number Internally sets the value of Z.  This may cause desync.
---@field RollInternal number Sets the roll of the Entity Position.  This may cause desync.
---@field YawInternal number Sets the yaw of the Entity Position.  This may cause desync.
---@field PitchInternal number Sets the pitch of the Entity Position.  This may cause desync.
---@field StanceInternal number Sets the stance of the Entity Position.  This may cause desync.
---@field Dirty boolean Marks the position as dirty- requiring a refresh from the server.
---@field InternalY number
---@field AsBlockPos BlockPos Returns the position as BlockPos object
---@field XYZInt Vec3i Returns the position as a Vec3i object
---@field XYZ Vec3d Returns the position as a Vec3d object
---@field XYZFloat Vec3f Returns the position as a Vec3f object
---@field LastReceivedClientPosition number
---@field HeadYaw number The yaw of the agents head
---@field HeadPitch number The pitch of the agents head
---@field Motion Vec3d
---@field Dimension number
SyncedEntityPos = {}

---@return SyncedEntityPos
function SyncedEntityPos.ctor() end
---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return SyncedEntityPos
function SyncedEntityPos.ctor(position) end
---@param x number
---@param y number
---@param z number
---@param heading? number
---@param pitch? number
---@return SyncedEntityPos
function SyncedEntityPos.ctor(x, y, z, heading, pitch) end

---@return number
function SyncedEntityPos.get_X() end

---@param value number
function SyncedEntityPos.set_X(value) end

---@return number
function SyncedEntityPos.get_Y() end

---@param value number
function SyncedEntityPos.set_Y(value) end

---@return number
function SyncedEntityPos.get_Z() end

---@param value number
function SyncedEntityPos.set_Z(value) end

---@return number
function SyncedEntityPos.get_Roll() end

---@param value number
function SyncedEntityPos.set_Roll(value) end

---@return number
function SyncedEntityPos.get_Yaw() end

---@param value number
function SyncedEntityPos.set_Yaw(value) end

---@return number
function SyncedEntityPos.get_Pitch() end

---@param value number
function SyncedEntityPos.set_Pitch(value) end

---@param value number
function SyncedEntityPos.set_XInternal(value) end

---@param value number
function SyncedEntityPos.set_YInternal(value) end

---@param value number
function SyncedEntityPos.set_ZInternal(value) end

---@param value number
function SyncedEntityPos.set_RollInternal(value) end

---@param value number
function SyncedEntityPos.set_YawInternal(value) end

---@param value number
function SyncedEntityPos.set_PitchInternal(value) end

---@param value number
function SyncedEntityPos.set_StanceInternal(value) end

---@return boolean
function SyncedEntityPos.get_Dirty() end

---@param value boolean
function SyncedEntityPos.set_Dirty(value) end

-- Marks the position as clean- and not requiring a refresh from the server.
function SyncedEntityPos.MarkClean() end

---@return number
function SyncedEntityPos.get_InternalY() end

---@return BlockPos # A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function SyncedEntityPos.get_AsBlockPos() end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function SyncedEntityPos.get_XYZInt() end

---@return Vec3d # Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function SyncedEntityPos.get_XYZ() end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function SyncedEntityPos.get_XYZFloat() end

-- Sets this position to a Vec3d
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function SyncedEntityPos.SetPos(pos) end

---@param x number
---@param y number
---@param z number
---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function SyncedEntityPos.Add(x, y, z) end

-- Sets the entity position.
---@param x number
---@param y number
---@param z number
---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function SyncedEntityPos.SetPos(x, y, z) end

-- Sets the entity position.
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function SyncedEntityPos.SetPos(pos) end

-- Sets the entity position.
---@param x number
---@param y number
---@param z number
---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function SyncedEntityPos.SetPos(x, y, z) end

-- Sets the entity position.
---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function SyncedEntityPos.SetPos(pos) end

-- Sets the entity angles.
---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function SyncedEntityPos.SetAngles(pos) end

-- Sets the entity position.
---@param roll number
---@param yaw number
---@param pitch number
---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function SyncedEntityPos.SetAngles(roll, yaw, pitch) end

-- Sets the Yaw of this entity.
---@param yaw number
---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function SyncedEntityPos.SetYaw(yaw) end

-- Returns true if the entity is within given distance of the other entity
---@param position EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@param squareDistance number
---@return boolean
function SyncedEntityPos.InRangeOf(position, squareDistance) end

-- Returns true if the entity is within given distance of given position
---@param x number
---@param y number
---@param z number
---@param squareDistance number
---@return boolean
function SyncedEntityPos.InRangeOf(x, y, z, squareDistance) end

-- Returns true if the entity is within given distance of given position
---@param x number
---@param z number
---@param squareDistance number
---@return boolean
function SyncedEntityPos.InHorizontalRangeOf(x, z, squareDistance) end

-- Returns true if the entity is within given distance of given position
---@param x number
---@param y number
---@param z number
---@param squareDistance number
---@return boolean
function SyncedEntityPos.InRangeOf(x, y, z, squareDistance) end

-- Returns true if the entity is within given distance of given block position
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param squareDistance number
---@return boolean
function SyncedEntityPos.InRangeOf(pos, squareDistance) end

-- Returns true if the entity is within given distance of given position
---@param pos Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
---@param squareDistance number
---@return boolean
function SyncedEntityPos.InRangeOf(pos, squareDistance) end

-- Returns true if the entity is within given distance of given position
---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param horRangeSq number
---@param vertRange number
---@return boolean
function SyncedEntityPos.InRangeOf(position, horRangeSq, vertRange) end

-- Returns the squared distance of the entity to this position
---@param x number
---@param y number
---@param z number
---@return number
function SyncedEntityPos.SquareDistanceTo(x, y, z) end

-- Returns the squared distance of the entity to this position
---@param x number
---@param y number
---@param z number
---@return number
function SyncedEntityPos.SquareDistanceTo(x, y, z) end

-- Returns the squared distance of the entity to this position
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return number
function SyncedEntityPos.SquareDistanceTo(pos) end

-- Returns the horizontal squared distance of the entity to this position
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return number
function SyncedEntityPos.SquareHorDistanceTo(pos) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return number
function SyncedEntityPos.DistanceTo(pos) end

---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@return number
function SyncedEntityPos.DistanceTo(pos) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@return number
function SyncedEntityPos.HorDistanceTo(pos) end

---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@return number
function SyncedEntityPos.HorDistanceTo(pos) end

-- Returns the squared distance of the entity to this position
---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@return number
function SyncedEntityPos.SquareDistanceTo(pos) end

-- Creates a full copy
---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function SyncedEntityPos.Copy() end

-- Same as AheadCopy(1) - AheadCopy(0)
---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function SyncedEntityPos.GetViewVector() end

-- Returns a new entity position that is in front of the position the entity is currently looking at
---@param offset number
---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function SyncedEntityPos.AheadCopy(offset) end

-- Returns a new entity position that is in front of the position the entity is currently looking at using only the entities yaw, meaning the resulting coordinate will be always at the same y position.
---@param offset number
---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function SyncedEntityPos.HorizontalAheadCopy(offset) end

-- Returns a new entity position that is behind of the position the entity is currently looking at
---@param offset number
---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function SyncedEntityPos.BehindCopy(offset) end

-- Makes a "basiclly equals" check on the position, motions and angles using a small tolerance of epsilon=0.0001f 
---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@param epsilon? number
---@return boolean
function SyncedEntityPos.BasicallySameAs(pos, epsilon) end

-- Makes a "basiclly equals" check on the position, motions and angles using a small tolerance of epsilon=0.0001f. Ignores motion
---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@param epsilon? number
---@return boolean
function SyncedEntityPos.BasicallySameAsIgnoreMotion(pos, epsilon) end

-- Makes a "basiclly equals" check on position and motions using a small tolerance of epsilon=0.0001f. Ignores the entities angles.
---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@param epsilon? number
---@return boolean
function SyncedEntityPos.BasicallySameAsIgnoreAngles(pos, epsilon) end

-- Loads the position and angles from given entity position.
---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
function SyncedEntityPos.SetFrom(pos) end

-- Loads the position from given position.
---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
function SyncedEntityPos.SetFrom(pos) end

---@return string
function SyncedEntityPos.ToString() end

---@return string
function SyncedEntityPos.OnlyPosToString() end

---@return string
function SyncedEntityPos.OnlyAnglesToString() end

-- Serializes all positional information. Does not write HeadYaw and HeadPitch.
---@param writer BinaryWriter
function SyncedEntityPos.ToBytes(writer) end

-- Deserializes all positional information. Does not read HeadYaw and HeadPitch
---@param reader BinaryReader
function SyncedEntityPos.FromBytes(reader) end

---@return userdata
function SyncedEntityPos.GetType() end

---@param obj userdata
---@return boolean
function SyncedEntityPos.Equals(obj) end

---@return number
function SyncedEntityPos.GetHashCode() end


