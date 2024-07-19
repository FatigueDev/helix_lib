---@meta

---@class TickerMetaData
---@field TickingSinceMs number
---@field WindAffectedNess number
---@field IsWindAffected boolean
TickerMetaData = {}

---@return TickerMetaData
function TickerMetaData.ctor() end

---@return userdata
function TickerMetaData.GetType() end

---@return string
function TickerMetaData.ToString() end

---@param obj userdata
---@return boolean
function TickerMetaData.Equals(obj) end

---@return number
function TickerMetaData.GetHashCode() end


