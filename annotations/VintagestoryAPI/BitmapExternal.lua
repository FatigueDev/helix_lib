---@meta

---@class BitmapExternal: BitmapRef, IDisposable, IBitmap, BitmapRef
---@field Height number
---@field Width number
---@field Pixels number
---@field PixelsPtrAndLock IntPtr
---@field bmp SKBitmap
BitmapExternal = {}

---@return BitmapExternal
function BitmapExternal.ctor() end
---@param width number
---@param height number
---@return BitmapExternal
function BitmapExternal.ctor(width, height) end
---@param ms MemoryStream
---@param logger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param loc? AssetLocation Defines a complete path to an assets, including it's domain
---@return BitmapExternal
function BitmapExternal.ctor(ms, logger, loc) end
---@param filePath string
---@return BitmapExternal
function BitmapExternal.ctor(filePath) end
---@param stream Stream
---@return BitmapExternal
function BitmapExternal.ctor(stream) end
---@param data number
---@param dataLength number
---@param logger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@return BitmapExternal
function BitmapExternal.ctor(data, dataLength, logger) end

---@return number
function BitmapExternal.get_Height() end

---@return number
function BitmapExternal.get_Width() end

---@return number
function BitmapExternal.get_Pixels() end

---@return IntPtr
function BitmapExternal.get_PixelsPtrAndLock() end

function BitmapExternal.Dispose() end

---@param filename string
function BitmapExternal.Save(filename) end

-- Retrives the ARGB value from given coordinate
---@param x number
---@param y number
---@return SKColor
function BitmapExternal.GetPixel(x, y) end

-- Retrives the ARGB value from given coordinate using normalized coordinates (0..1)
---@param x number
---@param y number
---@return SKColor
function BitmapExternal.GetPixelRel(x, y) end

---@param alpha? number
function BitmapExternal.MulAlpha(alpha) end

---@param rot? number
---@param mulAlpha? number
---@return number
function BitmapExternal.GetPixelsTransformed(rot, mulAlpha) end

---@return userdata
function BitmapExternal.GetType() end

---@return string
function BitmapExternal.ToString() end

---@param obj userdata
---@return boolean
function BitmapExternal.Equals(obj) end

---@return number
function BitmapExternal.GetHashCode() end


