---@meta

---@class SystemSelectedBlockOutline: ClientSystem, ClientSystem
---@field Name string
SystemSelectedBlockOutline = {}

---@param game ClientMain
---@return SystemSelectedBlockOutline
function SystemSelectedBlockOutline.ctor(game) end

---@return string
function SystemSelectedBlockOutline.get_Name() end

---@param game ClientMain
function SystemSelectedBlockOutline.Dispose(game) end

---@param deltaTime number
function SystemSelectedBlockOutline.OnRenderFrame3DPost(deltaTime) end

---@return EnumClientSystemType
function SystemSelectedBlockOutline.GetSystemType() end

---@param deltaTime number
function SystemSelectedBlockOutline.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemSelectedBlockOutline.OnKeyDown(args) end

---@param args KeyEvent
function SystemSelectedBlockOutline.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemSelectedBlockOutline.OnMouseUp(args) end

---@param args KeyEvent
function SystemSelectedBlockOutline.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemSelectedBlockOutline.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemSelectedBlockOutline.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemSelectedBlockOutline.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemSelectedBlockOutline.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemSelectedBlockOutline.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemSelectedBlockOutline.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemSelectedBlockOutline.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemSelectedBlockOutline.OnHitEntity(e) end

function SystemSelectedBlockOutline.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemSelectedBlockOutline.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemSelectedBlockOutline.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemSelectedBlockOutline.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemSelectedBlockOutline.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemSelectedBlockOutline.OnMouseClickSlot(itemSlot) end

function SystemSelectedBlockOutline.OnBlockTexturesLoaded() end

function SystemSelectedBlockOutline.OnServerIdentificationReceived() end

---@return boolean
function SystemSelectedBlockOutline.CaptureAllInputs() end

---@return boolean
function SystemSelectedBlockOutline.CaptureRawMouse() end

---@return userdata
function SystemSelectedBlockOutline.GetType() end

---@return string
function SystemSelectedBlockOutline.ToString() end

---@param obj userdata
---@return boolean
function SystemSelectedBlockOutline.Equals(obj) end

---@return number
function SystemSelectedBlockOutline.GetHashCode() end


