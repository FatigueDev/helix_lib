---@meta

---@class Packet_Entity
---@field EntityType string
---@field EntityId number
---@field SimulationRange number
---@field Data number
---@field EntityTypeFieldID number
---@field EntityIdFieldID number
---@field SimulationRangeFieldID number
---@field DataFieldID number
Packet_Entity = {}

---@return Packet_Entity
function Packet_Entity.ctor() end

---@param value string
function Packet_Entity.SetEntityType(value) end

---@param value number
function Packet_Entity.SetEntityId(value) end

---@param value number
function Packet_Entity.SetSimulationRange(value) end

---@param value number
function Packet_Entity.SetData(value) end

---@return userdata
function Packet_Entity.GetType() end

---@return string
function Packet_Entity.ToString() end

---@param obj userdata
---@return boolean
function Packet_Entity.Equals(obj) end

---@return number
function Packet_Entity.GetHashCode() end


