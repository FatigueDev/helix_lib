---@meta

---@class SystemChunkVisibilityCalc: ClientSystem, ClientSystem
---@field Name string
SystemChunkVisibilityCalc = {}

---@param game ClientMain
---@return SystemChunkVisibilityCalc
function SystemChunkVisibilityCalc.ctor(game) end

---@return string
function SystemChunkVisibilityCalc.get_Name() end

function SystemChunkVisibilityCalc.OnBlockTexturesLoaded() end

---@return number
function SystemChunkVisibilityCalc.SeperateThreadTickIntervalMs() end

---@param dt number
function SystemChunkVisibilityCalc.OnSeperateThreadGameTick(dt) end

---@param block Block Basic class for a placeable block
---@return boolean
function SystemChunkVisibilityCalc.AllSidesOpaque(block) end

---@param posX number
---@param posY number
---@param posZ number
---@return boolean
function SystemChunkVisibilityCalc.DidWeExitChunk(posX, posY, posZ) end

---@return EnumClientSystemType
function SystemChunkVisibilityCalc.GetSystemType() end

---@param deltaTime number
function SystemChunkVisibilityCalc.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function SystemChunkVisibilityCalc.OnKeyDown(args) end

---@param args KeyEvent
function SystemChunkVisibilityCalc.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemChunkVisibilityCalc.OnMouseUp(args) end

---@param args KeyEvent
function SystemChunkVisibilityCalc.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemChunkVisibilityCalc.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function SystemChunkVisibilityCalc.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function SystemChunkVisibilityCalc.OnMouseWheel(args) end

---@param e TouchEventArgs
function SystemChunkVisibilityCalc.OnTouchStart(e) end

---@param e TouchEventArgs
function SystemChunkVisibilityCalc.OnTouchMove(e) end

---@param e TouchEventArgs
function SystemChunkVisibilityCalc.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function SystemChunkVisibilityCalc.OnUseEntity(e) end

---@param e OnUseEntityArgs
function SystemChunkVisibilityCalc.OnHitEntity(e) end

function SystemChunkVisibilityCalc.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function SystemChunkVisibilityCalc.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemChunkVisibilityCalc.OnMouseLeaveSlot(itemSlot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function SystemChunkVisibilityCalc.OnMouseClickSlot(itemSlot) end

function SystemChunkVisibilityCalc.OnServerIdentificationReceived() end

---@param game ClientMain
function SystemChunkVisibilityCalc.Dispose(game) end

---@return boolean
function SystemChunkVisibilityCalc.CaptureAllInputs() end

---@return boolean
function SystemChunkVisibilityCalc.CaptureRawMouse() end

---@return userdata
function SystemChunkVisibilityCalc.GetType() end

---@return string
function SystemChunkVisibilityCalc.ToString() end

---@param obj userdata
---@return boolean
function SystemChunkVisibilityCalc.Equals(obj) end

---@return number
function SystemChunkVisibilityCalc.GetHashCode() end


