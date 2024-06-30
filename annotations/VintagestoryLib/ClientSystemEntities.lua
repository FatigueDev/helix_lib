---@meta

---@class ClientSystemEntities: ClientSystem, ClientSystem
---@field Name string
ClientSystemEntities = {}

---@param game ClientMain
---@return ClientSystemEntities
function ClientSystemEntities.ctor(game) end

---@return string
function ClientSystemEntities.get_Name() end

---@return EnumClientSystemType
function ClientSystemEntities.GetSystemType() end

---@param entitypacket Packet_Entity
---@param game ClientMain
---@param addToLoadQueue? boolean
---@return Entity # The basic class for all entities in the game
function ClientSystemEntities.createOrUpdateEntityFromPacket(entitypacket, game, addToLoadQueue) end

---@param packet Packet_EntityPosition
---@return EntityPos # Represents all positional information of an entity, such as coordinates, motion and angles
function ClientSystemEntities.entityPosFromPacket(packet) end

---@param deltaTime number
function ClientSystemEntities.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function ClientSystemEntities.OnKeyDown(args) end

---@param args KeyEvent
function ClientSystemEntities.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ClientSystemEntities.OnMouseUp(args) end

---@param args KeyEvent
function ClientSystemEntities.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ClientSystemEntities.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function ClientSystemEntities.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function ClientSystemEntities.OnMouseWheel(args) end

---@param e TouchEventArgs
function ClientSystemEntities.OnTouchStart(e) end

---@param e TouchEventArgs
function ClientSystemEntities.OnTouchMove(e) end

---@param e TouchEventArgs
function ClientSystemEntities.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function ClientSystemEntities.OnUseEntity(e) end

---@param e OnUseEntityArgs
function ClientSystemEntities.OnHitEntity(e) end

function ClientSystemEntities.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function ClientSystemEntities.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function ClientSystemEntities.OnMouseLeaveSlot(itemSlot) end

---@return number
function ClientSystemEntities.SeperateThreadTickIntervalMs() end

---@param dt number
function ClientSystemEntities.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function ClientSystemEntities.OnMouseClickSlot(itemSlot) end

function ClientSystemEntities.OnBlockTexturesLoaded() end

function ClientSystemEntities.OnServerIdentificationReceived() end

---@param game ClientMain
function ClientSystemEntities.Dispose(game) end

---@return boolean
function ClientSystemEntities.CaptureAllInputs() end

---@return boolean
function ClientSystemEntities.CaptureRawMouse() end

---@return userdata
function ClientSystemEntities.GetType() end

---@return string
function ClientSystemEntities.ToString() end

---@param obj userdata
---@return boolean
function ClientSystemEntities.Equals(obj) end

---@return number
function ClientSystemEntities.GetHashCode() end


