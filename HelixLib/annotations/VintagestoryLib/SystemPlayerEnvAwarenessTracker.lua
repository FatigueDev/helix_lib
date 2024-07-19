---@meta

---@class SystemPlayerEnvAwarenessTracker: ClientSystem, ClientSystem
---@field Name string
SystemPlayerEnvAwarenessTracker = {}

---@param game ClientMain
---@return SystemPlayerEnvAwarenessTracker
function SystemPlayerEnvAwarenessTracker.ctor(game) end

---@return string
function SystemPlayerEnvAwarenessTracker.get_Name() end

function SystemPlayerEnvAwarenessTracker.OnOwnPlayerDataReceived() end

---@param dt number
function SystemPlayerEnvAwarenessTracker.OnGameTick(dt) end

---@param property EnumProperty
function SystemPlayerEnvAwarenessTracker.Trigger(property) end

---@return EnumClientSystemType
function SystemPlayerEnvAwarenessTracker.GetSystemType() end

---@param deltaTime number
function SystemPlayerEnvAwarenessTracker.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemPlayerEnvAwarenessTracker.OnKeyDown(args) end

---@param args KeyEvent
function SystemPlayerEnvAwarenessTracker.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemPlayerEnvAwarenessTracker.OnMouseUp(args) end

---@param args KeyEvent
function SystemPlayerEnvAwarenessTracker.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemPlayerEnvAwarenessTracker.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemPlayerEnvAwarenessTracker.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemPlayerEnvAwarenessTracker.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemPlayerEnvAwarenessTracker.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemPlayerEnvAwarenessTracker.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemPlayerEnvAwarenessTracker.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemPlayerEnvAwarenessTracker.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemPlayerEnvAwarenessTracker.OnHitEntity(e) end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemPlayerEnvAwarenessTracker.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemPlayerEnvAwarenessTracker.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemPlayerEnvAwarenessTracker.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemPlayerEnvAwarenessTracker.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemPlayerEnvAwarenessTracker.OnMouseClickSlot(itemSlot) end

function SystemPlayerEnvAwarenessTracker.OnBlockTexturesLoaded() end

function SystemPlayerEnvAwarenessTracker.OnServerIdentificationReceived() end

---@param game ClientMain
function SystemPlayerEnvAwarenessTracker.Dispose(game) end

---@return boolean
function SystemPlayerEnvAwarenessTracker.CaptureAllInputs() end

---@return boolean
function SystemPlayerEnvAwarenessTracker.CaptureRawMouse() end

---@return userdata
function SystemPlayerEnvAwarenessTracker.GetType() end

---@return string
function SystemPlayerEnvAwarenessTracker.ToString() end

---@param obj userdata
---@return boolean
function SystemPlayerEnvAwarenessTracker.Equals(obj) end

---@return number
function SystemPlayerEnvAwarenessTracker.GetHashCode() end


