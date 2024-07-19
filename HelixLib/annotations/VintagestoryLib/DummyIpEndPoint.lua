---@meta

---@class DummyIpEndPoint: IPEndPointCi, IPEndPointCi
DummyIpEndPoint = {}

---@return DummyIpEndPoint
function DummyIpEndPoint.ctor() end

---@return string
function DummyIpEndPoint.AddressToString() end

---@return userdata
function DummyIpEndPoint.GetType() end

---@return string
function DummyIpEndPoint.ToString() end

---@param obj userdata
---@return boolean
function DummyIpEndPoint.Equals(obj) end

---@return number
function DummyIpEndPoint.GetHashCode() end


