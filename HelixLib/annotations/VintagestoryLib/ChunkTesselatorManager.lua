---@meta

---@class ChunkTesselatorManager: ClientSystem, ClientSystem
---@field Name string
---@field cumulativeTime number
---@field cumulativeCount number
ChunkTesselatorManager = {}

---@param game ClientMain
---@return ChunkTesselatorManager
function ChunkTesselatorManager.ctor(game) end

---@return string
function ChunkTesselatorManager.get_Name() end

---@param game ClientMain
function ChunkTesselatorManager.Dispose(game) end

---@return number
function ChunkTesselatorManager.SeperateThreadTickIntervalMs() end

function ChunkTesselatorManager.OnBlockTexturesLoaded() end

---@param dt number
function ChunkTesselatorManager.OnBeforeFrame(dt) end

---@param dt number
function ChunkTesselatorManager.OnSeperateThreadGameTick(dt) end

---@param chunkX number
---@param chunkY number
---@param chunkZ number
---@param priority boolean
---@param skipChunkCenter boolean
---@param requeue boolean
---@return number
function ChunkTesselatorManager.TesselateChunk(chunkX, chunkY, chunkZ, priority, skipChunkCenter, requeue) end

---@return EnumClientSystemType
function ChunkTesselatorManager.GetSystemType() end

---@param deltaTime number
function ChunkTesselatorManager.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function ChunkTesselatorManager.OnKeyDown(args) end

---@param args KeyEvent
function ChunkTesselatorManager.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ChunkTesselatorManager.OnMouseUp(args) end

---@param args KeyEvent
function ChunkTesselatorManager.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ChunkTesselatorManager.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ChunkTesselatorManager.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function ChunkTesselatorManager.OnMouseWheel(args) end

---@param e TouchEventArgs
function ChunkTesselatorManager.OnTouchStart(e) end

---@param e TouchEventArgs
function ChunkTesselatorManager.OnTouchMove(e) end

---@param e TouchEventArgs
function ChunkTesselatorManager.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function ChunkTesselatorManager.OnUseEntity(e) end

---@param e OnUseEntityArgs
function ChunkTesselatorManager.OnHitEntity(e) end

function ChunkTesselatorManager.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function ChunkTesselatorManager.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function ChunkTesselatorManager.OnMouseLeaveSlot(itemSlot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function ChunkTesselatorManager.OnMouseClickSlot(itemSlot) end

function ChunkTesselatorManager.OnServerIdentificationReceived() end

---@return boolean
function ChunkTesselatorManager.CaptureAllInputs() end

---@return boolean
function ChunkTesselatorManager.CaptureRawMouse() end

---@return userdata
function ChunkTesselatorManager.GetType() end

---@return string
function ChunkTesselatorManager.ToString() end

---@param obj userdata
---@return boolean
function ChunkTesselatorManager.Equals(obj) end

---@return number
function ChunkTesselatorManager.GetHashCode() end


