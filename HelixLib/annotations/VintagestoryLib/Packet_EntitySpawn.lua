---@meta

---@class Packet_EntitySpawn
---@field Entity Packet_Entity[]
---@field EntityCount number
---@field EntityLength number
---@field EntityFieldID number
Packet_EntitySpawn = {}

---@return Packet_EntitySpawn
function Packet_EntitySpawn.ctor() end

---@return Packet_Entity[]
function Packet_EntitySpawn.GetEntity() end

---@param value Packet_Entity[]
---@param count number
---@param length number
function Packet_EntitySpawn.SetEntity(value, count, length) end

---@param value Packet_Entity[]
function Packet_EntitySpawn.SetEntity(value) end

---@return number
function Packet_EntitySpawn.GetEntityCount() end

---@param value Packet_Entity
function Packet_EntitySpawn.EntityAdd(value) end

---@return userdata
function Packet_EntitySpawn.GetType() end

---@return string
function Packet_EntitySpawn.ToString() end

---@param obj userdata
---@return boolean
function Packet_EntitySpawn.Equals(obj) end

---@return number
function Packet_EntitySpawn.GetHashCode() end


