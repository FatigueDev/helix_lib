---@meta

---@class Packet_IngameError
---@field Code string
---@field Message string
---@field LangParams string
---@field LangParamsCount number
---@field LangParamsLength number
---@field CodeFieldID number
---@field MessageFieldID number
---@field LangParamsFieldID number
Packet_IngameError = {}

---@return Packet_IngameError
function Packet_IngameError.ctor() end

---@param value string
function Packet_IngameError.SetCode(value) end

---@param value string
function Packet_IngameError.SetMessage(value) end

---@return string
function Packet_IngameError.GetLangParams() end

---@param value string
---@param count number
---@param length number
function Packet_IngameError.SetLangParams(value, count, length) end

---@param value string
function Packet_IngameError.SetLangParams(value) end

---@return number
function Packet_IngameError.GetLangParamsCount() end

---@param value string
function Packet_IngameError.LangParamsAdd(value) end

---@return userdata
function Packet_IngameError.GetType() end

---@return string
function Packet_IngameError.ToString() end

---@param obj userdata
---@return boolean
function Packet_IngameError.Equals(obj) end

---@return number
function Packet_IngameError.GetHashCode() end


