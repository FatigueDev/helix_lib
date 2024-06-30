---@meta

---@class Packet_PlayerGroup
---@field Uid number
---@field Owneruid string
---@field Name string
---@field Chathistory Packet_ChatLine[]
---@field ChathistoryCount number
---@field ChathistoryLength number
---@field Createdbyprivatemessage number
---@field Membership number
---@field UidFieldID number
---@field OwneruidFieldID number
---@field NameFieldID number
---@field ChathistoryFieldID number
---@field CreatedbyprivatemessageFieldID number
---@field MembershipFieldID number
Packet_PlayerGroup = {}

---@return Packet_PlayerGroup
function Packet_PlayerGroup.ctor() end

---@param value number
function Packet_PlayerGroup.SetUid(value) end

---@param value string
function Packet_PlayerGroup.SetOwneruid(value) end

---@param value string
function Packet_PlayerGroup.SetName(value) end

---@return Packet_ChatLine[]
function Packet_PlayerGroup.GetChathistory() end

---@param value Packet_ChatLine[]
---@param count number
---@param length number
function Packet_PlayerGroup.SetChathistory(value, count, length) end

---@param value Packet_ChatLine[]
function Packet_PlayerGroup.SetChathistory(value) end

---@return number
function Packet_PlayerGroup.GetChathistoryCount() end

---@param value Packet_ChatLine
function Packet_PlayerGroup.ChathistoryAdd(value) end

---@param value number
function Packet_PlayerGroup.SetCreatedbyprivatemessage(value) end

---@param value number
function Packet_PlayerGroup.SetMembership(value) end

---@return userdata
function Packet_PlayerGroup.GetType() end

---@return string
function Packet_PlayerGroup.ToString() end

---@param obj userdata
---@return boolean
function Packet_PlayerGroup.Equals(obj) end

---@return number
function Packet_PlayerGroup.GetHashCode() end


