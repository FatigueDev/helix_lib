---@meta

---@class ServerProgram
ServerProgram = {}

---@return ServerProgram
function ServerProgram.ctor() end

---@param args string
function ServerProgram.Main(args) end

---@return string
function ServerProgram.FrameworkInfos() end

---@return userdata
function ServerProgram.GetType() end

---@return string
function ServerProgram.ToString() end

---@param obj userdata
---@return boolean
function ServerProgram.Equals(obj) end

---@return number
function ServerProgram.GetHashCode() end


