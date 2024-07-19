---@meta

---@class SystemRenderPlayerEffects: ClientSystem, ClientSystem
---@field Name string
SystemRenderPlayerEffects = {}

---@param game ClientMain
---@return SystemRenderPlayerEffects
function SystemRenderPlayerEffects.ctor(game) end

---@return string
function SystemRenderPlayerEffects.get_Name() end

function SystemRenderPlayerEffects.OnOwnPlayerDataReceived() end

---@return EnumClientSystemType
function SystemRenderPlayerEffects.GetSystemType() end

---@param deltaTime number
function SystemRenderPlayerEffects.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemRenderPlayerEffects.OnKeyDown(args) end

---@param args KeyEvent
function SystemRenderPlayerEffects.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderPlayerEffects.OnMouseUp(args) end

---@param args KeyEvent
function SystemRenderPlayerEffects.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderPlayerEffects.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderPlayerEffects.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemRenderPlayerEffects.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemRenderPlayerEffects.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemRenderPlayerEffects.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemRenderPlayerEffects.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemRenderPlayerEffects.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemRenderPlayerEffects.OnHitEntity(e) end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderPlayerEffects.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderPlayerEffects.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemRenderPlayerEffects.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemRenderPlayerEffects.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderPlayerEffects.OnMouseClickSlot(itemSlot) end

function SystemRenderPlayerEffects.OnBlockTexturesLoaded() end

function SystemRenderPlayerEffects.OnServerIdentificationReceived() end

---@param game ClientMain
function SystemRenderPlayerEffects.Dispose(game) end

---@return boolean
function SystemRenderPlayerEffects.CaptureAllInputs() end

---@return boolean
function SystemRenderPlayerEffects.CaptureRawMouse() end

---@return userdata
function SystemRenderPlayerEffects.GetType() end

---@return string
function SystemRenderPlayerEffects.ToString() end

---@param obj userdata
---@return boolean
function SystemRenderPlayerEffects.Equals(obj) end

---@return number
function SystemRenderPlayerEffects.GetHashCode() end


