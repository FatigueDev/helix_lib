---@meta

---@class Ping
---@field DidReplyOnLastPing boolean
---@field TimeSendMilliSeconds number
Ping = {}

---@return Ping
function Ping.ctor() end

---@return boolean
function Ping.get_DidReplyOnLastPing() end

---@return number
function Ping.get_TimeSendMilliSeconds() end

---@return number
function Ping.GetTimeoutThreshold() end

---@param value number
function Ping.SetTimeoutThreshold(value) end

---@param ElapsedMilliseconds number
function Ping.OnSend(ElapsedMilliseconds) end

---@param ElapsedMilliseconds number
function Ping.OnReceive(ElapsedMilliseconds) end

---@param ElapsedMilliseconds number
---@return boolean
function Ping.DidTimeout(ElapsedMilliseconds) end

---@return userdata
function Ping.GetType() end

---@return string
function Ping.ToString() end

---@param obj userdata
---@return boolean
function Ping.Equals(obj) end

---@return number
function Ping.GetHashCode() end


