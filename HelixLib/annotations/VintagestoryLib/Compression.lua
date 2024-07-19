---@meta

---@class Compression
---@field compressor ICompression
Compression = {}

---@return Compression
function Compression.ctor() end

function Compression.Reset() end

---@param data number
---@return number
function Compression.Compress(data) end

---@param data number
---@param len number
---@return number
function Compression.CompressOffset4(data, len) end

---@param data number
---@param version number
---@return number
function Compression.Compress(data, version) end

---@param data number
---@param version number
---@return number
function Compression.Compress(data, version) end

---@param data number
---@param length number
---@param version number
---@return number
function Compression.Compress(data, length, version) end

---@param data number
---@param length number
---@param version number
---@return number
function Compression.Compress(data, length, version) end

---@param data number
---@param intdata number
---@param intLength number
---@return number
function Compression.CompressAndCombine(data, intdata, intLength) end

---@param data number
---@return number
function Compression.Decompress(data) end

---@param data number
---@param offset number
---@param length number
---@return number
function Compression.Decompress(data, offset, length) end

---@param data number
---@param dest number
---@param version number
function Compression.Decompress(data, dest, version) end

---@param data number
---@param container number
---@param reusableBytes number
---@param version number
function Compression.DecompressToUshort(data, container, reusableBytes, version) end

---@return userdata
function Compression.GetType() end

---@return string
function Compression.ToString() end

---@param obj userdata
---@return boolean
function Compression.Equals(obj) end

---@return number
function Compression.GetHashCode() end


