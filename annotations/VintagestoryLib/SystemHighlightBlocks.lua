---@meta

---@class SystemHighlightBlocks: ClientSystem, ClientSystem
---@field Name string
SystemHighlightBlocks = {}

---@param game ClientMain
---@return SystemHighlightBlocks
function SystemHighlightBlocks.ctor(game) end

---@param deltaTime number
function SystemHighlightBlocks.OnRenderFrame3DTransparent(deltaTime) end

---@param game ClientMain
function SystemHighlightBlocks.Dispose(game) end

---@return string
function SystemHighlightBlocks.get_Name() end

---@return EnumClientSystemType
function SystemHighlightBlocks.GetSystemType() end

---@param deltaTime number
function SystemHighlightBlocks.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemHighlightBlocks.OnKeyDown(args) end

---@param args KeyEvent
function SystemHighlightBlocks.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemHighlightBlocks.OnMouseUp(args) end

---@param args KeyEvent
function SystemHighlightBlocks.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemHighlightBlocks.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemHighlightBlocks.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemHighlightBlocks.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemHighlightBlocks.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemHighlightBlocks.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemHighlightBlocks.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemHighlightBlocks.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemHighlightBlocks.OnHitEntity(e) end

function SystemHighlightBlocks.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemHighlightBlocks.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemHighlightBlocks.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemHighlightBlocks.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemHighlightBlocks.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemHighlightBlocks.OnMouseClickSlot(itemSlot) end

function SystemHighlightBlocks.OnBlockTexturesLoaded() end

function SystemHighlightBlocks.OnServerIdentificationReceived() end

---@return boolean
function SystemHighlightBlocks.CaptureAllInputs() end

---@return boolean
function SystemHighlightBlocks.CaptureRawMouse() end

---@return userdata
function SystemHighlightBlocks.GetType() end

---@return string
function SystemHighlightBlocks.ToString() end

---@param obj userdata
---@return boolean
function SystemHighlightBlocks.Equals(obj) end

---@return number
function SystemHighlightBlocks.GetHashCode() end


