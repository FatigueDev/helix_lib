---@meta

---@class Packet_ToolMode
---@field Mode number
---@field X number
---@field Y number
---@field Z number
---@field ModeFieldID number
---@field XFieldID number
---@field YFieldID number
---@field ZFieldID number
Packet_ToolMode = {}

---@return Packet_ToolMode
function Packet_ToolMode.ctor() end

---@param value number
function Packet_ToolMode.SetMode(value) end

---@param value number
function Packet_ToolMode.SetX(value) end

---@param value number
function Packet_ToolMode.SetY(value) end

---@param value number
function Packet_ToolMode.SetZ(value) end

---@return userdata
function Packet_ToolMode.GetType() end

---@return string
function Packet_ToolMode.ToString() end

---@param obj userdata
---@return boolean
function Packet_ToolMode.Equals(obj) end

---@return number
function Packet_ToolMode.GetHashCode() end


