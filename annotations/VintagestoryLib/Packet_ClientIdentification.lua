---@meta

---@class Packet_ClientIdentification
---@field MdProtocolVersion string
---@field Playername string
---@field MpToken string
---@field ServerPassword string
---@field PlayerUID string
---@field ViewDistance number
---@field RenderMetaBlocks number
---@field NetworkVersion string
---@field ShortGameVersion string
---@field MdProtocolVersionFieldID number
---@field PlayernameFieldID number
---@field MpTokenFieldID number
---@field ServerPasswordFieldID number
---@field PlayerUIDFieldID number
---@field ViewDistanceFieldID number
---@field RenderMetaBlocksFieldID number
---@field NetworkVersionFieldID number
---@field ShortGameVersionFieldID number
Packet_ClientIdentification = {}

---@return Packet_ClientIdentification
function Packet_ClientIdentification.ctor() end

---@param value string
function Packet_ClientIdentification.SetMdProtocolVersion(value) end

---@param value string
function Packet_ClientIdentification.SetPlayername(value) end

---@param value string
function Packet_ClientIdentification.SetMpToken(value) end

---@param value string
function Packet_ClientIdentification.SetServerPassword(value) end

---@param value string
function Packet_ClientIdentification.SetPlayerUID(value) end

---@param value number
function Packet_ClientIdentification.SetViewDistance(value) end

---@param value number
function Packet_ClientIdentification.SetRenderMetaBlocks(value) end

---@param value string
function Packet_ClientIdentification.SetNetworkVersion(value) end

---@param value string
function Packet_ClientIdentification.SetShortGameVersion(value) end

---@return userdata
function Packet_ClientIdentification.GetType() end

---@return string
function Packet_ClientIdentification.ToString() end

---@param obj userdata
---@return boolean
function Packet_ClientIdentification.Equals(obj) end

---@return number
function Packet_ClientIdentification.GetHashCode() end


