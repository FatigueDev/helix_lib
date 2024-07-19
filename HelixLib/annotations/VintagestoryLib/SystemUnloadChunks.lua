---@meta

---@class SystemUnloadChunks: ClientSystem, ClientSystem
---@field Name string
SystemUnloadChunks = {}

---@param game ClientMain
---@return SystemUnloadChunks
function SystemUnloadChunks.ctor(game) end

---@return string
function SystemUnloadChunks.get_Name() end

---@param game ClientMain
function SystemUnloadChunks.Dispose(game) end

---@return EnumClientSystemType
function SystemUnloadChunks.GetSystemType() end

---@param deltaTime number
function SystemUnloadChunks.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemUnloadChunks.OnKeyDown(args) end

---@param args KeyEvent
function SystemUnloadChunks.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemUnloadChunks.OnMouseUp(args) end

---@param args KeyEvent
function SystemUnloadChunks.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemUnloadChunks.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemUnloadChunks.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemUnloadChunks.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemUnloadChunks.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemUnloadChunks.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemUnloadChunks.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemUnloadChunks.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemUnloadChunks.OnHitEntity(e) end

function SystemUnloadChunks.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemUnloadChunks.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemUnloadChunks.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemUnloadChunks.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemUnloadChunks.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemUnloadChunks.OnMouseClickSlot(itemSlot) end

function SystemUnloadChunks.OnBlockTexturesLoaded() end

function SystemUnloadChunks.OnServerIdentificationReceived() end

---@return boolean
function SystemUnloadChunks.CaptureAllInputs() end

---@return boolean
function SystemUnloadChunks.CaptureRawMouse() end

---@return userdata
function SystemUnloadChunks.GetType() end

---@return string
function SystemUnloadChunks.ToString() end

---@param obj userdata
---@return boolean
function SystemUnloadChunks.Equals(obj) end

---@return number
function SystemUnloadChunks.GetHashCode() end


