---@meta

---@class ZStdCompressorImpl:  IZStdCompressor
ZStdCompressorImpl = {}

---@param compressionLevel number
---@return ZStdCompressorImpl
function ZStdCompressorImpl.ctor(compressionLevel) end

---@param output number
---@param input number
---@return number
function ZStdCompressorImpl.Compress(output, input) end

---@param output number
---@param input ReadOnlySpan`1
---@return number
function ZStdCompressorImpl.Compress(output, input) end

---@return userdata
function ZStdCompressorImpl.GetType() end

---@return string
function ZStdCompressorImpl.ToString() end

---@param obj userdata
---@return boolean
function ZStdCompressorImpl.Equals(obj) end

---@return number
function ZStdCompressorImpl.GetHashCode() end


