---@meta

---@class Packet_ModId
---@field Modid string
---@field Name string
---@field Version string
---@field Networkversion string
---@field RequiredOnClient boolean
---@field ModidFieldID number
---@field NameFieldID number
---@field VersionFieldID number
---@field NetworkversionFieldID number
---@field RequiredOnClientFieldID number
Packet_ModId = {}

---@return Packet_ModId
function Packet_ModId.ctor() end

---@param value string
function Packet_ModId.SetModid(value) end

---@param value string
function Packet_ModId.SetName(value) end

---@param value string
function Packet_ModId.SetVersion(value) end

---@param value string
function Packet_ModId.SetNetworkversion(value) end

---@param value boolean
function Packet_ModId.SetRequiredOnClient(value) end

---@return userdata
function Packet_ModId.GetType() end

---@return string
function Packet_ModId.ToString() end

---@param obj userdata
---@return boolean
function Packet_ModId.Equals(obj) end

---@return number
function Packet_ModId.GetHashCode() end


