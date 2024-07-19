---@meta

---@class BitmapExtensions
BitmapExtensions = {}


---@param bmp SKBitmap
---@param pixels number
function BitmapExtensions.SetPixels(bmp, pixels) end

---@param bmp SKBitmap
---@param filename string
function BitmapExtensions.Save(bmp, filename) end

---@return userdata
function BitmapExtensions.GetType() end

---@return string
function BitmapExtensions.ToString() end

---@param obj userdata
---@return boolean
function BitmapExtensions.Equals(obj) end

---@return number
function BitmapExtensions.GetHashCode() end


