---@meta

---@class FileDropEvent
---@field Filename string
---@field Handled boolean
FileDropEvent = {}

---@return FileDropEvent
function FileDropEvent.ctor() end

---@return userdata
function FileDropEvent.GetType() end

---@return string
function FileDropEvent.ToString() end

---@param obj userdata
---@return boolean
function FileDropEvent.Equals(obj) end

---@return number
function FileDropEvent.GetHashCode() end


