---@meta

---@class GeneralPacketHandler: ClientSystem, ClientSystem
---@field Name string
GeneralPacketHandler = {}

---@param game ClientMain
---@return GeneralPacketHandler
function GeneralPacketHandler.ctor(game) end

---@return string
function GeneralPacketHandler.get_Name() end

---@return EnumClientSystemType
function GeneralPacketHandler.GetSystemType() end

---@param deltaTime number
function GeneralPacketHandler.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function GeneralPacketHandler.OnKeyDown(args) end

---@param args KeyEvent
function GeneralPacketHandler.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GeneralPacketHandler.OnMouseUp(args) end

---@param args KeyEvent
function GeneralPacketHandler.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GeneralPacketHandler.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GeneralPacketHandler.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function GeneralPacketHandler.OnMouseWheel(args) end

---@param e TouchEventArgs
function GeneralPacketHandler.OnTouchStart(e) end

---@param e TouchEventArgs
function GeneralPacketHandler.OnTouchMove(e) end

---@param e TouchEventArgs
function GeneralPacketHandler.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function GeneralPacketHandler.OnUseEntity(e) end

---@param e OnUseEntityArgs
function GeneralPacketHandler.OnHitEntity(e) end

function GeneralPacketHandler.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GeneralPacketHandler.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function GeneralPacketHandler.OnMouseLeaveSlot(itemSlot) end

---@return number
function GeneralPacketHandler.SeperateThreadTickIntervalMs() end

---@param dt number
function GeneralPacketHandler.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function GeneralPacketHandler.OnMouseClickSlot(itemSlot) end

function GeneralPacketHandler.OnBlockTexturesLoaded() end

function GeneralPacketHandler.OnServerIdentificationReceived() end

---@param game ClientMain
function GeneralPacketHandler.Dispose(game) end

---@return boolean
function GeneralPacketHandler.CaptureAllInputs() end

---@return boolean
function GeneralPacketHandler.CaptureRawMouse() end

---@return userdata
function GeneralPacketHandler.GetType() end

---@return string
function GeneralPacketHandler.ToString() end

---@param obj userdata
---@return boolean
function GeneralPacketHandler.Equals(obj) end

---@return number
function GeneralPacketHandler.GetHashCode() end


