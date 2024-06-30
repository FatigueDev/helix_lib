---@meta

---@class Packet_SpawnParticles
---@field ParticlePropertyProviderClassName string
---@field Data number
---@field ParticlePropertyProviderClassNameFieldID number
---@field DataFieldID number
Packet_SpawnParticles = {}

---@return Packet_SpawnParticles
function Packet_SpawnParticles.ctor() end

---@param value string
function Packet_SpawnParticles.SetParticlePropertyProviderClassName(value) end

---@param value number
function Packet_SpawnParticles.SetData(value) end

---@return userdata
function Packet_SpawnParticles.GetType() end

---@return string
function Packet_SpawnParticles.ToString() end

---@param obj userdata
---@return boolean
function Packet_SpawnParticles.Equals(obj) end

---@return number
function Packet_SpawnParticles.GetHashCode() end


