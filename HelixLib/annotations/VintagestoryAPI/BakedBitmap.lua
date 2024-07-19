---@meta

---@class BakedBitmap:  IBitmap
---@field Pixels number
---@field TexturePixels number
---@field Width number
---@field Height number
BakedBitmap = {}

---@return BakedBitmap
function BakedBitmap.ctor() end

---@return number
function BakedBitmap.get_Pixels() end

---@param x number
---@param y number
---@return SKColor
function BakedBitmap.GetPixel(x, y) end

---@param x number
---@param y number
---@return number
function BakedBitmap.GetPixelArgb(x, y) end

---@param x number
---@param y number
---@return SKColor
function BakedBitmap.GetPixelRel(x, y) end

---@param rot? number
---@param alpha? number
---@return number
function BakedBitmap.GetPixelsTransformed(rot, alpha) end

---@return userdata
function BakedBitmap.GetType() end

---@return string
function BakedBitmap.ToString() end

---@param obj userdata
---@return boolean
function BakedBitmap.Equals(obj) end

---@return number
function BakedBitmap.GetHashCode() end


