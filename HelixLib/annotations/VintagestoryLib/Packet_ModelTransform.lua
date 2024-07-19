---@meta

---@class Packet_ModelTransform
---@field TranslateX number
---@field TranslateY number
---@field TranslateZ number
---@field RotateX number
---@field RotateY number
---@field RotateZ number
---@field Rotate number
---@field OriginX number
---@field OriginY number
---@field OriginZ number
---@field ScaleX number
---@field ScaleY number
---@field ScaleZ number
---@field TranslateXFieldID number
---@field TranslateYFieldID number
---@field TranslateZFieldID number
---@field RotateXFieldID number
---@field RotateYFieldID number
---@field RotateZFieldID number
---@field RotateFieldID number
---@field OriginXFieldID number
---@field OriginYFieldID number
---@field OriginZFieldID number
---@field ScaleXFieldID number
---@field ScaleYFieldID number
---@field ScaleZFieldID number
Packet_ModelTransform = {}

---@return Packet_ModelTransform
function Packet_ModelTransform.ctor() end

---@param value number
function Packet_ModelTransform.SetTranslateX(value) end

---@param value number
function Packet_ModelTransform.SetTranslateY(value) end

---@param value number
function Packet_ModelTransform.SetTranslateZ(value) end

---@param value number
function Packet_ModelTransform.SetRotateX(value) end

---@param value number
function Packet_ModelTransform.SetRotateY(value) end

---@param value number
function Packet_ModelTransform.SetRotateZ(value) end

---@param value number
function Packet_ModelTransform.SetRotate(value) end

---@param value number
function Packet_ModelTransform.SetOriginX(value) end

---@param value number
function Packet_ModelTransform.SetOriginY(value) end

---@param value number
function Packet_ModelTransform.SetOriginZ(value) end

---@param value number
function Packet_ModelTransform.SetScaleX(value) end

---@param value number
function Packet_ModelTransform.SetScaleY(value) end

---@param value number
function Packet_ModelTransform.SetScaleZ(value) end

---@return userdata
function Packet_ModelTransform.GetType() end

---@return string
function Packet_ModelTransform.ToString() end

---@param obj userdata
---@return boolean
function Packet_ModelTransform.Equals(obj) end

---@return number
function Packet_ModelTransform.GetHashCode() end


