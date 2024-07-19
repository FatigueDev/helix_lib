---@meta

---@class Packet_EntityAttributeUpdate
---@field EntityId number
---@field Attributes Packet_PartialAttribute[]
---@field AttributesCount number
---@field AttributesLength number
---@field EntityIdFieldID number
---@field AttributesFieldID number
Packet_EntityAttributeUpdate = {}

---@return Packet_EntityAttributeUpdate
function Packet_EntityAttributeUpdate.ctor() end

---@param value number
function Packet_EntityAttributeUpdate.SetEntityId(value) end

---@return Packet_PartialAttribute[]
function Packet_EntityAttributeUpdate.GetAttributes() end

---@param value Packet_PartialAttribute[]
---@param count number
---@param length number
function Packet_EntityAttributeUpdate.SetAttributes(value, count, length) end

---@param value Packet_PartialAttribute[]
function Packet_EntityAttributeUpdate.SetAttributes(value) end

---@return number
function Packet_EntityAttributeUpdate.GetAttributesCount() end

---@param value Packet_PartialAttribute
function Packet_EntityAttributeUpdate.AttributesAdd(value) end

---@return userdata
function Packet_EntityAttributeUpdate.GetType() end

---@return string
function Packet_EntityAttributeUpdate.ToString() end

---@param obj userdata
---@return boolean
function Packet_EntityAttributeUpdate.Equals(obj) end

---@return number
function Packet_EntityAttributeUpdate.GetHashCode() end


