---@meta

---@class SystemRenderRiftTest: ClientSystem, IDisposable, ClientSystem, IRenderer
---@field Name string
---@field RenderOrder number
---@field RenderRange number
SystemRenderRiftTest = {}

---@param game ClientMain
---@return SystemRenderRiftTest
function SystemRenderRiftTest.ctor(game) end

---@return string
function SystemRenderRiftTest.get_Name() end

---@return number
function SystemRenderRiftTest.get_RenderOrder() end

---@return number
function SystemRenderRiftTest.get_RenderRange() end

---@param deltaTime number
---@param stage EnumRenderStage
function SystemRenderRiftTest.OnRenderFrame(deltaTime, stage) end

function SystemRenderRiftTest.Dispose() end

---@return EnumClientSystemType
function SystemRenderRiftTest.GetSystemType() end

---@param deltaTime number
function SystemRenderRiftTest.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemRenderRiftTest.OnKeyDown(args) end

---@param args KeyEvent
function SystemRenderRiftTest.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderRiftTest.OnMouseUp(args) end

---@param args KeyEvent
function SystemRenderRiftTest.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderRiftTest.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderRiftTest.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemRenderRiftTest.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemRenderRiftTest.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemRenderRiftTest.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemRenderRiftTest.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemRenderRiftTest.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemRenderRiftTest.OnHitEntity(e) end

function SystemRenderRiftTest.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderRiftTest.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderRiftTest.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemRenderRiftTest.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemRenderRiftTest.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderRiftTest.OnMouseClickSlot(itemSlot) end

function SystemRenderRiftTest.OnBlockTexturesLoaded() end

function SystemRenderRiftTest.OnServerIdentificationReceived() end

---@param game ClientMain
function SystemRenderRiftTest.Dispose(game) end

---@return boolean
function SystemRenderRiftTest.CaptureAllInputs() end

---@return boolean
function SystemRenderRiftTest.CaptureRawMouse() end

---@return userdata
function SystemRenderRiftTest.GetType() end

---@return string
function SystemRenderRiftTest.ToString() end

---@param obj userdata
---@return boolean
function SystemRenderRiftTest.Equals(obj) end

---@return number
function SystemRenderRiftTest.GetHashCode() end


