---@meta

---@class Packet_BlockDrop
---@field QuantityAvg number
---@field QuantityVar number
---@field QuantityDist number
---@field DroppedStack number
---@field Tool number
---@field QuantityAvgFieldID number
---@field QuantityVarFieldID number
---@field QuantityDistFieldID number
---@field DroppedStackFieldID number
---@field ToolFieldID number
Packet_BlockDrop = {}

---@return Packet_BlockDrop
function Packet_BlockDrop.ctor() end

---@param value number
function Packet_BlockDrop.SetQuantityAvg(value) end

---@param value number
function Packet_BlockDrop.SetQuantityVar(value) end

---@param value number
function Packet_BlockDrop.SetQuantityDist(value) end

---@param value number
function Packet_BlockDrop.SetDroppedStack(value) end

---@param value number
function Packet_BlockDrop.SetTool(value) end

---@return userdata
function Packet_BlockDrop.GetType() end

---@return string
function Packet_BlockDrop.ToString() end

---@param obj userdata
---@return boolean
function Packet_BlockDrop.Equals(obj) end

---@return number
function Packet_BlockDrop.GetHashCode() end


