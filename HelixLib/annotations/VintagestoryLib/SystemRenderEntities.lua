---@meta

---@class SystemRenderEntities: ClientSystem, ClientSystem
---@field Name string
SystemRenderEntities = {}

---@param game ClientMain
---@return SystemRenderEntities
function SystemRenderEntities.ctor(game) end

---@param deltaTime number
function SystemRenderEntities.OnRenderOpaque3D(deltaTime) end

---@param game ClientMain
function SystemRenderEntities.Dispose(game) end

---@return string
function SystemRenderEntities.get_Name() end

---@return EnumClientSystemType
function SystemRenderEntities.GetSystemType() end

---@param deltaTime number
function SystemRenderEntities.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemRenderEntities.OnKeyDown(args) end

---@param args KeyEvent
function SystemRenderEntities.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderEntities.OnMouseUp(args) end

---@param args KeyEvent
function SystemRenderEntities.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderEntities.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderEntities.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemRenderEntities.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemRenderEntities.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemRenderEntities.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemRenderEntities.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemRenderEntities.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemRenderEntities.OnHitEntity(e) end

function SystemRenderEntities.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderEntities.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderEntities.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemRenderEntities.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemRenderEntities.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderEntities.OnMouseClickSlot(itemSlot) end

function SystemRenderEntities.OnBlockTexturesLoaded() end

function SystemRenderEntities.OnServerIdentificationReceived() end

---@return boolean
function SystemRenderEntities.CaptureAllInputs() end

---@return boolean
function SystemRenderEntities.CaptureRawMouse() end

---@return userdata
function SystemRenderEntities.GetType() end

---@return string
function SystemRenderEntities.ToString() end

---@param obj userdata
---@return boolean
function SystemRenderEntities.Equals(obj) end

---@return number
function SystemRenderEntities.GetHashCode() end


