---@meta

-- Some extra methods available for server side chunks
---@class IServerChunk:  IWorldChunk
---@field GameVersionCreated string The game version where this chunk was created. Please note that this is not the version at which this chunk was complete. Chunks can linger around in a half complete state for a long time. 
---@field NotAtEdge boolean If true, this chunk is not at the edge of the loaded or generating map: all eight neighbouring chunks are fully loaded
---@field BlocksPlaced number Amount of (survival) player placed blocks 
---@field BlocksRemoved number Amount of (survival) player removed blocks 
IServerChunk = {}


-- Allows setting of server side only moddata of this chunk
---@param key string
---@param data number
function IServerChunk.SetServerModdata(key, data) end

-- Retrieve server side only mod data
---@param key string
---@return number
function IServerChunk.GetServerModdata(key) end

---@return string
function IServerChunk.get_GameVersionCreated() end

---@return boolean
function IServerChunk.get_NotAtEdge() end

-- Remove a block entity
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@return boolean
function IServerChunk.RemoveBlockEntity(pos) end

---@return number
function IServerChunk.get_BlocksPlaced() end

---@return number
function IServerChunk.get_BlocksRemoved() end


