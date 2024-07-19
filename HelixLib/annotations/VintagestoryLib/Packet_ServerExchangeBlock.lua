---@meta

---@class Packet_ServerExchangeBlock
---@field X number
---@field Y number
---@field Z number
---@field BlockType number
---@field XFieldID number
---@field YFieldID number
---@field ZFieldID number
---@field BlockTypeFieldID number
Packet_ServerExchangeBlock = {}

---@return Packet_ServerExchangeBlock
function Packet_ServerExchangeBlock.ctor() end

---@param value number
function Packet_ServerExchangeBlock.SetX(value) end

---@param value number
function Packet_ServerExchangeBlock.SetY(value) end

---@param value number
function Packet_ServerExchangeBlock.SetZ(value) end

---@param value number
function Packet_ServerExchangeBlock.SetBlockType(value) end

---@return userdata
function Packet_ServerExchangeBlock.GetType() end

---@return string
function Packet_ServerExchangeBlock.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerExchangeBlock.Equals(obj) end

---@return number
function Packet_ServerExchangeBlock.GetHashCode() end


