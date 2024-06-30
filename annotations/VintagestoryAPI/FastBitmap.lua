---@meta

---@class FastBitmap
---@field bmp SKBitmap
---@field Stride number
---@field _bmp SKBitmap
FastBitmap = {}

---@return FastBitmap
function FastBitmap.ctor() end

---@return SKBitmap
function FastBitmap.get_bmp() end

---@param value SKBitmap
function FastBitmap.set_bmp(value) end

---@return number
function FastBitmap.get_Stride() end

---@param x number
---@param y number
---@return number
function FastBitmap.GetPixel(x, y) end

---@param x number
---@param y number
---@param color number
function FastBitmap.SetPixel(x, y, color) end

---@return userdata
function FastBitmap.GetType() end

---@return string
function FastBitmap.ToString() end

---@param obj userdata
---@return boolean
function FastBitmap.Equals(obj) end

---@return number
function FastBitmap.GetHashCode() end


