---@meta

---@class HistoryState
---@field BlockUpdates BlockUpdate[]
---@field OldStartMarker BlockPos
---@field OldEndMarker BlockPos
---@field NewStartMarker BlockPos
---@field NewEndMarker BlockPos
---@field EntityUpdates table
HistoryState = {}

---@return HistoryState
function HistoryState.ctor() end

---@return HistoryState
function HistoryState.Empty() end

---@return userdata
function HistoryState.GetType() end

---@return string
function HistoryState.ToString() end

---@param obj userdata
---@return boolean
function HistoryState.Equals(obj) end

---@return number
function HistoryState.GetHashCode() end


