---@meta

---@class Packet_EntityAttributes
---@field EntityId number
---@field Data number
---@field EntityIdFieldID number
---@field DataFieldID number
Packet_EntityAttributes = {}

---@return Packet_EntityAttributes
function Packet_EntityAttributes.ctor() end

---@param value number
function Packet_EntityAttributes.SetEntityId(value) end

---@param value number
function Packet_EntityAttributes.SetData(value) end

---@return userdata
function Packet_EntityAttributes.GetType() end

---@return string
function Packet_EntityAttributes.ToString() end

---@param obj userdata
---@return boolean
function Packet_EntityAttributes.Equals(obj) end

---@return number
function Packet_EntityAttributes.GetHashCode() end


