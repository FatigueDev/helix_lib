---@meta

-- The available controls to move around a character in a game world
---@class EntityControls
---@field Flags boolean
---@field TriesToMove boolean Checks to see if the entity is attempting to move in any direction (excluding jumping)
---@field Forward boolean A check for if the entity is moving in the direction it's facing.
---@field Backward boolean A check for if the entity is moving the opposite direction it's facing.
---@field Left boolean A check to see if the entity is moving left the direction it's facing.
---@field Right boolean A check to see if the entity is moving right the direction it's facing.
---@field Jump boolean A check whether to see if the entity is jumping.
---@field Sneak boolean A check whether to see if the entity is sneaking.
---@field Gliding boolean A check to see whether the entity is gliding
---@field FloorSitting boolean A check to see whether the entity is sitting on the floor.
---@field Sprint boolean A check to see whether the entity is sprinting.
---@field Up boolean A check to see whether the entity is moving up.
---@field Down boolean A check to see whether the entity is moving down.
---@field LeftMouseDown boolean A check to see if the entity is holding the in-world rleft mouse button down.
---@field RightMouseDown boolean A check to see if the entity is holding the in-world right mouse button down.
---@field CtrlKey boolean A check to see if the entity is holding down the Ctrl key (which may be the same as the Sprint key or one or other may have been remapped).
---@field ShiftKey boolean A check to see if the entity is holding down the Shift key (which may be the same as the Sneak key or one or other may have been remapped).
---@field Item boolean
---@field OnAction OnEntityAction To execute a call handler registered by the engine. Don't use this one, use api.Input.InWorldAction instead.
---@field DetachedMode boolean If true, the entity is either flying, gliding or swimming.
---@field NoClip boolean If true, the entity has NoClip active.
---@field FlyPlaneLock EnumFreeMovAxisLock the axis lock for the fly plane.
---@field WalkVector Vec3d Current walking direction.
---@field FlyVector Vec3d Current flying direction
---@field IsFlying boolean Whether or not the entity is flying.
---@field IsClimbing boolean Whether or not the entity is climbing
---@field IsAiming boolean Whether or not the entity is aiming
---@field IsStepping boolean Whether or not the entity is currently stepping up a block
---@field HandUse EnumHandInteract If the player is currently using the currently held item in a special way (e.g. attacking with smithing hammer or eating an edible item)
---@field HandUsingBlockSel BlockSelection The block pos the player started using
---@field UsingCount number
---@field UsingBeginMS number
---@field LeftUsingHeldItemTransformBefore ModelTransform
---@field UsingHeldItemTransformBefore ModelTransform
---@field UsingHeldItemTransformAfter ModelTransform
---@field MovespeedMultiplier number The movement speed multiplier.
---@field Dirty boolean Whether or not this entity is dirty.
---@field GlideSpeed number
EntityControls = {}

---@return EntityControls
function EntityControls.ctor() end

---@return boolean
function EntityControls.get_Flags() end

---@return boolean
function EntityControls.get_TriesToMove() end

---@return boolean
function EntityControls.get_Forward() end

---@param value boolean
function EntityControls.set_Forward(value) end

---@return boolean
function EntityControls.get_Backward() end

---@param value boolean
function EntityControls.set_Backward(value) end

---@return boolean
function EntityControls.get_Left() end

---@param value boolean
function EntityControls.set_Left(value) end

---@return boolean
function EntityControls.get_Right() end

---@param value boolean
function EntityControls.set_Right(value) end

---@return boolean
function EntityControls.get_Jump() end

---@param value boolean
function EntityControls.set_Jump(value) end

---@return boolean
function EntityControls.get_Sneak() end

---@param value boolean
function EntityControls.set_Sneak(value) end

---@return boolean
function EntityControls.get_Gliding() end

---@param value boolean
function EntityControls.set_Gliding(value) end

---@return boolean
function EntityControls.get_FloorSitting() end

---@param value boolean
function EntityControls.set_FloorSitting(value) end

---@return boolean
function EntityControls.get_Sprint() end

---@param value boolean
function EntityControls.set_Sprint(value) end

---@return boolean
function EntityControls.get_Up() end

---@param value boolean
function EntityControls.set_Up(value) end

---@return boolean
function EntityControls.get_Down() end

---@param value boolean
function EntityControls.set_Down(value) end

---@return boolean
function EntityControls.get_LeftMouseDown() end

---@param value boolean
function EntityControls.set_LeftMouseDown(value) end

---@return boolean
function EntityControls.get_RightMouseDown() end

---@param value boolean
function EntityControls.set_RightMouseDown(value) end

---@return boolean
function EntityControls.get_CtrlKey() end

---@param value boolean
function EntityControls.set_CtrlKey(value) end

---@return boolean
function EntityControls.get_ShiftKey() end

---@param value boolean
function EntityControls.set_ShiftKey(value) end

---@param action EnumEntityAction A players in-world action
---@return boolean
function EntityControls.get_Item(action) end

---@param action EnumEntityAction A players in-world action
---@param value boolean
function EntityControls.set_Item(action, value) end

-- Calculates the movement vectors for the player.
---@param pos EntityPos Represents all positional information of an entity, such as coordinates, motion and angles
---@param dt number
function EntityControls.CalcMovementVectors(pos, dt) end

-- Copies the controls from the provided controls to this set of controls.
---@param controls EntityControls The available controls to move around a character in a game world
function EntityControls.SetFrom(controls) end

-- Updates the data from the packet.
---@param pressed boolean
---@param action number
function EntityControls.UpdateFromPacket(pressed, action) end

-- Forces the entity to stop all movements, resets all flags to false
function EntityControls.StopAllMovement() end

-- Converts the values to a single int flag.
---@return number
function EntityControls.ToInt() end

-- Converts the int flags to movement controls.
---@param flagsInt number
function EntityControls.FromInt(flagsInt) end

---@param writer BinaryWriter
function EntityControls.ToBytes(writer) end

---@param reader BinaryReader
---@param ignoreData boolean
function EntityControls.FromBytes(reader, ignoreData) end

---@return userdata
function EntityControls.GetType() end

---@return string
function EntityControls.ToString() end

---@param obj userdata
---@return boolean
function EntityControls.Equals(obj) end

---@return number
function EntityControls.GetHashCode() end


