---@meta

---@class SystemModHandler: ClientSystem, ClientSystem
---@field Name string
SystemModHandler = {}

---@param game ClientMain
---@return SystemModHandler
function SystemModHandler.ctor(game) end

---@return string
function SystemModHandler.get_Name() end

function SystemModHandler.OnServerIdentificationReceived() end

function SystemModHandler.OnBlockTexturesLoaded() end

---@param game ClientMain
function SystemModHandler.Dispose(game) end

---@return EnumClientSystemType
function SystemModHandler.GetSystemType() end

---@param deltaTime number
function SystemModHandler.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemModHandler.OnKeyDown(args) end

---@param args KeyEvent
function SystemModHandler.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemModHandler.OnMouseUp(args) end

---@param args KeyEvent
function SystemModHandler.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemModHandler.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemModHandler.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemModHandler.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemModHandler.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemModHandler.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemModHandler.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemModHandler.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemModHandler.OnHitEntity(e) end

function SystemModHandler.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemModHandler.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemModHandler.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemModHandler.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemModHandler.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemModHandler.OnMouseClickSlot(itemSlot) end

---@return boolean
function SystemModHandler.CaptureAllInputs() end

---@return boolean
function SystemModHandler.CaptureRawMouse() end

---@return userdata
function SystemModHandler.GetType() end

---@return string
function SystemModHandler.ToString() end

---@param obj userdata
---@return boolean
function SystemModHandler.Equals(obj) end

---@return number
function SystemModHandler.GetHashCode() end


