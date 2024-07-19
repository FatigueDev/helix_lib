---@meta

---@class EventBusListener
---@field handler EventBusListenerDelegate
---@field priority number
---@field filterByName string
EventBusListener = {}

---@return EventBusListener
function EventBusListener.ctor() end

---@return userdata
function EventBusListener.GetType() end

---@return string
function EventBusListener.ToString() end

---@param obj userdata
---@return boolean
function EventBusListener.Equals(obj) end

---@return number
function EventBusListener.GetHashCode() end


