---@meta

---@class Packet_EntityDespawn
---@field EntityId number
---@field EntityIdCount number
---@field EntityIdLength number
---@field DespawnReason number
---@field DespawnReasonCount number
---@field DespawnReasonLength number
---@field DeathDamageSource number
---@field DeathDamageSourceCount number
---@field DeathDamageSourceLength number
---@field ByEntityId number
---@field ByEntityIdCount number
---@field ByEntityIdLength number
---@field EntityIdFieldID number
---@field DespawnReasonFieldID number
---@field DeathDamageSourceFieldID number
---@field ByEntityIdFieldID number
Packet_EntityDespawn = {}

---@return Packet_EntityDespawn
function Packet_EntityDespawn.ctor() end

---@return number
function Packet_EntityDespawn.GetEntityId() end

---@param value number
---@param count number
---@param length number
function Packet_EntityDespawn.SetEntityId(value, count, length) end

---@param value number
function Packet_EntityDespawn.SetEntityId(value) end

---@return number
function Packet_EntityDespawn.GetEntityIdCount() end

---@param value number
function Packet_EntityDespawn.EntityIdAdd(value) end

---@return number
function Packet_EntityDespawn.GetDespawnReason() end

---@param value number
---@param count number
---@param length number
function Packet_EntityDespawn.SetDespawnReason(value, count, length) end

---@param value number
function Packet_EntityDespawn.SetDespawnReason(value) end

---@return number
function Packet_EntityDespawn.GetDespawnReasonCount() end

---@param value number
function Packet_EntityDespawn.DespawnReasonAdd(value) end

---@return number
function Packet_EntityDespawn.GetDeathDamageSource() end

---@param value number
---@param count number
---@param length number
function Packet_EntityDespawn.SetDeathDamageSource(value, count, length) end

---@param value number
function Packet_EntityDespawn.SetDeathDamageSource(value) end

---@return number
function Packet_EntityDespawn.GetDeathDamageSourceCount() end

---@param value number
function Packet_EntityDespawn.DeathDamageSourceAdd(value) end

---@return number
function Packet_EntityDespawn.GetByEntityId() end

---@param value number
---@param count number
---@param length number
function Packet_EntityDespawn.SetByEntityId(value, count, length) end

---@param value number
function Packet_EntityDespawn.SetByEntityId(value) end

---@return number
function Packet_EntityDespawn.GetByEntityIdCount() end

---@param value number
function Packet_EntityDespawn.ByEntityIdAdd(value) end

---@return userdata
function Packet_EntityDespawn.GetType() end

---@return string
function Packet_EntityDespawn.ToString() end

---@param obj userdata
---@return boolean
function Packet_EntityDespawn.Equals(obj) end

---@return number
function Packet_EntityDespawn.GetHashCode() end


