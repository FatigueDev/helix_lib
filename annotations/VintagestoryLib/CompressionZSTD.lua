---@meta

---@class CompressionZSTD:  ICompression
---@field Buffer number
---@field ZSTDCompressionLevel number
CompressionZSTD = {}

---@return CompressionZSTD
function CompressionZSTD.ctor() end

---@return number
function CompressionZSTD.get_Buffer() end

---@param data number
---@return number
function CompressionZSTD.Compress(data) end

---@param data number
---@param length number
---@param reserveOffset number
---@return number
function CompressionZSTD.Compress(data, length, reserveOffset) end

---@param ushortdata number
---@return number
function CompressionZSTD.Compress(ushortdata) end

---@param intdata number
---@param length number
---@return number
function CompressionZSTD.Compress(intdata, length) end

---@param uintdata number
---@param length number
---@return number
function CompressionZSTD.Compress(uintdata, length) end

---@param fi number
---@param dest number
function CompressionZSTD.Decompress(fi, dest) end

---@param fi number
---@return number
function CompressionZSTD.Decompress(fi) end

---@param fi number
---@param offset number
---@param length number
---@return number
function CompressionZSTD.Decompress(fi, offset, length) end

---@param compressedData number
---@param buffer number
---@return number
function CompressionZSTD.DecompressAndSize(compressedData, buffer) end

---@param compressedData number
---@param offset number
---@param length number
---@param buffer number
---@return number
function CompressionZSTD.DecompressAndSize(compressedData, offset, length, buffer) end

---@return userdata
function CompressionZSTD.GetType() end

---@return string
function CompressionZSTD.ToString() end

---@param obj userdata
---@return boolean
function CompressionZSTD.Equals(obj) end

---@return number
function CompressionZSTD.GetHashCode() end


