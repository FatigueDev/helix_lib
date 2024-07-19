---@meta

---@class EventHelper
EventHelper = {}


---@param ev function
---@param exceptionLogger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param eventName string
---@param arg T
---@return boolean
function EventHelper.InvokeSafeCancellable(ev, exceptionLogger, eventName, arg) end

---@param ev function
---@param exceptionLogger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param eventName string
---@param arg0 T0
---@param arg1 T1
---@return boolean
function EventHelper.InvokeSafeCancellable(ev, exceptionLogger, eventName, arg0, arg1) end

---@param ev function
---@param exceptionLogger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param eventName string
---@param arg T
---@return boolean
function EventHelper.InvokeSafe(ev, exceptionLogger, eventName, arg) end

---@param ev function
---@param exceptionLogger ILogger Interface to the client's and server's event, debug and error logging utilty.
---@param eventName string
---@param arg0 T0
---@param arg1 T1
---@return boolean
function EventHelper.InvokeSafe(ev, exceptionLogger, eventName, arg0, arg1) end

---@return userdata
function EventHelper.GetType() end

---@return string
function EventHelper.ToString() end

---@param obj userdata
---@return boolean
function EventHelper.Equals(obj) end

---@return number
function EventHelper.GetHashCode() end


