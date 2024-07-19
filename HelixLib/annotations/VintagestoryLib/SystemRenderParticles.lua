---@meta

---@class SystemRenderParticles: ClientSystem, ClientSystem, IAsyncParticleManager
---@field Name string
---@field BlockAccess IBlockAccessor
SystemRenderParticles = {}

---@param game ClientMain
---@return SystemRenderParticles
function SystemRenderParticles.ctor(game) end

---@return string
function SystemRenderParticles.get_Name() end

---@return IBlockAccessor # Provides read/write access to the blocks of a world
function SystemRenderParticles.get_BlockAccess() end

---@param value IBlockAccessor Provides read/write access to the blocks of a world
function SystemRenderParticles.set_BlockAccess(value) end

---@param deltaTime number
function SystemRenderParticles.OnRenderFrame3D(deltaTime) end

---@param deltaTime number
function SystemRenderParticles.OnRenderFrame3DOIT(deltaTime) end

---@return number
function SystemRenderParticles.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemRenderParticles.OnSeperateThreadGameTick(dt) end

---@param particleProperties IParticlePropertiesProvider Represents a provider of particle properties to be used when generating a particle
---@return number
function SystemRenderParticles.Spawn(particleProperties) end

---@param model EnumParticleModel
---@return number
function SystemRenderParticles.ParticlesAlive(model) end

---@return EnumClientSystemType
function SystemRenderParticles.GetSystemType() end

---@param game ClientMain
function SystemRenderParticles.Dispose(game) end

---@param deltaTime number
function SystemRenderParticles.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemRenderParticles.OnKeyDown(args) end

---@param args KeyEvent
function SystemRenderParticles.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderParticles.OnMouseUp(args) end

---@param args KeyEvent
function SystemRenderParticles.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderParticles.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderParticles.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemRenderParticles.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemRenderParticles.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemRenderParticles.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemRenderParticles.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemRenderParticles.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemRenderParticles.OnHitEntity(e) end

function SystemRenderParticles.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderParticles.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderParticles.OnMouseLeaveSlot(itemSlot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderParticles.OnMouseClickSlot(itemSlot) end

function SystemRenderParticles.OnBlockTexturesLoaded() end

function SystemRenderParticles.OnServerIdentificationReceived() end

---@return boolean
function SystemRenderParticles.CaptureAllInputs() end

---@return boolean
function SystemRenderParticles.CaptureRawMouse() end

---@return userdata
function SystemRenderParticles.GetType() end

---@return string
function SystemRenderParticles.ToString() end

---@param obj userdata
---@return boolean
function SystemRenderParticles.Equals(obj) end

---@return number
function SystemRenderParticles.GetHashCode() end


