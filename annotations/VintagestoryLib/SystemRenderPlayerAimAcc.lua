---@meta

---@class SystemRenderPlayerAimAcc: ClientSystem, ClientSystem
---@field Name string
SystemRenderPlayerAimAcc = {}

---@param game ClientMain
---@return SystemRenderPlayerAimAcc
function SystemRenderPlayerAimAcc.ctor(game) end

---@return string
function SystemRenderPlayerAimAcc.get_Name() end

---@return EnumClientSystemType
function SystemRenderPlayerAimAcc.GetSystemType() end

function SystemRenderPlayerAimAcc.GenAim() end

---@param game ClientMain
function SystemRenderPlayerAimAcc.Dispose(game) end

---@param deltaTime number
function SystemRenderPlayerAimAcc.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemRenderPlayerAimAcc.OnKeyDown(args) end

---@param args KeyEvent
function SystemRenderPlayerAimAcc.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderPlayerAimAcc.OnMouseUp(args) end

---@param args KeyEvent
function SystemRenderPlayerAimAcc.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderPlayerAimAcc.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderPlayerAimAcc.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemRenderPlayerAimAcc.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemRenderPlayerAimAcc.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemRenderPlayerAimAcc.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemRenderPlayerAimAcc.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemRenderPlayerAimAcc.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemRenderPlayerAimAcc.OnHitEntity(e) end

function SystemRenderPlayerAimAcc.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderPlayerAimAcc.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderPlayerAimAcc.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemRenderPlayerAimAcc.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemRenderPlayerAimAcc.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderPlayerAimAcc.OnMouseClickSlot(itemSlot) end

function SystemRenderPlayerAimAcc.OnBlockTexturesLoaded() end

function SystemRenderPlayerAimAcc.OnServerIdentificationReceived() end

---@return boolean
function SystemRenderPlayerAimAcc.CaptureAllInputs() end

---@return boolean
function SystemRenderPlayerAimAcc.CaptureRawMouse() end

---@return userdata
function SystemRenderPlayerAimAcc.GetType() end

---@return string
function SystemRenderPlayerAimAcc.ToString() end

---@param obj userdata
---@return boolean
function SystemRenderPlayerAimAcc.Equals(obj) end

---@return number
function SystemRenderPlayerAimAcc.GetHashCode() end


