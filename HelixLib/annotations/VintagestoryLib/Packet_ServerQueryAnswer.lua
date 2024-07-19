---@meta

---@class Packet_ServerQueryAnswer
---@field Name string
---@field MOTD string
---@field PlayerCount number
---@field MaxPlayers number
---@field GameMode string
---@field Password boolean
---@field ServerVersion string
---@field NameFieldID number
---@field MOTDFieldID number
---@field PlayerCountFieldID number
---@field MaxPlayersFieldID number
---@field GameModeFieldID number
---@field PasswordFieldID number
---@field ServerVersionFieldID number
Packet_ServerQueryAnswer = {}

---@return Packet_ServerQueryAnswer
function Packet_ServerQueryAnswer.ctor() end

---@param value string
function Packet_ServerQueryAnswer.SetName(value) end

---@param value string
function Packet_ServerQueryAnswer.SetMOTD(value) end

---@param value number
function Packet_ServerQueryAnswer.SetPlayerCount(value) end

---@param value number
function Packet_ServerQueryAnswer.SetMaxPlayers(value) end

---@param value string
function Packet_ServerQueryAnswer.SetGameMode(value) end

---@param value boolean
function Packet_ServerQueryAnswer.SetPassword(value) end

---@param value string
function Packet_ServerQueryAnswer.SetServerVersion(value) end

---@return userdata
function Packet_ServerQueryAnswer.GetType() end

---@return string
function Packet_ServerQueryAnswer.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerQueryAnswer.Equals(obj) end

---@return number
function Packet_ServerQueryAnswer.GetHashCode() end


