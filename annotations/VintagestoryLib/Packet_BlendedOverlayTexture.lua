---@meta

---@class Packet_BlendedOverlayTexture
---@field Base string
---@field Mode number
---@field BaseFieldID number
---@field ModeFieldID number
Packet_BlendedOverlayTexture = {}

---@return Packet_BlendedOverlayTexture
function Packet_BlendedOverlayTexture.ctor() end

---@param value string
function Packet_BlendedOverlayTexture.SetBase(value) end

---@param value number
function Packet_BlendedOverlayTexture.SetMode(value) end

---@return userdata
function Packet_BlendedOverlayTexture.GetType() end

---@return string
function Packet_BlendedOverlayTexture.ToString() end

---@param obj userdata
---@return boolean
function Packet_BlendedOverlayTexture.Equals(obj) end

---@return number
function Packet_BlendedOverlayTexture.GetHashCode() end


