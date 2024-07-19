---@meta

---@class ColorBlend
---@field ColorBlendDelegate nil
ColorBlend = {}


---@param blendMode EnumColorBlendMode
---@param colorBase number
---@param colorOver number
---@return number
function ColorBlend.Blend(blendMode, colorBase, colorOver) end

---@param rgb1 number
---@param rgb2 number
---@return number
function ColorBlend.Normal(rgb1, rgb2) end

---@param rgb1 number
---@param rgb2 number
---@return number
function ColorBlend.Overlay(rgb1, rgb2) end

---@param rgb1 number
---@param rgb2 number
---@return number
function ColorBlend.Darken(rgb1, rgb2) end

---@param rgb1 number
---@param rgb2 number
---@return number
function ColorBlend.Lighten(rgb1, rgb2) end

---@param rgb1 number
---@param rgb2 number
---@return number
function ColorBlend.Multiply(rgb1, rgb2) end

---@param rgb1 number
---@param rgb2 number
---@return number
function ColorBlend.Screen(rgb1, rgb2) end

---@param rgb1 number
---@param rgb2 number
---@return number
function ColorBlend.ColorDodge(rgb1, rgb2) end

---@param rgb1 number
---@param rgb2 number
---@return number
function ColorBlend.ColorBurn(rgb1, rgb2) end

---@return userdata
function ColorBlend.GetType() end

---@return string
function ColorBlend.ToString() end

---@param obj userdata
---@return boolean
function ColorBlend.Equals(obj) end

---@return number
function ColorBlend.GetHashCode() end


