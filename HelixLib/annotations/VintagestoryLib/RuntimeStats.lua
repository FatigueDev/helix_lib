---@meta

---@class RuntimeStats
---@field chunksReceived number
---@field chunksTesselatedPerSecond number
---@field chunksTesselatedEdgeOnly number
---@field chunksAwaitingTesselation number
---@field chunksAwaitingPooling number
---@field chunksTesselatedTotal number
---@field chunksUnloaded number
---@field renderedTriangles number
---@field availableTriangles number
---@field renderedEntities number
---@field drawCallsCount number
RuntimeStats = {}

---@return RuntimeStats
function RuntimeStats.ctor() end

function RuntimeStats.Reset() end

---@return userdata
function RuntimeStats.GetType() end

---@return string
function RuntimeStats.ToString() end

---@param obj userdata
---@return boolean
function RuntimeStats.Equals(obj) end

---@return number
function RuntimeStats.GetHashCode() end


