---@meta

---@class DummyNetwork
DummyNetwork = {}

---@return DummyNetwork
function DummyNetwork.ctor() end

---@param lock1 MonitorObject
---@param lock2 MonitorObject
function DummyNetwork.Start(lock1, lock2) end

function DummyNetwork.Clear() end

---@return userdata
function DummyNetwork.GetType() end

---@return string
function DummyNetwork.ToString() end

---@param obj userdata
---@return boolean
function DummyNetwork.Equals(obj) end

---@return number
function DummyNetwork.GetHashCode() end


