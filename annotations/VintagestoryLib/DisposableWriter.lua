---@meta

---@class DisposableWriter
---@field writer StreamWriter
DisposableWriter = {}

---@param filename string
---@param clearOldFiles boolean
---@return DisposableWriter
function DisposableWriter.ctor(filename, clearOldFiles) end

function DisposableWriter.Dispose() end

---@return userdata
function DisposableWriter.GetType() end

---@return string
function DisposableWriter.ToString() end

---@param obj userdata
---@return boolean
function DisposableWriter.Equals(obj) end

---@return number
function DisposableWriter.GetHashCode() end


