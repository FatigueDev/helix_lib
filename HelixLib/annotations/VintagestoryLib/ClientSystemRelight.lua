---@meta

---@class ClientSystemRelight: ClientSystem, ClientSystem
---@field Name string
ClientSystemRelight = {}

---@param game ClientMain
---@return ClientSystemRelight
function ClientSystemRelight.ctor(game) end

function ClientSystemRelight.OnBlockTexturesLoaded() end

---@return number
function ClientSystemRelight.SeperateThreadTickIntervalMs() end

---@param dt number
function ClientSystemRelight.OnSeperateThreadGameTick(dt) end

function ClientSystemRelight.ProcessLightingQueue() end

---@return string
function ClientSystemRelight.get_Name() end

---@return EnumClientSystemType
function ClientSystemRelight.GetSystemType() end

---@param deltaTime number
function ClientSystemRelight.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function ClientSystemRelight.OnKeyDown(args) end

---@param args KeyEvent
function ClientSystemRelight.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ClientSystemRelight.OnMouseUp(args) end

---@param args KeyEvent
function ClientSystemRelight.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ClientSystemRelight.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ClientSystemRelight.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function ClientSystemRelight.OnMouseWheel(args) end

---@param e TouchEventArgs
function ClientSystemRelight.OnTouchStart(e) end

---@param e TouchEventArgs
function ClientSystemRelight.OnTouchMove(e) end

---@param e TouchEventArgs
function ClientSystemRelight.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function ClientSystemRelight.OnUseEntity(e) end

---@param e OnUseEntityArgs
function ClientSystemRelight.OnHitEntity(e) end

function ClientSystemRelight.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function ClientSystemRelight.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function ClientSystemRelight.OnMouseLeaveSlot(itemSlot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function ClientSystemRelight.OnMouseClickSlot(itemSlot) end

function ClientSystemRelight.OnServerIdentificationReceived() end

---@param game ClientMain
function ClientSystemRelight.Dispose(game) end

---@return boolean
function ClientSystemRelight.CaptureAllInputs() end

---@return boolean
function ClientSystemRelight.CaptureRawMouse() end

---@return userdata
function ClientSystemRelight.GetType() end

---@return string
function ClientSystemRelight.ToString() end

---@param obj userdata
---@return boolean
function ClientSystemRelight.Equals(obj) end

---@return number
function ClientSystemRelight.GetHashCode() end


