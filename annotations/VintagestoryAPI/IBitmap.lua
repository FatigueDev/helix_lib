---@meta

---@class IBitmap
---@field Width number
---@field Height number
---@field Pixels number
IBitmap = {}


---@param x number
---@param y number
---@return SKColor
function IBitmap.GetPixel(x, y) end

---@param x number
---@param y number
---@return SKColor
function IBitmap.GetPixelRel(x, y) end

---@return number
function IBitmap.get_Width() end

---@return number
function IBitmap.get_Height() end

---@return number
function IBitmap.get_Pixels() end

---@param rot? number
---@param alpha? number
---@return number
function IBitmap.GetPixelsTransformed(rot, alpha) end


