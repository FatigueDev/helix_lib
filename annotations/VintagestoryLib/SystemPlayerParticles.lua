---@meta

---@class SystemPlayerParticles: ClientSystem, ClientSystem
---@field Name string
SystemPlayerParticles = {}

---@param game ClientMain
---@return SystemPlayerParticles
function SystemPlayerParticles.ctor(game) end

---@return string
function SystemPlayerParticles.get_Name() end

---@return EnumClientSystemType
function SystemPlayerParticles.GetSystemType() end

---@param deltaTime number
function SystemPlayerParticles.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemPlayerParticles.OnKeyDown(args) end

---@param args KeyEvent
function SystemPlayerParticles.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemPlayerParticles.OnMouseUp(args) end

---@param args KeyEvent
function SystemPlayerParticles.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemPlayerParticles.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemPlayerParticles.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemPlayerParticles.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemPlayerParticles.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemPlayerParticles.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemPlayerParticles.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemPlayerParticles.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemPlayerParticles.OnHitEntity(e) end

function SystemPlayerParticles.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemPlayerParticles.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemPlayerParticles.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemPlayerParticles.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemPlayerParticles.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemPlayerParticles.OnMouseClickSlot(itemSlot) end

function SystemPlayerParticles.OnBlockTexturesLoaded() end

function SystemPlayerParticles.OnServerIdentificationReceived() end

---@param game ClientMain
function SystemPlayerParticles.Dispose(game) end

---@return boolean
function SystemPlayerParticles.CaptureAllInputs() end

---@return boolean
function SystemPlayerParticles.CaptureRawMouse() end

---@return userdata
function SystemPlayerParticles.GetType() end

---@return string
function SystemPlayerParticles.ToString() end

---@param obj userdata
---@return boolean
function SystemPlayerParticles.Equals(obj) end

---@return number
function SystemPlayerParticles.GetHashCode() end


