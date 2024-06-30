---@meta

---@class ZStdWrapper
ZStdWrapper = {}

---@return ZStdWrapper
function ZStdWrapper.ctor() end

---@param compressionLevel number
---@return IZStdCompressor
function ZStdWrapper.ConstructCompressor(compressionLevel) end

---@return IZStdDecompressor
function ZStdWrapper.CreateDecompressor() end

---@param compressedFrame ReadOnlySpan`1
---@return number
function ZStdWrapper.GetDecompressedSize(compressedFrame) end

---@return userdata
function ZStdWrapper.GetType() end

---@return string
function ZStdWrapper.ToString() end

---@param obj userdata
---@return boolean
function ZStdWrapper.Equals(obj) end

---@return number
function ZStdWrapper.GetHashCode() end


