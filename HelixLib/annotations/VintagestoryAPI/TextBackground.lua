---@meta

---@class TextBackground
---@field Padding number
---@field HorPadding number The padding around the text.
---@field VerPadding number
---@field Radius number The radius of the text.
---@field FillColor number The fill color of the background
---@field BorderColor number The stroke color of the border
---@field BorderWidth number The thickness of the border
---@field Shade boolean Adds a blur to the background
---@field ShadeColor number
TextBackground = {}

---@return TextBackground
function TextBackground.ctor() end

---@param value number
function TextBackground.set_Padding(value) end

---@return TextBackground
function TextBackground.Clone() end

---@return userdata
function TextBackground.GetType() end

---@return string
function TextBackground.ToString() end

---@param obj userdata
---@return boolean
function TextBackground.Equals(obj) end

---@return number
function TextBackground.GetHashCode() end


