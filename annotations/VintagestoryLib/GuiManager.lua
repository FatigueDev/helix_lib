---@meta

---@class GuiManager: ClientSystem, ClientSystem
---@field Name string
---@field World IWorldAccessor
---@field DEBUG_PRINT_INTERACTIONS boolean
GuiManager = {}

---@param game ClientMain
---@return GuiManager
function GuiManager.ctor(game) end

---@return string
function GuiManager.get_Name() end

---@return IWorldAccessor # Important interface to access the game world.
function GuiManager.get_World() end

function GuiManager.OnServerIdentificationReceived() end

function GuiManager.RegisterDefaultDialogs() end

---@return EnumClientSystemType
function GuiManager.GetSystemType() end

function GuiManager.OnBlockTexturesLoaded() end

function GuiManager.OnOwnPlayerDataReceived() end

---@param deltaTime number
function GuiManager.OnBeforeRenderFrame3D(deltaTime) end

---@param deltaTime number
function GuiManager.OnRenderFrameGUI(deltaTime) end

---@param dt number
function GuiManager.OnFinalizeFrame(dt) end

---@param args KeyEvent
function GuiManager.OnKeyDown(args) end

---@param args KeyEvent
function GuiManager.OnKeyUp(args) end

---@param args KeyEvent
function GuiManager.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiManager.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiManager.OnMouseUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function GuiManager.OnMouseMove(args) end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function GuiManager.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function GuiManager.OnMouseLeaveSlot(itemSlot) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function GuiManager.OnMouseWheel(args) end

---@return boolean
function GuiManager.CaptureAllInputs() end

---@return boolean
function GuiManager.CaptureRawMouse() end

---@param packetClient Packet_Client
function GuiManager.SendPacketClient(packetClient) end

---@param game ClientMain
function GuiManager.Dispose(game) end

---@param deltaTime number
function GuiManager.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param e TouchEventArgs
function GuiManager.OnTouchStart(e) end

---@param e TouchEventArgs
function GuiManager.OnTouchMove(e) end

---@param e TouchEventArgs
function GuiManager.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function GuiManager.OnUseEntity(e) end

---@param e OnUseEntityArgs
function GuiManager.OnHitEntity(e) end

---@return number
function GuiManager.SeperateThreadTickIntervalMs() end

---@param dt number
function GuiManager.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function GuiManager.OnMouseClickSlot(itemSlot) end

---@return userdata
function GuiManager.GetType() end

---@return string
function GuiManager.ToString() end

---@param obj userdata
---@return boolean
function GuiManager.Equals(obj) end

---@return number
function GuiManager.GetHashCode() end


