---@meta

---@class DummyNetworkPacket
---@field Data number
---@field Length number
DummyNetworkPacket = {}

---@return DummyNetworkPacket
function DummyNetworkPacket.ctor() end

---@return userdata
function DummyNetworkPacket.GetType() end

---@return string
function DummyNetworkPacket.ToString() end

---@param obj userdata
---@return boolean
function DummyNetworkPacket.Equals(obj) end

---@return number
function DummyNetworkPacket.GetHashCode() end


