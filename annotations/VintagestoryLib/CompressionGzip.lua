---@meta

---@class CompressionGzip:  ICompression
CompressionGzip = {}

---@return CompressionGzip
function CompressionGzip.ctor() end

---@param input MemoryStream
---@return number
function CompressionGzip.Compress(input) end

---@param data number
---@return number
function CompressionGzip.Compress(data) end

---@param data number
---@param len number
---@param reserveOffset number
---@return number
function CompressionGzip.Compress(data, len, reserveOffset) end

---@param ushortdata number
---@return number
function CompressionGzip.Compress(ushortdata) end

---@param data number
---@param length number
---@return number
function CompressionGzip.Compress(data, length) end

---@param data number
---@param length number
---@return number
function CompressionGzip.Compress(data, length) end

---@param fi number
---@return number
function CompressionGzip.Decompress(fi) end

---@param fi number
---@param dest number
function CompressionGzip.Decompress(fi, dest) end

---@param fi number
---@param offset number
---@param length number
---@return number
function CompressionGzip.Decompress(fi, offset, length) end

---@param fi number
---@param buffer number
---@return number
function CompressionGzip.DecompressAndSize(fi, buffer) end

---@param compressedData number
---@param offset number
---@param length number
---@param buffer number
---@return number
function CompressionGzip.DecompressAndSize(compressedData, offset, length, buffer) end

---@param compressedData number
---@param offset number
---@return number
function CompressionGzip.DecompressFromOffset(compressedData, offset) end

---@return userdata
function CompressionGzip.GetType() end

---@return string
function CompressionGzip.ToString() end

---@param obj userdata
---@return boolean
function CompressionGzip.Equals(obj) end

---@return number
function CompressionGzip.GetHashCode() end


