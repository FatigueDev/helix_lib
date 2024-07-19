---@meta

---@class SystemClientTickingBlocks: ClientSystem, ClientSystem
---@field Name string
SystemClientTickingBlocks = {}

---@param game ClientMain
---@return SystemClientTickingBlocks
function SystemClientTickingBlocks.ctor(game) end

---@return string
function SystemClientTickingBlocks.get_Name() end

function SystemClientTickingBlocks.OnBlockTexturesLoaded() end

function SystemClientTickingBlocks.CommitScan() end

---@return number
function SystemClientTickingBlocks.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemClientTickingBlocks.OnSeperateThreadGameTick(dt) end

---@return EnumClientSystemType
function SystemClientTickingBlocks.GetSystemType() end

---@param deltaTime number
function SystemClientTickingBlocks.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemClientTickingBlocks.OnKeyDown(args) end

---@param args KeyEvent
function SystemClientTickingBlocks.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemClientTickingBlocks.OnMouseUp(args) end

---@param args KeyEvent
function SystemClientTickingBlocks.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemClientTickingBlocks.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemClientTickingBlocks.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemClientTickingBlocks.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemClientTickingBlocks.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemClientTickingBlocks.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemClientTickingBlocks.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemClientTickingBlocks.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemClientTickingBlocks.OnHitEntity(e) end

function SystemClientTickingBlocks.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemClientTickingBlocks.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemClientTickingBlocks.OnMouseLeaveSlot(itemSlot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemClientTickingBlocks.OnMouseClickSlot(itemSlot) end

function SystemClientTickingBlocks.OnServerIdentificationReceived() end

---@param game ClientMain
function SystemClientTickingBlocks.Dispose(game) end

---@return boolean
function SystemClientTickingBlocks.CaptureAllInputs() end

---@return boolean
function SystemClientTickingBlocks.CaptureRawMouse() end

---@return userdata
function SystemClientTickingBlocks.GetType() end

---@return string
function SystemClientTickingBlocks.ToString() end

---@param obj userdata
---@return boolean
function SystemClientTickingBlocks.Equals(obj) end

---@return number
function SystemClientTickingBlocks.GetHashCode() end


