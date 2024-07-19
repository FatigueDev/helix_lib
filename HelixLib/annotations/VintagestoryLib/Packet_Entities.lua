---@meta

---@class Packet_Entities
---@field Entities Packet_Entity[]
---@field EntitiesCount number
---@field EntitiesLength number
---@field EntitiesFieldID number
Packet_Entities = {}

---@return Packet_Entities
function Packet_Entities.ctor() end

---@return Packet_Entity[]
function Packet_Entities.GetEntities() end

---@param value Packet_Entity[]
---@param count number
---@param length number
function Packet_Entities.SetEntities(value, count, length) end

---@param value Packet_Entity[]
function Packet_Entities.SetEntities(value) end

---@return number
function Packet_Entities.GetEntitiesCount() end

---@param value Packet_Entity
function Packet_Entities.EntitiesAdd(value) end

---@return userdata
function Packet_Entities.GetType() end

---@return string
function Packet_Entities.ToString() end

---@param obj userdata
---@return boolean
function Packet_Entities.Equals(obj) end

---@return number
function Packet_Entities.GetHashCode() end


