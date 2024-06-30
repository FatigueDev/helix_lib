---@meta

---@class Packet_CompositeShape
---@field Base string
---@field Rotatex number
---@field Rotatey number
---@field Rotatez number
---@field Alternates Packet_CompositeShape[]
---@field AlternatesCount number
---@field AlternatesLength number
---@field Overlays Packet_CompositeShape[]
---@field OverlaysCount number
---@field OverlaysLength number
---@field VoxelizeShape number
---@field SelectiveElements string
---@field SelectiveElementsCount number
---@field SelectiveElementsLength number
---@field QuantityElements number
---@field QuantityElementsSet number
---@field Format number
---@field Offsetx number
---@field Offsety number
---@field Offsetz number
---@field InsertBakedTextures boolean
---@field ScaleAdjust number
---@field BaseFieldID number
---@field RotatexFieldID number
---@field RotateyFieldID number
---@field RotatezFieldID number
---@field AlternatesFieldID number
---@field OverlaysFieldID number
---@field VoxelizeShapeFieldID number
---@field SelectiveElementsFieldID number
---@field QuantityElementsFieldID number
---@field QuantityElementsSetFieldID number
---@field FormatFieldID number
---@field OffsetxFieldID number
---@field OffsetyFieldID number
---@field OffsetzFieldID number
---@field InsertBakedTexturesFieldID number
---@field ScaleAdjustFieldID number
Packet_CompositeShape = {}

---@return Packet_CompositeShape
function Packet_CompositeShape.ctor() end

---@param value string
function Packet_CompositeShape.SetBase(value) end

---@param value number
function Packet_CompositeShape.SetRotatex(value) end

---@param value number
function Packet_CompositeShape.SetRotatey(value) end

---@param value number
function Packet_CompositeShape.SetRotatez(value) end

---@return Packet_CompositeShape[]
function Packet_CompositeShape.GetAlternates() end

---@param value Packet_CompositeShape[]
---@param count number
---@param length number
function Packet_CompositeShape.SetAlternates(value, count, length) end

---@param value Packet_CompositeShape[]
function Packet_CompositeShape.SetAlternates(value) end

---@return number
function Packet_CompositeShape.GetAlternatesCount() end

---@param value Packet_CompositeShape
function Packet_CompositeShape.AlternatesAdd(value) end

---@return Packet_CompositeShape[]
function Packet_CompositeShape.GetOverlays() end

---@param value Packet_CompositeShape[]
---@param count number
---@param length number
function Packet_CompositeShape.SetOverlays(value, count, length) end

---@param value Packet_CompositeShape[]
function Packet_CompositeShape.SetOverlays(value) end

---@return number
function Packet_CompositeShape.GetOverlaysCount() end

---@param value Packet_CompositeShape
function Packet_CompositeShape.OverlaysAdd(value) end

---@param value number
function Packet_CompositeShape.SetVoxelizeShape(value) end

---@return string
function Packet_CompositeShape.GetSelectiveElements() end

---@param value string
---@param count number
---@param length number
function Packet_CompositeShape.SetSelectiveElements(value, count, length) end

---@param value string
function Packet_CompositeShape.SetSelectiveElements(value) end

---@return number
function Packet_CompositeShape.GetSelectiveElementsCount() end

---@param value string
function Packet_CompositeShape.SelectiveElementsAdd(value) end

---@param value number
function Packet_CompositeShape.SetQuantityElements(value) end

---@param value number
function Packet_CompositeShape.SetQuantityElementsSet(value) end

---@param value number
function Packet_CompositeShape.SetFormat(value) end

---@param value number
function Packet_CompositeShape.SetOffsetx(value) end

---@param value number
function Packet_CompositeShape.SetOffsety(value) end

---@param value number
function Packet_CompositeShape.SetOffsetz(value) end

---@param value boolean
function Packet_CompositeShape.SetInsertBakedTextures(value) end

---@param value number
function Packet_CompositeShape.SetScaleAdjust(value) end

---@return userdata
function Packet_CompositeShape.GetType() end

---@return string
function Packet_CompositeShape.ToString() end

---@param obj userdata
---@return boolean
function Packet_CompositeShape.Equals(obj) end

---@return number
function Packet_CompositeShape.GetHashCode() end


