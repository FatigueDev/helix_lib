---@meta

---@class SystemPlayerSounds: ClientSystem, ClientSystem
---@field Name string
SystemPlayerSounds = {}

---@param game ClientMain
---@return SystemPlayerSounds
function SystemPlayerSounds.ctor(game) end

---@return string
function SystemPlayerSounds.get_Name() end

function SystemPlayerSounds.OnBlockTexturesLoaded() end

---@param dt number
function SystemPlayerSounds.OnGameTick(dt) end

---@param game ClientMain
function SystemPlayerSounds.Dispose(game) end

---@return EnumClientSystemType
function SystemPlayerSounds.GetSystemType() end

---@param deltaTime number
function SystemPlayerSounds.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemPlayerSounds.OnKeyDown(args) end

---@param args KeyEvent
function SystemPlayerSounds.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemPlayerSounds.OnMouseUp(args) end

---@param args KeyEvent
function SystemPlayerSounds.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemPlayerSounds.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemPlayerSounds.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemPlayerSounds.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemPlayerSounds.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemPlayerSounds.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemPlayerSounds.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemPlayerSounds.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemPlayerSounds.OnHitEntity(e) end

function SystemPlayerSounds.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemPlayerSounds.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemPlayerSounds.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemPlayerSounds.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemPlayerSounds.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemPlayerSounds.OnMouseClickSlot(itemSlot) end

function SystemPlayerSounds.OnServerIdentificationReceived() end

---@return boolean
function SystemPlayerSounds.CaptureAllInputs() end

---@return boolean
function SystemPlayerSounds.CaptureRawMouse() end

---@return userdata
function SystemPlayerSounds.GetType() end

---@return string
function SystemPlayerSounds.ToString() end

---@param obj userdata
---@return boolean
function SystemPlayerSounds.Equals(obj) end

---@return number
function SystemPlayerSounds.GetHashCode() end


