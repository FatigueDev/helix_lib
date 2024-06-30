---@meta

-- A client side player
---@class IClientPlayer:  IPlayer
---@field CameraPitch number The cameras current pitch
---@field CameraRoll number
---@field CameraYaw number
---@field CameraMode EnumCameraMode The players current camera mode
IClientPlayer = {}


---@return number
function IClientPlayer.get_CameraPitch() end

---@param value number
function IClientPlayer.set_CameraPitch(value) end

---@return number
function IClientPlayer.get_CameraRoll() end

---@param value number
function IClientPlayer.set_CameraRoll(value) end

---@return number
function IClientPlayer.get_CameraYaw() end

---@param value number
function IClientPlayer.set_CameraYaw(value) end

---@return EnumCameraMode
function IClientPlayer.get_CameraMode() end

-- Writes given message to the players current chat group but doesn't send it to the server
---@param message string
function IClientPlayer.ShowChatNotification(message) end

-- Tells the engine to run a first person animtion
---@param anim EnumHandInteract
function IClientPlayer.TriggerFpAnimation(anim) end


