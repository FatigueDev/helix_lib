---@meta

---@class SystemMouseInWorldInteractions: ClientSystem, ClientSystem
---@field Name string
---@field prevMouseLeft boolean
---@field prevMouseRight boolean
SystemMouseInWorldInteractions = {}

---@param game ClientMain
---@return SystemMouseInWorldInteractions
function SystemMouseInWorldInteractions.ctor(game) end

---@return string
function SystemMouseInWorldInteractions.get_Name() end

---@param dt number
function SystemMouseInWorldInteractions.OnFinalizeFrame(dt) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemMouseInWorldInteractions.OnMouseUp(args) end

---@return EnumClientSystemType
function SystemMouseInWorldInteractions.GetSystemType() end

---@param deltaTime number
function SystemMouseInWorldInteractions.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemMouseInWorldInteractions.OnKeyDown(args) end

---@param args KeyEvent
function SystemMouseInWorldInteractions.OnKeyPress(args) end

---@param args KeyEvent
function SystemMouseInWorldInteractions.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemMouseInWorldInteractions.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemMouseInWorldInteractions.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemMouseInWorldInteractions.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemMouseInWorldInteractions.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemMouseInWorldInteractions.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemMouseInWorldInteractions.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemMouseInWorldInteractions.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemMouseInWorldInteractions.OnHitEntity(e) end

function SystemMouseInWorldInteractions.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemMouseInWorldInteractions.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemMouseInWorldInteractions.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemMouseInWorldInteractions.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemMouseInWorldInteractions.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemMouseInWorldInteractions.OnMouseClickSlot(itemSlot) end

function SystemMouseInWorldInteractions.OnBlockTexturesLoaded() end

function SystemMouseInWorldInteractions.OnServerIdentificationReceived() end

---@param game ClientMain
function SystemMouseInWorldInteractions.Dispose(game) end

---@return boolean
function SystemMouseInWorldInteractions.CaptureAllInputs() end

---@return boolean
function SystemMouseInWorldInteractions.CaptureRawMouse() end

---@return userdata
function SystemMouseInWorldInteractions.GetType() end

---@return string
function SystemMouseInWorldInteractions.ToString() end

---@param obj userdata
---@return boolean
function SystemMouseInWorldInteractions.Equals(obj) end

---@return number
function SystemMouseInWorldInteractions.GetHashCode() end


