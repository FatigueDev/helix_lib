---@meta

---@class ClientSystem
---@field Name string
ClientSystem = {}

---@param game ClientMain
---@return ClientSystem
function ClientSystem.ctor(game) end

---@return string
function ClientSystem.get_Name() end

---@param deltaTime number
function ClientSystem.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function ClientSystem.OnKeyDown(args) end

---@param args KeyEvent
function ClientSystem.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ClientSystem.OnMouseUp(args) end

---@param args KeyEvent
function ClientSystem.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ClientSystem.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ClientSystem.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function ClientSystem.OnMouseWheel(args) end

---@param e TouchEventArgs
function ClientSystem.OnTouchStart(e) end

---@param e TouchEventArgs
function ClientSystem.OnTouchMove(e) end

---@param e TouchEventArgs
function ClientSystem.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function ClientSystem.OnUseEntity(e) end

---@param e OnUseEntityArgs
function ClientSystem.OnHitEntity(e) end

function ClientSystem.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function ClientSystem.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function ClientSystem.OnMouseLeaveSlot(itemSlot) end

---@return number
function ClientSystem.SeperateThreadTickIntervalMs() end

---@param dt number
function ClientSystem.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function ClientSystem.OnMouseClickSlot(itemSlot) end

function ClientSystem.OnBlockTexturesLoaded() end

function ClientSystem.OnServerIdentificationReceived() end

---@param game ClientMain
function ClientSystem.Dispose(game) end

---@return boolean
function ClientSystem.CaptureAllInputs() end

---@return boolean
function ClientSystem.CaptureRawMouse() end

---@return EnumClientSystemType
function ClientSystem.GetSystemType() end

---@return userdata
function ClientSystem.GetType() end

---@return string
function ClientSystem.ToString() end

---@param obj userdata
---@return boolean
function ClientSystem.Equals(obj) end

---@return number
function ClientSystem.GetHashCode() end


