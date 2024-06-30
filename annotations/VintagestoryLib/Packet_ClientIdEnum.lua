---@meta

---@class Packet_ClientIdEnum
---@field LoginTokenQuery number
---@field PlayerIdentification number
---@field PingReply number
---@field BlockPlaceOrBreak number
---@field ChatLine number
---@field ActivateInventorySlot number
---@field MoveItemstack number
---@field FlipItemstacks number
---@field CreateItemstack number
---@field RequestJoin number
---@field SpecialKey number
---@field SelectedHotbarSlot number
---@field Leave number
---@field ServerQuery number
---@field EntityInteraction number
---@field PlayerPosition number
---@field RequestModeChange number
---@field MoveKeyChange number
---@field BlockEntityPacket number
---@field EntityPacket number
---@field CustomPacket number
---@field HandInteraction number
---@field ClientLoaded number
---@field SetToolMode number
---@field BlockDamage number
---@field ClientPlaying number
---@field InvOpenClose number
---@field RuntimeSetting number
Packet_ClientIdEnum = {}

---@return Packet_ClientIdEnum
function Packet_ClientIdEnum.ctor() end

---@return userdata
function Packet_ClientIdEnum.GetType() end

---@return string
function Packet_ClientIdEnum.ToString() end

---@param obj userdata
---@return boolean
function Packet_ClientIdEnum.Equals(obj) end

---@return number
function Packet_ClientIdEnum.GetHashCode() end


