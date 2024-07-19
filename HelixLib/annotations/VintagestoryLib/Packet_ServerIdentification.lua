---@meta

---@class Packet_ServerIdentification
---@field NetworkVersion string
---@field GameVersion string
---@field ServerName string
---@field MapSizeX number
---@field MapSizeY number
---@field MapSizeZ number
---@field RegionMapSizeX number
---@field RegionMapSizeY number
---@field RegionMapSizeZ number
---@field DisableShadows number
---@field PlayerAreaSize number
---@field Seed number
---@field PlayStyle string
---@field RequireRemapping number
---@field Mods Packet_ModId[]
---@field ModsCount number
---@field ModsLength number
---@field WorldConfiguration number
---@field SavegameIdentifier string
---@field PlayListCode string
---@field ServerModIdBlackList string
---@field ServerModIdBlackListCount number
---@field ServerModIdBlackListLength number
---@field NetworkVersionFieldID number
---@field GameVersionFieldID number
---@field ServerNameFieldID number
---@field MapSizeXFieldID number
---@field MapSizeYFieldID number
---@field MapSizeZFieldID number
---@field RegionMapSizeXFieldID number
---@field RegionMapSizeYFieldID number
---@field RegionMapSizeZFieldID number
---@field DisableShadowsFieldID number
---@field PlayerAreaSizeFieldID number
---@field SeedFieldID number
---@field PlayStyleFieldID number
---@field RequireRemappingFieldID number
---@field ModsFieldID number
---@field WorldConfigurationFieldID number
---@field SavegameIdentifierFieldID number
---@field PlayListCodeFieldID number
---@field ServerModIdBlackListFieldID number
Packet_ServerIdentification = {}

---@return Packet_ServerIdentification
function Packet_ServerIdentification.ctor() end

---@param value string
function Packet_ServerIdentification.SetNetworkVersion(value) end

---@param value string
function Packet_ServerIdentification.SetGameVersion(value) end

---@param value string
function Packet_ServerIdentification.SetServerName(value) end

---@param value number
function Packet_ServerIdentification.SetMapSizeX(value) end

---@param value number
function Packet_ServerIdentification.SetMapSizeY(value) end

---@param value number
function Packet_ServerIdentification.SetMapSizeZ(value) end

---@param value number
function Packet_ServerIdentification.SetRegionMapSizeX(value) end

---@param value number
function Packet_ServerIdentification.SetRegionMapSizeY(value) end

---@param value number
function Packet_ServerIdentification.SetRegionMapSizeZ(value) end

---@param value number
function Packet_ServerIdentification.SetDisableShadows(value) end

---@param value number
function Packet_ServerIdentification.SetPlayerAreaSize(value) end

---@param value number
function Packet_ServerIdentification.SetSeed(value) end

---@param value string
function Packet_ServerIdentification.SetPlayStyle(value) end

---@param value number
function Packet_ServerIdentification.SetRequireRemapping(value) end

---@return Packet_ModId[]
function Packet_ServerIdentification.GetMods() end

---@param value Packet_ModId[]
---@param count number
---@param length number
function Packet_ServerIdentification.SetMods(value, count, length) end

---@param value Packet_ModId[]
function Packet_ServerIdentification.SetMods(value) end

---@return number
function Packet_ServerIdentification.GetModsCount() end

---@param value Packet_ModId
function Packet_ServerIdentification.ModsAdd(value) end

---@param value number
function Packet_ServerIdentification.SetWorldConfiguration(value) end

---@param value string
function Packet_ServerIdentification.SetSavegameIdentifier(value) end

---@param value string
function Packet_ServerIdentification.SetPlayListCode(value) end

---@return string
function Packet_ServerIdentification.GetServerModIdBlackList() end

---@param value string
---@param count number
---@param length number
function Packet_ServerIdentification.SetServerModIdBlackList(value, count, length) end

---@param value string
function Packet_ServerIdentification.SetServerModIdBlackList(value) end

---@return number
function Packet_ServerIdentification.GetServerModIdBlackListCount() end

---@param value string
function Packet_ServerIdentification.ServerModIdBlackListAdd(value) end

---@return userdata
function Packet_ServerIdentification.GetType() end

---@return string
function Packet_ServerIdentification.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerIdentification.Equals(obj) end

---@return number
function Packet_ServerIdentification.GetHashCode() end


