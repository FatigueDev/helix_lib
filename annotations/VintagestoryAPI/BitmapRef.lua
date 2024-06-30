---@meta

---@class BitmapRef:  IDisposable, IBitmap
---@field Width number
---@field Height number
---@field Pixels number
BitmapRef = {}


---@return number
function BitmapRef.get_Width() end

---@return number
function BitmapRef.get_Height() end

---@return number
function BitmapRef.get_Pixels() end

function BitmapRef.Dispose() end

---@param x number
---@param y number
---@return SKColor
function BitmapRef.GetPixel(x, y) end

---@param x number
---@param y number
---@return SKColor
function BitmapRef.GetPixelRel(x, y) end

---@param rot? number
---@param mulalpha? number
---@return number
function BitmapRef.GetPixelsTransformed(rot, mulalpha) end

---@param filename string
function BitmapRef.Save(filename) end

---@param alpha? number
function BitmapRef.MulAlpha(alpha) end

---@return userdata
function BitmapRef.GetType() end

---@return string
function BitmapRef.ToString() end

---@param obj userdata
---@return boolean
function BitmapRef.Equals(obj) end

---@return number
function BitmapRef.GetHashCode() end


