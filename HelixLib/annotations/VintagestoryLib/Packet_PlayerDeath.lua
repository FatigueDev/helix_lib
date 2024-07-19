---@meta

---@class Packet_PlayerDeath
---@field ClientId number
---@field LivesLeft number
---@field ClientIdFieldID number
---@field LivesLeftFieldID number
Packet_PlayerDeath = {}

---@return Packet_PlayerDeath
function Packet_PlayerDeath.ctor() end

---@param value number
function Packet_PlayerDeath.SetClientId(value) end

---@param value number
function Packet_PlayerDeath.SetLivesLeft(value) end

---@return userdata
function Packet_PlayerDeath.GetType() end

---@return string
function Packet_PlayerDeath.ToString() end

---@param obj userdata
---@return boolean
function Packet_PlayerDeath.Equals(obj) end

---@return number
function Packet_PlayerDeath.GetHashCode() end


