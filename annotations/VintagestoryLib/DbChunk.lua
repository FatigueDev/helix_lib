---@meta

---@class DbChunk
---@field Position ChunkPos
---@field Data number
DbChunk = {}

---@return DbChunk
function DbChunk.ctor() end
---@param pos ChunkPos
---@param data number
---@return DbChunk
function DbChunk.ctor(pos, data) end

---@return userdata
function DbChunk.GetType() end

---@return string
function DbChunk.ToString() end

---@param obj userdata
---@return boolean
function DbChunk.Equals(obj) end

---@return number
function DbChunk.GetHashCode() end


