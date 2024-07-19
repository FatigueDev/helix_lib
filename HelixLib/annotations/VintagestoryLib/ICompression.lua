---@meta

---@class ICompression
ICompression = {}


---@param data number
---@return number
function ICompression.Compress(data) end

---@param data number
---@param len number
---@param reserveOffset number
---@return number
function ICompression.Compress(data, len, reserveOffset) end

---@param data number
---@return number
function ICompression.Compress(data) end

---@param data number
---@param length number
---@return number
function ICompression.Compress(data, length) end

---@param data number
---@param length number
---@return number
function ICompression.Compress(data, length) end

---@param fi number
---@return number
function ICompression.Decompress(fi) end

---@param fi number
---@param offset number
---@param length number
---@return number
function ICompression.Decompress(fi, offset, length) end

---@param fi number
---@param buffer number
---@return number
function ICompression.DecompressAndSize(fi, buffer) end

---@param fi number
---@param dest number
function ICompression.Decompress(fi, dest) end

---@param compressedData number
---@param offset number
---@param length number
---@param buffer number
---@return number
function ICompression.DecompressAndSize(compressedData, offset, length, buffer) end


