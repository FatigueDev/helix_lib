---@meta

---@class TcpConnectionEventArgs: EventArgs, EventArgs
---@field ClientId TcpConnection
TcpConnectionEventArgs = {}

---@return TcpConnectionEventArgs
function TcpConnectionEventArgs.ctor() end

---@return userdata
function TcpConnectionEventArgs.GetType() end

---@return string
function TcpConnectionEventArgs.ToString() end

---@param obj userdata
---@return boolean
function TcpConnectionEventArgs.Equals(obj) end

---@return number
function TcpConnectionEventArgs.GetHashCode() end


