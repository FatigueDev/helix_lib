---@meta

---@class CompressionDeflate:  ICompression
CompressionDeflate = {}

---@return CompressionDeflate
function CompressionDeflate.ctor() end

---@param input MemoryStream
---@return number
function CompressionDeflate.Compress(input) end

---@param data number
---@return number
function CompressionDeflate.Compress(data) end

---@param data number
---@param len number
---@param reserveOffset number
---@return number
function CompressionDeflate.Compress(data, len, reserveOffset) end

---@param ushortdata number
---@return number
function CompressionDeflate.Compress(ushortdata) end

---@param intdata number
---@param length number
---@return number
function CompressionDeflate.Compress(intdata, length) end

---@param uintdata number
---@param length number
---@return number
function CompressionDeflate.Compress(uintdata, length) end

---@param fi number
---@return number
function CompressionDeflate.Decompress(fi) end

---@param fi number
---@param dest number
function CompressionDeflate.Decompress(fi, dest) end

---@param fi number
---@param offset number
---@param length number
---@return number
function CompressionDeflate.Decompress(fi, offset, length) end

---@param fi number
---@param buffer number
---@return number
function CompressionDeflate.DecompressAndSize(fi, buffer) end

---@param compressedData number
---@param offset number
---@param length number
---@param buffer number
---@return number
function CompressionDeflate.DecompressAndSize(compressedData, offset, length, buffer) end

---@return userdata
function CompressionDeflate.GetType() end

---@return string
function CompressionDeflate.ToString() end

---@param obj userdata
---@return boolean
function CompressionDeflate.Equals(obj) end

---@return number
function CompressionDeflate.GetHashCode() end


