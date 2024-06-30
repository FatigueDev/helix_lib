---@meta

---@class SystemNetworkProcess: ClientSystem, ClientSystem
---@field Name string
---@field TotalBytesReceivedAndReceiving number
---@field ServerPacketNames table
SystemNetworkProcess = {}

---@param game ClientMain
---@return SystemNetworkProcess
function SystemNetworkProcess.ctor(game) end

---@return string
function SystemNetworkProcess.get_Name() end

---@return number
function SystemNetworkProcess.get_TotalBytesReceivedAndReceiving() end

---@param dt number
function SystemNetworkProcess.OnSeperateThreadGameTick(dt) end

---@return number
function SystemNetworkProcess.SeperateThreadTickIntervalMs() end

function SystemNetworkProcess.NetworkProcess() end

---@param data number
---@param dataLength number
function SystemNetworkProcess.TryReadPacket(data, dataLength) end

---@return EnumClientSystemType
function SystemNetworkProcess.GetSystemType() end

---@param deltaTime number
function SystemNetworkProcess.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemNetworkProcess.OnKeyDown(args) end

---@param args KeyEvent
function SystemNetworkProcess.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemNetworkProcess.OnMouseUp(args) end

---@param args KeyEvent
function SystemNetworkProcess.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemNetworkProcess.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemNetworkProcess.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemNetworkProcess.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemNetworkProcess.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemNetworkProcess.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemNetworkProcess.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemNetworkProcess.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemNetworkProcess.OnHitEntity(e) end

function SystemNetworkProcess.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemNetworkProcess.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemNetworkProcess.OnMouseLeaveSlot(itemSlot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemNetworkProcess.OnMouseClickSlot(itemSlot) end

function SystemNetworkProcess.OnBlockTexturesLoaded() end

function SystemNetworkProcess.OnServerIdentificationReceived() end

---@param game ClientMain
function SystemNetworkProcess.Dispose(game) end

---@return boolean
function SystemNetworkProcess.CaptureAllInputs() end

---@return boolean
function SystemNetworkProcess.CaptureRawMouse() end

---@return userdata
function SystemNetworkProcess.GetType() end

---@return string
function SystemNetworkProcess.ToString() end

---@param obj userdata
---@return boolean
function SystemNetworkProcess.Equals(obj) end

---@return number
function SystemNetworkProcess.GetHashCode() end


