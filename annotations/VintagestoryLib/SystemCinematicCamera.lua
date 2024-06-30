---@meta

---@class SystemCinematicCamera: ClientSystem, ClientSystem
---@field Name string
SystemCinematicCamera = {}

---@param game ClientMain
---@return SystemCinematicCamera
function SystemCinematicCamera.ctor(game) end

---@return string
function SystemCinematicCamera.get_Name() end

---@param deltaTime number
function SystemCinematicCamera.OnRenderFrame3D(deltaTime) end

---@param dt number
function SystemCinematicCamera.OnFinalizeFrame(dt) end

---@param percent number
function SystemCinematicCamera.AdvanceTo(percent) end

---@return EnumClientSystemType
function SystemCinematicCamera.GetSystemType() end

---@param deltaTime number
function SystemCinematicCamera.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemCinematicCamera.OnKeyDown(args) end

---@param args KeyEvent
function SystemCinematicCamera.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemCinematicCamera.OnMouseUp(args) end

---@param args KeyEvent
function SystemCinematicCamera.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemCinematicCamera.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemCinematicCamera.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemCinematicCamera.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemCinematicCamera.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemCinematicCamera.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemCinematicCamera.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemCinematicCamera.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemCinematicCamera.OnHitEntity(e) end

function SystemCinematicCamera.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemCinematicCamera.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemCinematicCamera.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemCinematicCamera.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemCinematicCamera.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemCinematicCamera.OnMouseClickSlot(itemSlot) end

function SystemCinematicCamera.OnBlockTexturesLoaded() end

function SystemCinematicCamera.OnServerIdentificationReceived() end

---@param game ClientMain
function SystemCinematicCamera.Dispose(game) end

---@return boolean
function SystemCinematicCamera.CaptureAllInputs() end

---@return boolean
function SystemCinematicCamera.CaptureRawMouse() end

---@return userdata
function SystemCinematicCamera.GetType() end

---@return string
function SystemCinematicCamera.ToString() end

---@param obj userdata
---@return boolean
function SystemCinematicCamera.Equals(obj) end

---@return number
function SystemCinematicCamera.GetHashCode() end


