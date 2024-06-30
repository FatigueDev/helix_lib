---@meta

---@class SystemRenderShadowMap: ClientSystem, ClientSystem
---@field Name string
SystemRenderShadowMap = {}

---@param game ClientMain
---@return SystemRenderShadowMap
function SystemRenderShadowMap.ctor(game) end

---@return string
function SystemRenderShadowMap.get_Name() end

---@return EnumClientSystemType
function SystemRenderShadowMap.GetSystemType() end

---@param deltaTime number
function SystemRenderShadowMap.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemRenderShadowMap.OnKeyDown(args) end

---@param args KeyEvent
function SystemRenderShadowMap.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderShadowMap.OnMouseUp(args) end

---@param args KeyEvent
function SystemRenderShadowMap.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderShadowMap.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderShadowMap.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemRenderShadowMap.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemRenderShadowMap.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemRenderShadowMap.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemRenderShadowMap.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemRenderShadowMap.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemRenderShadowMap.OnHitEntity(e) end

function SystemRenderShadowMap.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderShadowMap.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderShadowMap.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemRenderShadowMap.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemRenderShadowMap.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderShadowMap.OnMouseClickSlot(itemSlot) end

function SystemRenderShadowMap.OnBlockTexturesLoaded() end

function SystemRenderShadowMap.OnServerIdentificationReceived() end

---@param game ClientMain
function SystemRenderShadowMap.Dispose(game) end

---@return boolean
function SystemRenderShadowMap.CaptureAllInputs() end

---@return boolean
function SystemRenderShadowMap.CaptureRawMouse() end

---@return userdata
function SystemRenderShadowMap.GetType() end

---@return string
function SystemRenderShadowMap.ToString() end

---@param obj userdata
---@return boolean
function SystemRenderShadowMap.Equals(obj) end

---@return number
function SystemRenderShadowMap.GetHashCode() end


