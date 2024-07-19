---@meta

---@class SystemSoundEngine: ClientSystem, IDisposable, ClientSystem, IRenderer
---@field Name string
---@field RenderOrder number
---@field RenderRange number
SystemSoundEngine = {}

---@param game ClientMain
---@return SystemSoundEngine
function SystemSoundEngine.ctor(game) end

---@return string
function SystemSoundEngine.get_Name() end

---@return number
function SystemSoundEngine.get_RenderOrder() end

---@return number
function SystemSoundEngine.get_RenderRange() end

function SystemSoundEngine.OnBlockTexturesLoaded() end

---@param deltaTime number
---@param stage EnumRenderStage
function SystemSoundEngine.OnRenderFrame(deltaTime, stage) end

---@param game ClientMain
function SystemSoundEngine.Dispose(game) end

---@return EnumClientSystemType
function SystemSoundEngine.GetSystemType() end

function SystemSoundEngine.Dispose() end

---@param deltaTime number
function SystemSoundEngine.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemSoundEngine.OnKeyDown(args) end

---@param args KeyEvent
function SystemSoundEngine.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemSoundEngine.OnMouseUp(args) end

---@param args KeyEvent
function SystemSoundEngine.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemSoundEngine.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemSoundEngine.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemSoundEngine.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemSoundEngine.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemSoundEngine.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemSoundEngine.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemSoundEngine.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemSoundEngine.OnHitEntity(e) end

function SystemSoundEngine.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemSoundEngine.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemSoundEngine.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemSoundEngine.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemSoundEngine.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemSoundEngine.OnMouseClickSlot(itemSlot) end

function SystemSoundEngine.OnServerIdentificationReceived() end

---@return boolean
function SystemSoundEngine.CaptureAllInputs() end

---@return boolean
function SystemSoundEngine.CaptureRawMouse() end

---@return userdata
function SystemSoundEngine.GetType() end

---@return string
function SystemSoundEngine.ToString() end

---@param obj userdata
---@return boolean
function SystemSoundEngine.Equals(obj) end

---@return number
function SystemSoundEngine.GetHashCode() end


