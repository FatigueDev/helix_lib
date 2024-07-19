---@meta

---@class TcpMessageEventArgs: EventArgs, EventArgs
---@field ClientId TcpConnection
---@field data number
TcpMessageEventArgs = {}

---@return TcpMessageEventArgs
function TcpMessageEventArgs.ctor() end

---@return userdata
function TcpMessageEventArgs.GetType() end

---@return string
function TcpMessageEventArgs.ToString() end

---@param obj userdata
---@return boolean
function TcpMessageEventArgs.Equals(obj) end

---@return number
function TcpMessageEventArgs.GetHashCode() end


