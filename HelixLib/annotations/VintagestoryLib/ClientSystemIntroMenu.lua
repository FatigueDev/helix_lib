---@meta

---@class ClientSystemIntroMenu: ClientSystem, ClientSystem
---@field Name string
ClientSystemIntroMenu = {}

---@param game ClientMain
---@return ClientSystemIntroMenu
function ClientSystemIntroMenu.ctor(game) end

---@return string
function ClientSystemIntroMenu.get_Name() end

---@return EnumClientSystemType
function ClientSystemIntroMenu.GetSystemType() end

function ClientSystemIntroMenu.OnBlockTexturesLoaded() end

---@param deltaTime number
function ClientSystemIntroMenu.OnRenderGUI(deltaTime) end

---@param args KeyEvent
function ClientSystemIntroMenu.OnKeyDown(args) end

---@param args KeyEvent
function ClientSystemIntroMenu.OnKeyUp(args) end

---@param deltaTime number
function ClientSystemIntroMenu.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function ClientSystemIntroMenu.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ClientSystemIntroMenu.OnMouseUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ClientSystemIntroMenu.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ClientSystemIntroMenu.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function ClientSystemIntroMenu.OnMouseWheel(args) end

---@param e TouchEventArgs
function ClientSystemIntroMenu.OnTouchStart(e) end

---@param e TouchEventArgs
function ClientSystemIntroMenu.OnTouchMove(e) end

---@param e TouchEventArgs
function ClientSystemIntroMenu.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function ClientSystemIntroMenu.OnUseEntity(e) end

---@param e OnUseEntityArgs
function ClientSystemIntroMenu.OnHitEntity(e) end

function ClientSystemIntroMenu.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function ClientSystemIntroMenu.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function ClientSystemIntroMenu.OnMouseLeaveSlot(itemSlot) end

---@return number
function ClientSystemIntroMenu.SeperateThreadTickIntervalMs() end

---@param dt number
function ClientSystemIntroMenu.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function ClientSystemIntroMenu.OnMouseClickSlot(itemSlot) end

function ClientSystemIntroMenu.OnServerIdentificationReceived() end

---@param game ClientMain
function ClientSystemIntroMenu.Dispose(game) end

---@return boolean
function ClientSystemIntroMenu.CaptureAllInputs() end

---@return boolean
function ClientSystemIntroMenu.CaptureRawMouse() end

---@return userdata
function ClientSystemIntroMenu.GetType() end

---@return string
function ClientSystemIntroMenu.ToString() end

---@param obj userdata
---@return boolean
function ClientSystemIntroMenu.Equals(obj) end

---@return number
function ClientSystemIntroMenu.GetHashCode() end


