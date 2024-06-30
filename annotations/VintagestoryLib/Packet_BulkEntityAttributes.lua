---@meta

---@class Packet_BulkEntityAttributes
---@field FullUpdates Packet_EntityAttributes[]
---@field FullUpdatesCount number
---@field FullUpdatesLength number
---@field PartialUpdates Packet_EntityAttributeUpdate[]
---@field PartialUpdatesCount number
---@field PartialUpdatesLength number
---@field PosUpdates Packet_EntityMoved[]
---@field PosUpdatesCount number
---@field PosUpdatesLength number
---@field MinimalPosUpdates Packet_EntityMovedMinimal[]
---@field MinimalPosUpdatesCount number
---@field MinimalPosUpdatesLength number
---@field FullUpdatesFieldID number
---@field PartialUpdatesFieldID number
---@field PosUpdatesFieldID number
---@field MinimalPosUpdatesFieldID number
Packet_BulkEntityAttributes = {}

---@return Packet_BulkEntityAttributes
function Packet_BulkEntityAttributes.ctor() end

---@return Packet_EntityAttributes[]
function Packet_BulkEntityAttributes.GetFullUpdates() end

---@param value Packet_EntityAttributes[]
---@param count number
---@param length number
function Packet_BulkEntityAttributes.SetFullUpdates(value, count, length) end

---@param value Packet_EntityAttributes[]
function Packet_BulkEntityAttributes.SetFullUpdates(value) end

---@return number
function Packet_BulkEntityAttributes.GetFullUpdatesCount() end

---@param value Packet_EntityAttributes
function Packet_BulkEntityAttributes.FullUpdatesAdd(value) end

---@return Packet_EntityAttributeUpdate[]
function Packet_BulkEntityAttributes.GetPartialUpdates() end

---@param value Packet_EntityAttributeUpdate[]
---@param count number
---@param length number
function Packet_BulkEntityAttributes.SetPartialUpdates(value, count, length) end

---@param value Packet_EntityAttributeUpdate[]
function Packet_BulkEntityAttributes.SetPartialUpdates(value) end

---@return number
function Packet_BulkEntityAttributes.GetPartialUpdatesCount() end

---@param value Packet_EntityAttributeUpdate
function Packet_BulkEntityAttributes.PartialUpdatesAdd(value) end

---@return Packet_EntityMoved[]
function Packet_BulkEntityAttributes.GetPosUpdates() end

---@param value Packet_EntityMoved[]
---@param count number
---@param length number
function Packet_BulkEntityAttributes.SetPosUpdates(value, count, length) end

---@param value Packet_EntityMoved[]
function Packet_BulkEntityAttributes.SetPosUpdates(value) end

---@return number
function Packet_BulkEntityAttributes.GetPosUpdatesCount() end

---@param value Packet_EntityMoved
function Packet_BulkEntityAttributes.PosUpdatesAdd(value) end

---@return Packet_EntityMovedMinimal[]
function Packet_BulkEntityAttributes.GetMinimalPosUpdates() end

---@param value Packet_EntityMovedMinimal[]
---@param count number
---@param length number
function Packet_BulkEntityAttributes.SetMinimalPosUpdates(value, count, length) end

---@param value Packet_EntityMovedMinimal[]
function Packet_BulkEntityAttributes.SetMinimalPosUpdates(value) end

---@return number
function Packet_BulkEntityAttributes.GetMinimalPosUpdatesCount() end

---@param value Packet_EntityMovedMinimal
function Packet_BulkEntityAttributes.MinimalPosUpdatesAdd(value) end

---@return userdata
function Packet_BulkEntityAttributes.GetType() end

---@return string
function Packet_BulkEntityAttributes.ToString() end

---@param obj userdata
---@return boolean
function Packet_BulkEntityAttributes.Equals(obj) end

---@return number
function Packet_BulkEntityAttributes.GetHashCode() end


