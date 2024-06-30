---@meta

---@class AsyncParseResults
---@field Status EnumParseResultStatus
---@field Data userdata
AsyncParseResults = {}

---@return AsyncParseResults
function AsyncParseResults.ctor() end

---@return userdata
function AsyncParseResults.GetType() end

---@return string
function AsyncParseResults.ToString() end

---@param obj userdata
---@return boolean
function AsyncParseResults.Equals(obj) end

---@return number
function AsyncParseResults.GetHashCode() end


