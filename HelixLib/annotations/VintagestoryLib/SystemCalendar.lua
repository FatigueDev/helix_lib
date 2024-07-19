---@meta

---@class SystemCalendar: ClientSystem, ClientSystem
---@field Name string
SystemCalendar = {}

---@param game ClientMain
---@return SystemCalendar
function SystemCalendar.ctor(game) end

---@return string
function SystemCalendar.get_Name() end

function SystemCalendar.OnBlockTexturesLoaded() end

---@return EnumClientSystemType
function SystemCalendar.GetSystemType() end

---@param deltaTime number
function SystemCalendar.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemCalendar.OnKeyDown(args) end

---@param args KeyEvent
function SystemCalendar.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemCalendar.OnMouseUp(args) end

---@param args KeyEvent
function SystemCalendar.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemCalendar.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemCalendar.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemCalendar.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemCalendar.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemCalendar.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemCalendar.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemCalendar.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemCalendar.OnHitEntity(e) end

function SystemCalendar.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemCalendar.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemCalendar.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemCalendar.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemCalendar.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemCalendar.OnMouseClickSlot(itemSlot) end

function SystemCalendar.OnServerIdentificationReceived() end

---@param game ClientMain
function SystemCalendar.Dispose(game) end

---@return boolean
function SystemCalendar.CaptureAllInputs() end

---@return boolean
function SystemCalendar.CaptureRawMouse() end

---@return userdata
function SystemCalendar.GetType() end

---@return string
function SystemCalendar.ToString() end

---@param obj userdata
---@return boolean
function SystemCalendar.Equals(obj) end

---@return number
function SystemCalendar.GetHashCode() end


