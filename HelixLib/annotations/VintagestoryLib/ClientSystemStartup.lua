---@meta

---@class ClientSystemStartup: ClientSystem, ClientSystem
---@field Name string
---@field loadSoundsSlowPrerequisites number
---@field instance ClientSystemStartup
ClientSystemStartup = {}

---@param game ClientMain
---@return ClientSystemStartup
function ClientSystemStartup.ctor(game) end

function ClientSystemStartup.StartLoadingBlockShapesWhenReady() end

function ClientSystemStartup.StartLoadingItemShapesWhenReady() end

function ClientSystemStartup.StartLoadingEntityShapesWhenReady() end

function ClientSystemStartup.StartSlowLoadingSoundsWhenReady() end

---@return string
function ClientSystemStartup.get_Name() end

---@return EnumClientSystemType
function ClientSystemStartup.GetSystemType() end

---@param game ClientMain
function ClientSystemStartup.Dispose(game) end

---@param deltaTime number
function ClientSystemStartup.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function ClientSystemStartup.OnKeyDown(args) end

---@param args KeyEvent
function ClientSystemStartup.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ClientSystemStartup.OnMouseUp(args) end

---@param args KeyEvent
function ClientSystemStartup.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ClientSystemStartup.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ClientSystemStartup.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function ClientSystemStartup.OnMouseWheel(args) end

---@param e TouchEventArgs
function ClientSystemStartup.OnTouchStart(e) end

---@param e TouchEventArgs
function ClientSystemStartup.OnTouchMove(e) end

---@param e TouchEventArgs
function ClientSystemStartup.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function ClientSystemStartup.OnUseEntity(e) end

---@param e OnUseEntityArgs
function ClientSystemStartup.OnHitEntity(e) end

function ClientSystemStartup.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function ClientSystemStartup.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function ClientSystemStartup.OnMouseLeaveSlot(itemSlot) end

---@return number
function ClientSystemStartup.SeperateThreadTickIntervalMs() end

---@param dt number
function ClientSystemStartup.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function ClientSystemStartup.OnMouseClickSlot(itemSlot) end

function ClientSystemStartup.OnBlockTexturesLoaded() end

function ClientSystemStartup.OnServerIdentificationReceived() end

---@return boolean
function ClientSystemStartup.CaptureAllInputs() end

---@return boolean
function ClientSystemStartup.CaptureRawMouse() end

---@return userdata
function ClientSystemStartup.GetType() end

---@return string
function ClientSystemStartup.ToString() end

---@param obj userdata
---@return boolean
function ClientSystemStartup.Equals(obj) end

---@return number
function ClientSystemStartup.GetHashCode() end


