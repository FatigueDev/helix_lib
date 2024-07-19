---@meta

---@class SystemRenderSunMoon: ClientSystem, ClientSystem
---@field Name string
---@field ModelMat Matrixf
---@field sunScale number
---@field moonScale number
SystemRenderSunMoon = {}

---@param game ClientMain
---@return SystemRenderSunMoon
function SystemRenderSunMoon.ctor(game) end

---@return string
function SystemRenderSunMoon.get_Name() end

---@param dt number
function SystemRenderSunMoon.OnRenderFrame3D(dt) end

function SystemRenderSunMoon.prepareSunMat() end

---@param direction Vector3
---@return Quaternion
function SystemRenderSunMoon.CreateLookRotation(direction) end

---@param game ClientMain
function SystemRenderSunMoon.Dispose(game) end

---@return EnumClientSystemType
function SystemRenderSunMoon.GetSystemType() end

---@param deltaTime number
function SystemRenderSunMoon.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemRenderSunMoon.OnKeyDown(args) end

---@param args KeyEvent
function SystemRenderSunMoon.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderSunMoon.OnMouseUp(args) end

---@param args KeyEvent
function SystemRenderSunMoon.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderSunMoon.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderSunMoon.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemRenderSunMoon.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemRenderSunMoon.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemRenderSunMoon.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemRenderSunMoon.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemRenderSunMoon.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemRenderSunMoon.OnHitEntity(e) end

function SystemRenderSunMoon.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderSunMoon.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderSunMoon.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemRenderSunMoon.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemRenderSunMoon.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderSunMoon.OnMouseClickSlot(itemSlot) end

function SystemRenderSunMoon.OnBlockTexturesLoaded() end

function SystemRenderSunMoon.OnServerIdentificationReceived() end

---@return boolean
function SystemRenderSunMoon.CaptureAllInputs() end

---@return boolean
function SystemRenderSunMoon.CaptureRawMouse() end

---@return userdata
function SystemRenderSunMoon.GetType() end

---@return string
function SystemRenderSunMoon.ToString() end

---@param obj userdata
---@return boolean
function SystemRenderSunMoon.Equals(obj) end

---@return number
function SystemRenderSunMoon.GetHashCode() end


