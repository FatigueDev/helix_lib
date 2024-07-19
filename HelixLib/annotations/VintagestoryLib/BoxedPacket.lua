---@meta

---@class BoxedPacket: BoxedArray, BoxedArray
---@field Length number
---@field LengthSent number
---@field buffer number
BoxedPacket = {}

---@return BoxedPacket
function BoxedPacket.ctor() end

---@return BoxedArray
function BoxedPacket.CheckCreated() end

---@return userdata
function BoxedPacket.GetType() end

---@return string
function BoxedPacket.ToString() end

---@param obj userdata
---@return boolean
function BoxedPacket.Equals(obj) end

---@return number
function BoxedPacket.GetHashCode() end


