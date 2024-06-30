---@meta

---@class AudioData
---@field Loaded number
AudioData = {}


function AudioData.Load() end

---@param onCompleted MainThreadAction
---@return number
function AudioData.Load_Async(onCompleted) end

---@return userdata
function AudioData.GetType() end

---@return string
function AudioData.ToString() end

---@param obj userdata
---@return boolean
function AudioData.Equals(obj) end

---@return number
function AudioData.GetHashCode() end


