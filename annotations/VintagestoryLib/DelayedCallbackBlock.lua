---@meta

---@class DelayedCallbackBlock
---@field Pos BlockPos
---@field Handler function
---@field CallAtEllapsedMilliseconds number
---@field ListenerId number
DelayedCallbackBlock = {}

---@return DelayedCallbackBlock
function DelayedCallbackBlock.ctor() end

---@return userdata
function DelayedCallbackBlock.GetType() end

---@return string
function DelayedCallbackBlock.ToString() end

---@param obj userdata
---@return boolean
function DelayedCallbackBlock.Equals(obj) end

---@return number
function DelayedCallbackBlock.GetHashCode() end


