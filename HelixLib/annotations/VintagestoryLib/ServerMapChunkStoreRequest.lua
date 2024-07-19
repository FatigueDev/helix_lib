---@meta

---@class ServerMapChunkStoreRequest
---@field mapchunk ServerMapChunk
---@field chunkX number
---@field chunkZ number
ServerMapChunkStoreRequest = {}

---@return ServerMapChunkStoreRequest
function ServerMapChunkStoreRequest.ctor() end

---@return userdata
function ServerMapChunkStoreRequest.GetType() end

---@return string
function ServerMapChunkStoreRequest.ToString() end

---@param obj userdata
---@return boolean
function ServerMapChunkStoreRequest.Equals(obj) end

---@return number
function ServerMapChunkStoreRequest.GetHashCode() end


