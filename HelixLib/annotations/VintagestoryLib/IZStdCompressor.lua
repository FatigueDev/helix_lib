---@meta

---@class IZStdCompressor
IZStdCompressor = {}


---@param buffer number
---@param data number
---@return number
function IZStdCompressor.Compress(buffer, data) end

---@param buffer number
---@param src ReadOnlySpan`1
---@return number
function IZStdCompressor.Compress(buffer, src) end


