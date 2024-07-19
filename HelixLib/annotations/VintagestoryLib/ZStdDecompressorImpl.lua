---@meta

---@class ZStdDecompressorImpl:  IZStdDecompressor
ZStdDecompressorImpl = {}

---@return ZStdDecompressorImpl
function ZStdDecompressorImpl.ctor() end

---@param output number
---@param input number
function ZStdDecompressorImpl.Decompress(output, input) end

---@param output number
---@param input ReadOnlySpan`1
---@return number
function ZStdDecompressorImpl.Decompress(output, input) end

---@return userdata
function ZStdDecompressorImpl.GetType() end

---@return string
function ZStdDecompressorImpl.ToString() end

---@param obj userdata
---@return boolean
function ZStdDecompressorImpl.Equals(obj) end

---@return number
function ZStdDecompressorImpl.GetHashCode() end


