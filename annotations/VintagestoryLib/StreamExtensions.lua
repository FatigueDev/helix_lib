---@meta

---@class StreamExtensions
StreamExtensions = {}


---@param source Stream
---@param destination Stream
---@param bufferSize number
---@param progress? IProgress`1
---@param cancellationToken? CancellationToken
---@return Task
function StreamExtensions.CopyToAsync(source, destination, bufferSize, progress, cancellationToken) end

---@return userdata
function StreamExtensions.GetType() end

---@return string
function StreamExtensions.ToString() end

---@param obj userdata
---@return boolean
function StreamExtensions.Equals(obj) end

---@return number
function StreamExtensions.GetHashCode() end


