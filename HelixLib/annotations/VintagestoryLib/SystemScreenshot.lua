---@meta

---@class SystemScreenshot: ClientSystem, ClientSystem
---@field Name string
SystemScreenshot = {}

---@param game ClientMain
---@return SystemScreenshot
function SystemScreenshot.ctor(game) end

---@return string
function SystemScreenshot.get_Name() end

---@param dt number
function SystemScreenshot.OnFrameDone(dt) end

---@return string
function SystemScreenshot.GetMetaData() end

---@return EnumClientSystemType
function SystemScreenshot.GetSystemType() end

---@param deltaTime number
function SystemScreenshot.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemScreenshot.OnKeyDown(args) end

---@param args KeyEvent
function SystemScreenshot.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemScreenshot.OnMouseUp(args) end

---@param args KeyEvent
function SystemScreenshot.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemScreenshot.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemScreenshot.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemScreenshot.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemScreenshot.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemScreenshot.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemScreenshot.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemScreenshot.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemScreenshot.OnHitEntity(e) end

function SystemScreenshot.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemScreenshot.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemScreenshot.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemScreenshot.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemScreenshot.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemScreenshot.OnMouseClickSlot(itemSlot) end

function SystemScreenshot.OnBlockTexturesLoaded() end

function SystemScreenshot.OnServerIdentificationReceived() end

---@param game ClientMain
function SystemScreenshot.Dispose(game) end

---@return boolean
function SystemScreenshot.CaptureAllInputs() end

---@return boolean
function SystemScreenshot.CaptureRawMouse() end

---@return userdata
function SystemScreenshot.GetType() end

---@return string
function SystemScreenshot.ToString() end

---@param obj userdata
---@return boolean
function SystemScreenshot.Equals(obj) end

---@return number
function SystemScreenshot.GetHashCode() end


