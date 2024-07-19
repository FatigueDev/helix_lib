---@meta

---@class SystemRenderDecals: ClientSystem, ClientSystem
---@field Name string
---@field decalModeldatas MeshData[][]
SystemRenderDecals = {}

---@param game ClientMain
---@return SystemRenderDecals
function SystemRenderDecals.ctor(game) end

---@return string
function SystemRenderDecals.get_Name() end

function SystemRenderDecals.OnBlockTexturesLoaded() end

---@param deltaTime number
function SystemRenderDecals.OnRenderFrame3D(deltaTime) end

---@return EnumClientSystemType
function SystemRenderDecals.GetSystemType() end

---@param game ClientMain
function SystemRenderDecals.Dispose(game) end

---@param deltaTime number
function SystemRenderDecals.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemRenderDecals.OnKeyDown(args) end

---@param args KeyEvent
function SystemRenderDecals.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderDecals.OnMouseUp(args) end

---@param args KeyEvent
function SystemRenderDecals.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderDecals.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderDecals.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemRenderDecals.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemRenderDecals.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemRenderDecals.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemRenderDecals.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemRenderDecals.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemRenderDecals.OnHitEntity(e) end

function SystemRenderDecals.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderDecals.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderDecals.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemRenderDecals.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemRenderDecals.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderDecals.OnMouseClickSlot(itemSlot) end

function SystemRenderDecals.OnServerIdentificationReceived() end

---@return boolean
function SystemRenderDecals.CaptureAllInputs() end

---@return boolean
function SystemRenderDecals.CaptureRawMouse() end

---@return userdata
function SystemRenderDecals.GetType() end

---@return string
function SystemRenderDecals.ToString() end

---@param obj userdata
---@return boolean
function SystemRenderDecals.Equals(obj) end

---@return number
function SystemRenderDecals.GetHashCode() end


