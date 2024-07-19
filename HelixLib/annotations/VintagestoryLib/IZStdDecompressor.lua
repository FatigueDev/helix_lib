---@meta

---@class IZStdDecompressor
IZStdDecompressor = {}


---@param dest number
---@param src number
function IZStdDecompressor.Decompress(dest, src) end

---@param buffer number
---@param compressedFrame ReadOnlySpan`1
---@return number
function IZStdDecompressor.Decompress(buffer, compressedFrame) end


