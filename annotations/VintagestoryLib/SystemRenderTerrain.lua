---@meta

---@class SystemRenderTerrain: ClientSystem, ClientSystem
---@field Name string
SystemRenderTerrain = {}

---@param game ClientMain
---@return SystemRenderTerrain
function SystemRenderTerrain.ctor(game) end

---@return string
function SystemRenderTerrain.get_Name() end

---@param dt number
function SystemRenderTerrain.OnSeperateThreadGameTick(dt) end

function SystemRenderTerrain.OnBlockTexturesLoaded() end

---@param deltaTime number
function SystemRenderTerrain.PrepareForRender(deltaTime) end

---@param deltaTime number
function SystemRenderTerrain.OnRenderOpaque(deltaTime) end

---@param deltaTime number
function SystemRenderTerrain.OnRenderOIT(deltaTime) end

---@param game ClientMain
function SystemRenderTerrain.Dispose(game) end

function SystemRenderTerrain.RedrawAllBlocks() end

---@return EnumClientSystemType
function SystemRenderTerrain.GetSystemType() end

---@param deltaTime number
function SystemRenderTerrain.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemRenderTerrain.OnKeyDown(args) end

---@param args KeyEvent
function SystemRenderTerrain.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderTerrain.OnMouseUp(args) end

---@param args KeyEvent
function SystemRenderTerrain.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderTerrain.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemRenderTerrain.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemRenderTerrain.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemRenderTerrain.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemRenderTerrain.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemRenderTerrain.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemRenderTerrain.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemRenderTerrain.OnHitEntity(e) end

function SystemRenderTerrain.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderTerrain.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderTerrain.OnMouseLeaveSlot(itemSlot) end

---@return number
function SystemRenderTerrain.SeperateThreadTickIntervalMs() end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemRenderTerrain.OnMouseClickSlot(itemSlot) end

function SystemRenderTerrain.OnServerIdentificationReceived() end

---@return boolean
function SystemRenderTerrain.CaptureAllInputs() end

---@return boolean
function SystemRenderTerrain.CaptureRawMouse() end

---@return userdata
function SystemRenderTerrain.GetType() end

---@return string
function SystemRenderTerrain.ToString() end

---@param obj userdata
---@return boolean
function SystemRenderTerrain.Equals(obj) end

---@return number
function SystemRenderTerrain.GetHashCode() end


