---@meta

---@class ProcessPacketTask
ProcessPacketTask = {}

---@return ProcessPacketTask
function ProcessPacketTask.ctor() end

function ProcessPacketTask.Run() end

---@return userdata
function ProcessPacketTask.GetType() end

---@return string
function ProcessPacketTask.ToString() end

---@param obj userdata
---@return boolean
function ProcessPacketTask.Equals(obj) end

---@return number
function ProcessPacketTask.GetHashCode() end


