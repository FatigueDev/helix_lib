---@meta

---@class SystemRenderDebugWireframes: ClientSystem, ClientSystem
---@field Name string
SystemRenderDebugWireframes = {}

---@param game ClientMain
---@return SystemRenderDebugWireframes
function SystemRenderDebugWireframes.ctor(game) end

---@return string
function SystemRenderDebugWireframes.get_Name() end

---@param game ClientMain
function SystemRenderDebugWireframes.Dispose(game) end

---@param deltaTime number
function SystemRenderDebugWireframes.OnRenderFrame3D(deltaTime) end

---@return EnumClientSystemType
function SystemRenderDebugWireframes.GetSystemType() end

---@param deltaTime number
function SystemRenderDebugWireframes.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemRenderDebugWireframes.OnKeyDown(args) end

---@param args KeyEvent
function SystemRenderDebugWireframes.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderDebugWireframes.OnMouseUp(args) end

---@param args KeyEvent
function SystemRenderDebugWireframes.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderDebugWireframes.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderDebugWireframes.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemRenderDebugWireframes.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemRenderDebugWireframes.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemRenderDebugWireframes.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemRenderDebugWireframes.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemRenderDebugWireframes.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemRenderDebugWireframes.OnHitEntity(e) end

function SystemRenderDebugWireframes.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderDebugWireframes.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderDebugWireframes.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemRenderDebugWireframes.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemRenderDebugWireframes.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderDebugWireframes.OnMouseClickSlot(itemSlot) end

function SystemRenderDebugWireframes.OnBlockTexturesLoaded() end

function SystemRenderDebugWireframes.OnServerIdentificationReceived() end

---@return boolean
function SystemRenderDebugWireframes.CaptureAllInputs() end

---@return boolean
function SystemRenderDebugWireframes.CaptureRawMouse() end

---@return userdata
function SystemRenderDebugWireframes.GetType() end

---@return string
function SystemRenderDebugWireframes.ToString() end

---@param obj userdata
---@return boolean
function SystemRenderDebugWireframes.Equals(obj) end

---@return number
function SystemRenderDebugWireframes.GetHashCode() end


