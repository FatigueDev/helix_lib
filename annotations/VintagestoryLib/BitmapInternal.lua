---@meta

---@class BitmapInternal
BitmapInternal = {}

---@return BitmapInternal
function BitmapInternal.ctor() end

---@param width number
---@param height number
---@return BitmapInternal
function BitmapInternal.Create(width, height) end

---@param platform ClientPlatformAbstract
---@param bitmapref BitmapRef
---@return BitmapInternal
function BitmapInternal.CreateFromBitmap(platform, bitmapref) end

---@param x number
---@param y number
---@param color number
function BitmapInternal.SetPixel(x, y, color) end

---@param x number
---@param y number
---@return number
function BitmapInternal.GetPixel(x, y) end

---@param platform ClientPlatformAbstract
---@return BitmapRef
function BitmapInternal.ToBitmap(platform) end

---@return userdata
function BitmapInternal.GetType() end

---@return string
function BitmapInternal.ToString() end

---@param obj userdata
---@return boolean
function BitmapInternal.Equals(obj) end

---@return number
function BitmapInternal.GetHashCode() end


