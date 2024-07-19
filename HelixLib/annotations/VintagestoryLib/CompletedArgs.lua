---@meta

---@class CompletedArgs
---@field StatusCode number
---@field State CompletionState
---@field Response string
---@field ErrorMessage string
CompletedArgs = {}

---@return CompletedArgs
function CompletedArgs.ctor() end

---@return userdata
function CompletedArgs.GetType() end

---@return string
function CompletedArgs.ToString() end

---@param obj userdata
---@return boolean
function CompletedArgs.Equals(obj) end

---@return number
function CompletedArgs.GetHashCode() end


