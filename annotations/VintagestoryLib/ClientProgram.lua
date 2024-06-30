---@meta

---@class ClientProgram
---@field platform ClientPlatformWindows
---@field screenManager ScreenManager
ClientProgram = {}

---@param rawArgs string
---@return ClientProgram
function ClientProgram.ctor(rawArgs) end

---@param rawArgs string
function ClientProgram.Main(rawArgs) end

function ClientProgram.ServerThreadStart() end

---@return userdata
function ClientProgram.GetType() end

---@return string
function ClientProgram.ToString() end

---@param obj userdata
---@return boolean
function ClientProgram.Equals(obj) end

---@return number
function ClientProgram.GetHashCode() end


