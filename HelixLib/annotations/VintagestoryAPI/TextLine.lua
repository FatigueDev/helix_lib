---@meta

---@class TextLine
---@field Text string The text of the text line.
---@field Bounds LineRectangled The bounds of the line of text.
---@field LeftSpace number
---@field RightSpace number
---@field NextOffsetX number
TextLine = {}

---@return TextLine
function TextLine.ctor() end

---@return userdata
function TextLine.GetType() end

---@return string
function TextLine.ToString() end

---@param obj userdata
---@return boolean
function TextLine.Equals(obj) end

---@return number
function TextLine.GetHashCode() end


