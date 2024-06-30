---@meta

---@class Packet_ServerIdEnum
---@field TokenAnswer number
---@field ServerIdentification number
---@field Ping number
---@field PlayerPing number
---@field LevelInitialize number
---@field LevelDataChunk number
---@field LevelFinalize number
---@field SetBlock number
---@field ChatLine number
---@field DisconnectPlayer number
---@field Chunks number
---@field UnloadServerChunk number
---@field Inventory number
---@field Calendar number
---@field MapChunk number
---@field Sound number
---@field ServerAssets number
---@field WorldMetaData number
---@field BlockType number
---@field QueryAnswer number
---@field ServerRedirect number
---@field InventoryContents number
---@field InventoryUpdate number
---@field InventoryDoubleUpdate number
---@field Entity number
---@field EntitySpawn number
---@field EntityMoved number
---@field EntityDespawn number
---@field EntityAttributes number
---@field EntityAttributeUpdate number
---@field EntityPacket number
---@field Entities number
---@field PlayerData number
---@field MapRegion number
---@field BlockEntityMessage number
---@field PlayerDeath number
---@field ModeChange number
---@field SetBlocks number
---@field BlockEntities number
---@field PlayerGroups number
---@field PlayerGroup number
---@field SpawnPosition number
---@field HighlightBlocks number
---@field SelectedHotbarSlot number
---@field CustomPacket number
---@field NetworkChannels number
---@field GotoGroup number
---@field ExchangeBlock number
---@field StopMovement number
---@field EntityBulkAttributes number
---@field SpawnParticles number
---@field EntityBulkDebugAttributes number
---@field SetBlocksNoRelight number
---@field BlockDamage number
---@field Ambient number
---@field NotifySlot number
---@field IngameError number
---@field IngameDiscovery number
---@field SetBlocksMinimal number
---@field SetDecors number
---@field RemoveBlockLight number
---@field ServerReady number
---@field UnloadMapRegion number
---@field LandClaims number
---@field Roles number
Packet_ServerIdEnum = {}

---@return Packet_ServerIdEnum
function Packet_ServerIdEnum.ctor() end

---@return userdata
function Packet_ServerIdEnum.GetType() end

---@return string
function Packet_ServerIdEnum.ToString() end

---@param obj userdata
---@return boolean
function Packet_ServerIdEnum.Equals(obj) end

---@return number
function Packet_ServerIdEnum.GetHashCode() end


