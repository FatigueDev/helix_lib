---@meta

---@class Packet_ChatLine
---@field Message string
---@field Groupid number
---@field ChatType number
---@field Data string
---@field MessageFieldID number
---@field GroupidFieldID number
---@field ChatTypeFieldID number
---@field DataFieldID number
Packet_ChatLine = {}

---@return Packet_ChatLine
function Packet_ChatLine.ctor() end

---@param value string
function Packet_ChatLine.SetMessage(value) end

---@param value number
function Packet_ChatLine.SetGroupid(value) end

---@param value number
function Packet_ChatLine.SetChatType(value) end

---@param value string
function Packet_ChatLine.SetData(value) end

---@return userdata
function Packet_ChatLine.GetType() end

---@return string
function Packet_ChatLine.ToString() end

---@param obj userdata
---@return boolean
function Packet_ChatLine.Equals(obj) end

---@return number
function Packet_ChatLine.GetHashCode() end


