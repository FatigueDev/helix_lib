---@meta

---@class ColorMap
---@field Code string
---@field Texture CompositeTexture
---@field Padding number
---@field LoadIntoBlockTextureAtlas boolean
---@field ExtraFlags number
---@field Pixels number
---@field OuterSize Size2i
---@field BlockAtlasTextureSubId number
---@field RectIndex number
---@field ColorMapLoadedFlag number
ColorMap = {}

---@return ColorMap
function ColorMap.ctor() end

---@return userdata
function ColorMap.GetType() end

---@return string
function ColorMap.ToString() end

---@param obj userdata
---@return boolean
function ColorMap.Equals(obj) end

---@return number
function ColorMap.GetHashCode() end


