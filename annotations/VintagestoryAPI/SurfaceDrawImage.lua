---@meta

---@class SurfaceDrawImage
SurfaceDrawImage = {}


---@param surface ImageSurface
---@param bmp BitmapRef
---@param xPos number
---@param yPos number
---@param width number
---@param height number
function SurfaceDrawImage.Image(surface, bmp, xPos, yPos, width, height) end

---@return userdata
function SurfaceDrawImage.GetType() end

---@return string
function SurfaceDrawImage.ToString() end

---@param obj userdata
---@return boolean
function SurfaceDrawImage.Equals(obj) end

---@return number
function SurfaceDrawImage.GetHashCode() end


