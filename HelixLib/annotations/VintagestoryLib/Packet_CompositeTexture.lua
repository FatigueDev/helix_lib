---@meta

---@class Packet_CompositeTexture
---@field Base string
---@field Overlays Packet_BlendedOverlayTexture[]
---@field OverlaysCount number
---@field OverlaysLength number
---@field Alternates Packet_CompositeTexture[]
---@field AlternatesCount number
---@field AlternatesLength number
---@field Rotation number
---@field Alpha number
---@field Tiles Packet_CompositeTexture[]
---@field TilesCount number
---@field TilesLength number
---@field TilesWidth number
---@field BaseFieldID number
---@field OverlaysFieldID number
---@field AlternatesFieldID number
---@field RotationFieldID number
---@field AlphaFieldID number
---@field TilesFieldID number
---@field TilesWidthFieldID number
Packet_CompositeTexture = {}

---@return Packet_CompositeTexture
function Packet_CompositeTexture.ctor() end

---@param value string
function Packet_CompositeTexture.SetBase(value) end

---@return Packet_BlendedOverlayTexture[]
function Packet_CompositeTexture.GetOverlays() end

---@param value Packet_BlendedOverlayTexture[]
---@param count number
---@param length number
function Packet_CompositeTexture.SetOverlays(value, count, length) end

---@param value Packet_BlendedOverlayTexture[]
function Packet_CompositeTexture.SetOverlays(value) end

---@return number
function Packet_CompositeTexture.GetOverlaysCount() end

---@param value Packet_BlendedOverlayTexture
function Packet_CompositeTexture.OverlaysAdd(value) end

---@return Packet_CompositeTexture[]
function Packet_CompositeTexture.GetAlternates() end

---@param value Packet_CompositeTexture[]
---@param count number
---@param length number
function Packet_CompositeTexture.SetAlternates(value, count, length) end

---@param value Packet_CompositeTexture[]
function Packet_CompositeTexture.SetAlternates(value) end

---@return number
function Packet_CompositeTexture.GetAlternatesCount() end

---@param value Packet_CompositeTexture
function Packet_CompositeTexture.AlternatesAdd(value) end

---@param value number
function Packet_CompositeTexture.SetRotation(value) end

---@param value number
function Packet_CompositeTexture.SetAlpha(value) end

---@return Packet_CompositeTexture[]
function Packet_CompositeTexture.GetTiles() end

---@param value Packet_CompositeTexture[]
---@param count number
---@param length number
function Packet_CompositeTexture.SetTiles(value, count, length) end

---@param value Packet_CompositeTexture[]
function Packet_CompositeTexture.SetTiles(value) end

---@return number
function Packet_CompositeTexture.GetTilesCount() end

---@param value Packet_CompositeTexture
function Packet_CompositeTexture.TilesAdd(value) end

---@param value number
function Packet_CompositeTexture.SetTilesWidth(value) end

---@return userdata
function Packet_CompositeTexture.GetType() end

---@return string
function Packet_CompositeTexture.ToString() end

---@param obj userdata
---@return boolean
function Packet_CompositeTexture.Equals(obj) end

---@return number
function Packet_CompositeTexture.GetHashCode() end


