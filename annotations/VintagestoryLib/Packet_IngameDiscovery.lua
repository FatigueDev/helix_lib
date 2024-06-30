---@meta

---@class Packet_IngameDiscovery
---@field Code string
---@field Message string
---@field LangParams string
---@field LangParamsCount number
---@field LangParamsLength number
---@field CodeFieldID number
---@field MessageFieldID number
---@field LangParamsFieldID number
Packet_IngameDiscovery = {}

---@return Packet_IngameDiscovery
function Packet_IngameDiscovery.ctor() end

---@param value string
function Packet_IngameDiscovery.SetCode(value) end

---@param value string
function Packet_IngameDiscovery.SetMessage(value) end

---@return string
function Packet_IngameDiscovery.GetLangParams() end

---@param value string
---@param count number
---@param length number
function Packet_IngameDiscovery.SetLangParams(value, count, length) end

---@param value string
function Packet_IngameDiscovery.SetLangParams(value) end

---@return number
function Packet_IngameDiscovery.GetLangParamsCount() end

---@param value string
function Packet_IngameDiscovery.LangParamsAdd(value) end

---@return userdata
function Packet_IngameDiscovery.GetType() end

---@return string
function Packet_IngameDiscovery.ToString() end

---@param obj userdata
---@return boolean
function Packet_IngameDiscovery.Equals(obj) end

---@return number
function Packet_IngameDiscovery.GetHashCode() end


