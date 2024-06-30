---@meta

---@class Packet_BlockEntities
---@field BlockEntitites Packet_BlockEntity[]
---@field BlockEntititesCount number
---@field BlockEntititesLength number
---@field BlockEntititesFieldID number
Packet_BlockEntities = {}

---@return Packet_BlockEntities
function Packet_BlockEntities.ctor() end

---@return Packet_BlockEntity[]
function Packet_BlockEntities.GetBlockEntitites() end

---@param value Packet_BlockEntity[]
---@param count number
---@param length number
function Packet_BlockEntities.SetBlockEntitites(value, count, length) end

---@param value Packet_BlockEntity[]
function Packet_BlockEntities.SetBlockEntitites(value) end

---@return number
function Packet_BlockEntities.GetBlockEntititesCount() end

---@param value Packet_BlockEntity
function Packet_BlockEntities.BlockEntititesAdd(value) end

---@return userdata
function Packet_BlockEntities.GetType() end

---@return string
function Packet_BlockEntities.ToString() end

---@param obj userdata
---@return boolean
function Packet_BlockEntities.Equals(obj) end

---@return number
function Packet_BlockEntities.GetHashCode() end


