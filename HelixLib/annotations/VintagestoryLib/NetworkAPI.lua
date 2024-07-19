---@meta

---@class NetworkAPI: ClientSystem, ClientSystem, IClientNetworkAPI, INetworkAPI
---@field Name string
NetworkAPI = {}

---@param game ClientMain
---@return NetworkAPI
function NetworkAPI.ctor(game) end

function NetworkAPI.SendPlayerNowReady() end

---@param channelName string
---@return EnumChannelState # The state of a network channel
function NetworkAPI.GetChannelState(channelName) end

---@param channelName string
---@return IClientNetworkChannel # Represent a custom network channel for sending messages between client and server
function NetworkAPI.RegisterChannel(channelName) end

---@param data number
function NetworkAPI.SendArbitraryPacket(data) end

---@param x number
---@param y number
---@param z number
---@param packetId number
---@param data? number
function NetworkAPI.SendBlockEntityPacket(x, y, z, packetId, data) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param packetId number
---@param data? number
function NetworkAPI.SendBlockEntityPacket(pos, packetId, data) end

---@param x number
---@param y number
---@param z number
---@param packetClient userdata
function NetworkAPI.SendBlockEntityPacket(x, y, z, packetClient) end

---@param packetClient userdata
function NetworkAPI.SendPacketClient(packetClient) end

---@return string
function NetworkAPI.get_Name() end

---@return EnumClientSystemType
function NetworkAPI.GetSystemType() end

---@param mouseButton number
---@param blockSelection BlockSelection Contains all the information for a players block selection event
---@param entitySelection EntitySelection
---@param beforeUseType EnumHandInteract
---@param handInteract number
---@param firstEvent boolean
---@param cancelReason EnumItemUseCancelReason
function NetworkAPI.SendHandInteraction(mouseButton, blockSelection, entitySelection, beforeUseType, handInteract, firstEvent, cancelReason) end

---@param entityid number
---@param packetId number
---@param data? number
function NetworkAPI.SendEntityPacket(entityid, packetId, data) end

---@param entityid number
---@param packetClient userdata
function NetworkAPI.SendEntityPacket(entityid, packetClient) end

---@param channelName string
---@return INetworkChannel
function NetworkAPI.GetChannel(channelName) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param packetId number
---@param data? T
function NetworkAPI.SendBlockEntityPacket(pos, packetId, data) end

---@param deltaTime number
function NetworkAPI.OnNewFrameReadOnlyMainThread(deltaTime) end

---@param args KeyEvent
function NetworkAPI.OnKeyDown(args) end

---@param args KeyEvent
function NetworkAPI.OnKeyPress(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function NetworkAPI.OnMouseUp(args) end

---@param args KeyEvent
function NetworkAPI.OnKeyUp(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function NetworkAPI.OnMouseDown(args) end

---@param args MouseEvent This contains the data for what the mouse is currently doing.
function NetworkAPI.OnMouseMove(args) end

---@param args MouseWheelEventArgs The event arguments for the mouse.
function NetworkAPI.OnMouseWheel(args) end

---@param e TouchEventArgs
function NetworkAPI.OnTouchStart(e) end

---@param e TouchEventArgs
function NetworkAPI.OnTouchMove(e) end

---@param e TouchEventArgs
function NetworkAPI.OnTouchEnd(e) end

---@param e OnUseEntityArgs
function NetworkAPI.OnUseEntity(e) end

---@param e OnUseEntityArgs
function NetworkAPI.OnHitEntity(e) end

function NetworkAPI.OnOwnPlayerDataReceived() end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function NetworkAPI.OnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function NetworkAPI.OnMouseLeaveSlot(itemSlot) end

---@return number
function NetworkAPI.SeperateThreadTickIntervalMs() end

---@param dt number
function NetworkAPI.OnSeperateThreadGameTick(dt) end

---@param itemSlot ItemSlot The default item slot to item stacks
---@return boolean
function NetworkAPI.OnMouseClickSlot(itemSlot) end

function NetworkAPI.OnBlockTexturesLoaded() end

function NetworkAPI.OnServerIdentificationReceived() end

---@param game ClientMain
function NetworkAPI.Dispose(game) end

---@return boolean
function NetworkAPI.CaptureAllInputs() end

---@return boolean
function NetworkAPI.CaptureRawMouse() end

---@return userdata
function NetworkAPI.GetType() end

---@return string
function NetworkAPI.ToString() end

---@param obj userdata
---@return boolean
function NetworkAPI.Equals(obj) end

---@return number
function NetworkAPI.GetHashCode() end


