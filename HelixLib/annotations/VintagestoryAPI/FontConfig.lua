---@meta

---@class FontConfig
---@field UnscaledFontsize number The size of the font before scaling is applied.
---@field Fontname string The name of the font.
---@field FontWeight FontWeight The weight of the font.
---@field Color number The color of the font.
---@field StrokeColor number The color of the font outline.
---@field StrokeWidth number The thickness of the outline.
FontConfig = {}

---@return FontConfig
function FontConfig.ctor() end

---@return userdata
function FontConfig.GetType() end

---@return string
function FontConfig.ToString() end

---@param obj userdata
---@return boolean
function FontConfig.Equals(obj) end

---@return number
function FontConfig.GetHashCode() end


