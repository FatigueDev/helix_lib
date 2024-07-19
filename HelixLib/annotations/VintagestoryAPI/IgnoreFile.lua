---@meta

---@class IgnoreFile
---@field filename string
---@field fullpath string
IgnoreFile = {}

---@param filename string
---@param fullpath string
---@return IgnoreFile
function IgnoreFile.ctor(filename, fullpath) end

---@param path string
---@return boolean
function IgnoreFile.Available(path) end

---@return userdata
function IgnoreFile.GetType() end

---@return string
function IgnoreFile.ToString() end

---@param obj userdata
---@return boolean
function IgnoreFile.Equals(obj) end

---@return number
function IgnoreFile.GetHashCode() end


