---@meta

-- A class to provide general helper functions for multi-threaded (asynchronous) operations
---@class AsyncHelper
---@field Multithreaded nil
AsyncHelper = {}

---@return AsyncHelper
function AsyncHelper.ctor() end

---@param started number
---@return boolean
function AsyncHelper.CanProceedOnThisThread(started) end

---@return userdata
function AsyncHelper.GetType() end

---@return string
function AsyncHelper.ToString() end

---@param obj userdata
---@return boolean
function AsyncHelper.Equals(obj) end

---@return number
function AsyncHelper.GetHashCode() end


