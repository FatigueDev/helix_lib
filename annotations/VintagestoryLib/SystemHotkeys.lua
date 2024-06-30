---@meta

---@class SystemHotkeys: ClientSystem, ClientSystem
---@field Name string
SystemHotkeys = {}

---@param game ClientMain
---@return SystemHotkeys
function SystemHotkeys.ctor(game) end

---@return string
function SystemHotkeys.get_Name() end

function SystemHotkeys.OnBlockTexturesLoaded() end

---@return EnumClientSystemType
function SystemHotkeys.GetSystemType() end

---@param deltaTime number
function SystemHotkeys.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemHotkeys.OnKeyDown(args) end

---@param args KeyEvent
function SystemHotkeys.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemHotkeys.OnMouseUp(args) end

---@param args KeyEvent
function SystemHotkeys.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemHotkeys.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemHotkeys.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemHotkeys.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemHotkeys.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemHotkeys.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemHotkeys.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemHotkeys.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemHotkeys.OnHitEntity(e) end

function SystemHotkeys.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemHotkeys.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemHotkeys.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemHotkeys.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemHotkeys.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemHotkeys.OnMouseClickSlot(itemSlot) end

function SystemHotkeys.OnServerIdentificationReceived() end

---@param game ClientMain
function SystemHotkeys.Dispose(game) end

---@return boolean
function SystemHotkeys.CaptureAllInputs() end

---@return boolean
function SystemHotkeys.CaptureRawMouse() end

---@return userdata
function SystemHotkeys.GetType() end

---@return string
function SystemHotkeys.ToString() end

---@param obj userdata
---@return boolean
function SystemHotkeys.Equals(obj) end

---@return number
function SystemHotkeys.GetHashCode() end


