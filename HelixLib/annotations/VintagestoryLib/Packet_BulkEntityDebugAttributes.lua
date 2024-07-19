---@meta

---@class Packet_BulkEntityDebugAttributes
---@field FullUpdates Packet_EntityAttributes[]
---@field FullUpdatesCount number
---@field FullUpdatesLength number
---@field PartialUpdates Packet_EntityAttributeUpdate[]
---@field PartialUpdatesCount number
---@field PartialUpdatesLength number
---@field FullUpdatesFieldID number
---@field PartialUpdatesFieldID number
Packet_BulkEntityDebugAttributes = {}

---@return Packet_BulkEntityDebugAttributes
function Packet_BulkEntityDebugAttributes.ctor() end

---@return Packet_EntityAttributes[]
function Packet_BulkEntityDebugAttributes.GetFullUpdates() end

---@param value Packet_EntityAttributes[]
---@param count number
---@param length number
function Packet_BulkEntityDebugAttributes.SetFullUpdates(value, count, length) end

---@param value Packet_EntityAttributes[]
function Packet_BulkEntityDebugAttributes.SetFullUpdates(value) end

---@return number
function Packet_BulkEntityDebugAttributes.GetFullUpdatesCount() end

---@param value Packet_EntityAttributes
function Packet_BulkEntityDebugAttributes.FullUpdatesAdd(value) end

---@return Packet_EntityAttributeUpdate[]
function Packet_BulkEntityDebugAttributes.GetPartialUpdates() end

---@param value Packet_EntityAttributeUpdate[]
---@param count number
---@param length number
function Packet_BulkEntityDebugAttributes.SetPartialUpdates(value, count, length) end

---@param value Packet_EntityAttributeUpdate[]
function Packet_BulkEntityDebugAttributes.SetPartialUpdates(value) end

---@return number
function Packet_BulkEntityDebugAttributes.GetPartialUpdatesCount() end

---@param value Packet_EntityAttributeUpdate
function Packet_BulkEntityDebugAttributes.PartialUpdatesAdd(value) end

---@return userdata
function Packet_BulkEntityDebugAttributes.GetType() end

---@return string
function Packet_BulkEntityDebugAttributes.ToString() end

---@param obj userdata
---@return boolean
function Packet_BulkEntityDebugAttributes.Equals(obj) end

---@return number
function Packet_BulkEntityDebugAttributes.GetHashCode() end


