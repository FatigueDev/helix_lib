---@meta

---@class VtmlParser
---@field ParseState nil
VtmlParser = {}

---@return VtmlParser
function VtmlParser.ctor() end

---@param errorLogger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param vtml string
---@return VtmlToken[]
function VtmlParser.Tokenize(errorLogger, vtml) end

---@return userdata
function VtmlParser.GetType() end

---@return string
function VtmlParser.ToString() end

---@param obj userdata
---@return boolean
function VtmlParser.Equals(obj) end

---@return number
function VtmlParser.GetHashCode() end


