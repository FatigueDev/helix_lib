---@meta

---@class SystemRenderInsideBlock: ClientSystem, ClientSystem
---@field Name string
---@field lightExt number
---@field blockExt Block[]
SystemRenderInsideBlock = {}

---@param game ClientMain
---@return SystemRenderInsideBlock
function SystemRenderInsideBlock.ctor(game) end

---@return string
function SystemRenderInsideBlock.get_Name() end

---@param game ClientMain
function SystemRenderInsideBlock.Dispose(game) end

---@return EnumClientSystemType
function SystemRenderInsideBlock.GetSystemType() end

---@param deltaTime number
function SystemRenderInsideBlock.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemRenderInsideBlock.OnKeyDown(args) end

---@param args KeyEvent
function SystemRenderInsideBlock.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderInsideBlock.OnMouseUp(args) end

---@param args KeyEvent
function SystemRenderInsideBlock.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderInsideBlock.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderInsideBlock.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemRenderInsideBlock.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemRenderInsideBlock.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemRenderInsideBlock.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemRenderInsideBlock.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemRenderInsideBlock.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemRenderInsideBlock.OnHitEntity(e) end

function SystemRenderInsideBlock.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderInsideBlock.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderInsideBlock.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemRenderInsideBlock.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemRenderInsideBlock.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderInsideBlock.OnMouseClickSlot(itemSlot) end

function SystemRenderInsideBlock.OnBlockTexturesLoaded() end

function SystemRenderInsideBlock.OnServerIdentificationReceived() end

---@return boolean
function SystemRenderInsideBlock.CaptureAllInputs() end

---@return boolean
function SystemRenderInsideBlock.CaptureRawMouse() end

---@return userdata
function SystemRenderInsideBlock.GetType() end

---@return string
function SystemRenderInsideBlock.ToString() end

---@param obj userdata
---@return boolean
function SystemRenderInsideBlock.Equals(obj) end

---@return number
function SystemRenderInsideBlock.GetHashCode() end


