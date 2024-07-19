---@meta

---@class LoadBalancedTask
LoadBalancedTask = {}


function LoadBalancedTask.DoWork() end

---@return boolean
function LoadBalancedTask.ShouldExit() end

---@param e Exception
function LoadBalancedTask.HandleException(e) end

---@param threadnum number
function LoadBalancedTask.StartWorkerThread(threadnum) end


