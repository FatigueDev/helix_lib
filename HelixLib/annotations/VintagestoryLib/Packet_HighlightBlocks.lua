---@meta

---@class Packet_HighlightBlocks
---@field Mode number
---@field Shape number
---@field Blocks number
---@field Colors number
---@field ColorsCount number
---@field ColorsLength number
---@field Slotid number
---@field Scale number
---@field ModeFieldID number
---@field ShapeFieldID number
---@field BlocksFieldID number
---@field ColorsFieldID number
---@field SlotidFieldID number
---@field ScaleFieldID number
Packet_HighlightBlocks = {}

---@return Packet_HighlightBlocks
function Packet_HighlightBlocks.ctor() end

---@param value number
function Packet_HighlightBlocks.SetMode(value) end

---@param value number
function Packet_HighlightBlocks.SetShape(value) end

---@param value number
function Packet_HighlightBlocks.SetBlocks(value) end

---@return number
function Packet_HighlightBlocks.GetColors() end

---@param value number
---@param count number
---@param length number
function Packet_HighlightBlocks.SetColors(value, count, length) end

---@param value number
function Packet_HighlightBlocks.SetColors(value) end

---@return number
function Packet_HighlightBlocks.GetColorsCount() end

---@param value number
function Packet_HighlightBlocks.ColorsAdd(value) end

---@param value number
function Packet_HighlightBlocks.SetSlotid(value) end

---@param value number
function Packet_HighlightBlocks.SetScale(value) end

---@return userdata
function Packet_HighlightBlocks.GetType() end

---@return string
function Packet_HighlightBlocks.ToString() end

---@param obj userdata
---@return boolean
function Packet_HighlightBlocks.Equals(obj) end

---@return number
function Packet_HighlightBlocks.GetHashCode() end


