---@meta

---@class PlayerAreaSelection: ClientSystem, ClientSystem, IWorldIntersectionSupplier
---@field Name string
---@field blockAccessor IBlockAccessor
---@field MapSize Vec3i
PlayerAreaSelection = {}

---@param game ClientMain
---@return PlayerAreaSelection
function PlayerAreaSelection.ctor(game) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function PlayerAreaSelection.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function PlayerAreaSelection.OnMouseUp(args) end

---@param player IPlayer Represents a player
---@param blockSelection BlockSelection&
---@param filter? BlockFilter
function PlayerAreaSelection.RayTracePlayerSelection(player, blockSelection, filter) end

---@param ray Ray
---@param blockSelection BlockSelection&
---@param filter? BlockFilter
function PlayerAreaSelection.RayTraceWorld(ray, blockSelection, filter) end

---@param pos Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param pitch number
---@param yaw number
---@param pickingRange number
---@return Ray
function PlayerAreaSelection.GetPickingRay(pos, pitch, yaw, pickingRange) end

---@return string
function PlayerAreaSelection.get_Name() end

---@return EnumClientSystemType
function PlayerAreaSelection.GetSystemType() end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Block # Basic class for a placeable block
function PlayerAreaSelection.GetBlock(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return Cuboidf[] # Represents a three dimensional axis-aligned cuboid using two 3d coordinates. Used for collision and selection boxes.
function PlayerAreaSelection.GetBlockIntersectionBoxes(pos) end

---@return IBlockAccessor # Provides read/write access to the blocks of a world
function PlayerAreaSelection.get_blockAccessor() end

---@return Vec3i # Represents a vector of 3 ints. Go bug Tyron if you need more utility methods in this class.
function PlayerAreaSelection.get_MapSize() end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function PlayerAreaSelection.IsValidPos(pos) end

---@param position Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param horRange number
---@param vertRange number
---@param matches? function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@return Entity[] # The basic class for all entities in the game
function PlayerAreaSelection.GetEntitiesAround(position, horRange, vertRange, matches) end

---@param deltaTime number
function PlayerAreaSelection.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function PlayerAreaSelection.OnKeyDown(args) end

---@param args KeyEvent
function PlayerAreaSelection.OnKeyPress(args) end

---@param args KeyEvent
function PlayerAreaSelection.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function PlayerAreaSelection.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function PlayerAreaSelection.OnMouseWheel(args) end

---@param e TouchEventArgs
function PlayerAreaSelection.OnTouchStart(e) end

---@param e TouchEventArgs
function PlayerAreaSelection.OnTouchMove(e) end

---@param e TouchEventArgs
function PlayerAreaSelection.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function PlayerAreaSelection.OnUseEntity(e) end

---@param e OnUseEntityArgs
function PlayerAreaSelection.OnHitEntity(e) end

function PlayerAreaSelection.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function PlayerAreaSelection.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function PlayerAreaSelection.OnMouseLeaveSlot(itemSlot) end

---@return number
function PlayerAreaSelection.SeperateThreadTickIntervalMs() end

---@param dt number
function PlayerAreaSelection.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function PlayerAreaSelection.OnMouseClickSlot(itemSlot) end

function PlayerAreaSelection.OnBlockTexturesLoaded() end

function PlayerAreaSelection.OnServerIdentificationReceived() end

---@param game ClientMain
function PlayerAreaSelection.Dispose(game) end

---@return boolean
function PlayerAreaSelection.CaptureAllInputs() end

---@return boolean
function PlayerAreaSelection.CaptureRawMouse() end

---@return userdata
function PlayerAreaSelection.GetType() end

---@return string
function PlayerAreaSelection.ToString() end

---@param obj userdata
---@return boolean
function PlayerAreaSelection.Equals(obj) end

---@return number
function PlayerAreaSelection.GetHashCode() end


