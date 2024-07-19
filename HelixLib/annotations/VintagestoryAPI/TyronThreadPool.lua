---@meta

---@class TyronThreadPool
---@field Logger ILogger
---@field RunningTasks ConcurrentDictionary`2
---@field DedicatedThreads ConcurrentDictionary`2
---@field Inst TyronThreadPool
TyronThreadPool = {}

---@return TyronThreadPool
function TyronThreadPool.ctor() end

---@return string
function TyronThreadPool.ListAllRunningTasks() end

---@return string
function TyronThreadPool.ListAllThreads() end

---@param callback function
---@param caller string
function TyronThreadPool.QueueTask(callback, caller) end

---@param callback function
---@param caller string
function TyronThreadPool.QueueLongDurationTask(callback, caller) end

---@param callback function
function TyronThreadPool.QueueTask(callback) end

---@param callback function
function TyronThreadPool.QueueLongDurationTask(callback) end

---@param starter ThreadStart
---@param name string
---@return Thread
function TyronThreadPool.CreateDedicatedThread(starter, name) end

function TyronThreadPool.Dispose() end

---@return userdata
function TyronThreadPool.GetType() end

---@return string
function TyronThreadPool.ToString() end

---@param obj userdata
---@return boolean
function TyronThreadPool.Equals(obj) end

---@return number
function TyronThreadPool.GetHashCode() end


