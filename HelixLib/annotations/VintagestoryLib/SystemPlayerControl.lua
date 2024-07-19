---@meta

---@class SystemPlayerControl: ClientSystem, ClientSystem
---@field Name string
SystemPlayerControl = {}

---@param game ClientMain
---@return SystemPlayerControl
function SystemPlayerControl.ctor(game) end

---@return string
function SystemPlayerControl.get_Name() end

---@param args KeyEvent
function SystemPlayerControl.OnKeyDown(args) end

---@param dt number
function SystemPlayerControl.OnGameTick(dt) end

---@return EnumClientSystemType
function SystemPlayerControl.GetSystemType() end

---@param deltaTime number
function SystemPlayerControl.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemPlayerControl.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemPlayerControl.OnMouseUp(args) end

---@param args KeyEvent
function SystemPlayerControl.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemPlayerControl.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemPlayerControl.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemPlayerControl.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemPlayerControl.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemPlayerControl.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemPlayerControl.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemPlayerControl.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemPlayerControl.OnHitEntity(e) end

function SystemPlayerControl.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemPlayerControl.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemPlayerControl.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemPlayerControl.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemPlayerControl.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemPlayerControl.OnMouseClickSlot(itemSlot) end

function SystemPlayerControl.OnBlockTexturesLoaded() end

function SystemPlayerControl.OnServerIdentificationReceived() end

---@param game ClientMain
function SystemPlayerControl.Dispose(game) end

---@return boolean
function SystemPlayerControl.CaptureAllInputs() end

---@return boolean
function SystemPlayerControl.CaptureRawMouse() end

---@return userdata
function SystemPlayerControl.GetType() end

---@return string
function SystemPlayerControl.ToString() end

---@param obj userdata
---@return boolean
function SystemPlayerControl.Equals(obj) end

---@return number
function SystemPlayerControl.GetHashCode() end


