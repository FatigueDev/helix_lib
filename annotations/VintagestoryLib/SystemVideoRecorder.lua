---@meta

---@class SystemVideoRecorder: ClientSystem, ClientSystem
---@field Name string
---@field Recording boolean
---@field avi IAviWriter
---@field writeAccum number
---@field firstFrameDone boolean
---@field videoFileName string
SystemVideoRecorder = {}

---@param game ClientMain
---@return SystemVideoRecorder
function SystemVideoRecorder.ctor(game) end

---@return string
function SystemVideoRecorder.get_Name() end

---@param dt number
function SystemVideoRecorder.OnFinalizeFrame(dt) end

---@return EnumClientSystemType
function SystemVideoRecorder.GetSystemType() end

---@param deltaTime number
function SystemVideoRecorder.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemVideoRecorder.OnKeyDown(args) end

---@param args KeyEvent
function SystemVideoRecorder.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemVideoRecorder.OnMouseUp(args) end

---@param args KeyEvent
function SystemVideoRecorder.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemVideoRecorder.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemVideoRecorder.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemVideoRecorder.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemVideoRecorder.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemVideoRecorder.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemVideoRecorder.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemVideoRecorder.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemVideoRecorder.OnHitEntity(e) end

function SystemVideoRecorder.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemVideoRecorder.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemVideoRecorder.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemVideoRecorder.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemVideoRecorder.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemVideoRecorder.OnMouseClickSlot(itemSlot) end

function SystemVideoRecorder.OnBlockTexturesLoaded() end

function SystemVideoRecorder.OnServerIdentificationReceived() end

---@param game ClientMain
function SystemVideoRecorder.Dispose(game) end

---@return boolean
function SystemVideoRecorder.CaptureAllInputs() end

---@return boolean
function SystemVideoRecorder.CaptureRawMouse() end

---@return userdata
function SystemVideoRecorder.GetType() end

---@return string
function SystemVideoRecorder.ToString() end

---@param obj userdata
---@return boolean
function SystemVideoRecorder.Equals(obj) end

---@return number
function SystemVideoRecorder.GetHashCode() end


