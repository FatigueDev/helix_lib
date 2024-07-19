---@meta

---@class Packet_UnloadServerChunk
---@field X number
---@field XCount number
---@field XLength number
---@field Y number
---@field YCount number
---@field YLength number
---@field Z number
---@field ZCount number
---@field ZLength number
---@field XFieldID number
---@field YFieldID number
---@field ZFieldID number
Packet_UnloadServerChunk = {}

---@return Packet_UnloadServerChunk
function Packet_UnloadServerChunk.ctor() end

---@return number
function Packet_UnloadServerChunk.GetX() end

---@param value number
---@param count number
---@param length number
function Packet_UnloadServerChunk.SetX(value, count, length) end

---@param value number
function Packet_UnloadServerChunk.SetX(value) end

---@return number
function Packet_UnloadServerChunk.GetXCount() end

---@param value number
function Packet_UnloadServerChunk.XAdd(value) end

---@return number
function Packet_UnloadServerChunk.GetY() end

---@param value number
---@param count number
---@param length number
function Packet_UnloadServerChunk.SetY(value, count, length) end

---@param value number
function Packet_UnloadServerChunk.SetY(value) end

---@return number
function Packet_UnloadServerChunk.GetYCount() end

---@param value number
function Packet_UnloadServerChunk.YAdd(value) end

---@return number
function Packet_UnloadServerChunk.GetZ() end

---@param value number
---@param count number
---@param length number
function Packet_UnloadServerChunk.SetZ(value, count, length) end

---@param value number
function Packet_UnloadServerChunk.SetZ(value) end

---@return number
function Packet_UnloadServerChunk.GetZCount() end

---@param value number
function Packet_UnloadServerChunk.ZAdd(value) end

---@return userdata
function Packet_UnloadServerChunk.GetType() end

---@return string
function Packet_UnloadServerChunk.ToString() end

---@param obj userdata
---@return boolean
function Packet_UnloadServerChunk.Equals(obj) end

---@return number
function Packet_UnloadServerChunk.GetHashCode() end


