---@meta

---@class SystemRenderAim: ClientSystem, ClientSystem
---@field Name string
SystemRenderAim = {}

---@param game ClientMain
---@return SystemRenderAim
function SystemRenderAim.ctor(game) end

---@return string
function SystemRenderAim.get_Name() end

function SystemRenderAim.OnBlockTexturesLoaded() end

---@param deltaTime number
function SystemRenderAim.OnRenderFrame2DOverlay(deltaTime) end

---@param game ClientMain
function SystemRenderAim.Dispose(game) end

---@return EnumClientSystemType
function SystemRenderAim.GetSystemType() end

---@param deltaTime number
function SystemRenderAim.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemRenderAim.OnKeyDown(args) end

---@param args KeyEvent
function SystemRenderAim.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderAim.OnMouseUp(args) end

---@param args KeyEvent
function SystemRenderAim.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderAim.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderAim.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemRenderAim.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemRenderAim.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemRenderAim.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemRenderAim.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemRenderAim.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemRenderAim.OnHitEntity(e) end

function SystemRenderAim.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderAim.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderAim.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemRenderAim.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemRenderAim.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderAim.OnMouseClickSlot(itemSlot) end

function SystemRenderAim.OnServerIdentificationReceived() end

---@return boolean
function SystemRenderAim.CaptureAllInputs() end

---@return boolean
function SystemRenderAim.CaptureRawMouse() end

---@return userdata
function SystemRenderAim.GetType() end

---@return string
function SystemRenderAim.ToString() end

---@param obj userdata
---@return boolean
function SystemRenderAim.Equals(obj) end

---@return number
function SystemRenderAim.GetHashCode() end


