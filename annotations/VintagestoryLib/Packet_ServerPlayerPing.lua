---@meta

---@class Packet_ServerPlayerPing
---@field ClientIds number
---@field ClientIdsCount number
---@field ClientIdsLength number
---@field Pings number
---@field PingsCount number
---@field PingsLength number
---@field ClientIdsFieldID number
---@field PingsFieldID number
Packet_ServerPlayerPing = {}

---@return Packet_ServerPlayerPing
function Packet_ServerPlayerPing.ctor() end

---@return number
function Packet_ServerPlayerPing.GetClientIds() end

---@param value number
---@param count number
---@param length number
function Packet_ServerPlayerPing.SetClientIds(value, count, length) end

---@param value number
function Packet_ServerPlayerPing.SetClientIds(value) end

---@return number
function Packet_ServerPlayerPing.GetClientIdsCount() end

---@param value number
function Packet_ServerPlayerPing.ClientIdsAdd(value) end

---@return number
function Packet_ServerPlayerPing.GetPings() end

---@param value number
---@param count number
---@param length number
function Packet_ServerPlayerPing.SetPings(value, count, length) end

---@param value number
function Packet_ServerPlayerPing.SetPings(value) end

---@return number
function Packet_ServerPlayerPing.GetPingsCount() end

---@param value number
function Packet_ServerPlayerPing.PingsAdd(value) end

---@return userdata
function Packet_ServerPlayerPing.GetType() end

---@return string
function Packet_ServerPlayerPing.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerPlayerPing.Equals(obj) end

---@return number
function Packet_ServerPlayerPing.GetHashCode() end


