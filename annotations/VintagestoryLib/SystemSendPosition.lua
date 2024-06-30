---@meta

---@class SystemSendPosition: ClientSystem, ClientSystem
---@field Name string
SystemSendPosition = {}

---@param game ClientMain
---@return SystemSendPosition
function SystemSendPosition.ctor(game) end

---@return string
function SystemSendPosition.get_Name() end

---@return EnumClientSystemType
function SystemSendPosition.GetSystemType() end

---@param deltaTime number
function SystemSendPosition.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemSendPosition.OnKeyDown(args) end

---@param args KeyEvent
function SystemSendPosition.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemSendPosition.OnMouseUp(args) end

---@param args KeyEvent
function SystemSendPosition.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemSendPosition.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemSendPosition.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemSendPosition.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemSendPosition.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemSendPosition.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemSendPosition.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemSendPosition.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemSendPosition.OnHitEntity(e) end

function SystemSendPosition.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemSendPosition.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemSendPosition.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemSendPosition.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemSendPosition.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemSendPosition.OnMouseClickSlot(itemSlot) end

function SystemSendPosition.OnBlockTexturesLoaded() end

function SystemSendPosition.OnServerIdentificationReceived() end

---@param game ClientMain
function SystemSendPosition.Dispose(game) end

---@return boolean
function SystemSendPosition.CaptureAllInputs() end

---@return boolean
function SystemSendPosition.CaptureRawMouse() end

---@return userdata
function SystemSendPosition.GetType() end

---@return string
function SystemSendPosition.ToString() end

---@param obj userdata
---@return boolean
function SystemSendPosition.Equals(obj) end

---@return number
function SystemSendPosition.GetHashCode() end


