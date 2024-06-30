---@meta

---@class Packet_Server:  IPacket
---@field Id number
---@field Token Packet_LoginTokenAnswer
---@field Identification Packet_ServerIdentification
---@field LevelInitialize Packet_ServerLevelInitialize
---@field LevelDataChunk Packet_ServerLevelProgress
---@field LevelFinalize Packet_ServerLevelFinalize
---@field SetBlock Packet_ServerSetBlock
---@field Chatline Packet_ChatLine
---@field DisconnectPlayer Packet_ServerDisconnectPlayer
---@field Chunks Packet_ServerChunks
---@field UnloadChunk Packet_UnloadServerChunk
---@field Calendar Packet_ServerCalendar
---@field MapChunk Packet_ServerMapChunk
---@field Ping Packet_ServerPing
---@field PlayerPing Packet_ServerPlayerPing
---@field Sound Packet_ServerSound
---@field Assets Packet_ServerAssets
---@field WorldMetaData Packet_WorldMetaData
---@field QueryAnswer Packet_ServerQueryAnswer
---@field Redirect Packet_ServerRedirect
---@field InventoryContents Packet_InventoryContents
---@field InventoryUpdate Packet_InventoryUpdate
---@field InventoryDoubleUpdate Packet_InventoryDoubleUpdate
---@field Entity Packet_Entity
---@field EntitySpawn Packet_EntitySpawn
---@field EntityDespawn Packet_EntityDespawn
---@field EntityMoved Packet_EntityMoved
---@field EntityAttributes Packet_EntityAttributes
---@field EntityAttributeUpdate Packet_EntityAttributeUpdate
---@field EntityPacket Packet_EntityPacket
---@field Entities Packet_Entities
---@field PlayerData Packet_PlayerData
---@field MapRegion Packet_MapRegion
---@field BlockEntityMessage Packet_BlockEntityMessage
---@field PlayerDeath Packet_PlayerDeath
---@field ModeChange Packet_PlayerMode
---@field SetBlocks Packet_ServerSetBlocks
---@field BlockEntities Packet_BlockEntities
---@field PlayerGroups Packet_PlayerGroups
---@field PlayerGroup Packet_PlayerGroup
---@field SpawnPosition Packet_EntityPosition
---@field HighlightBlocks Packet_HighlightBlocks
---@field SelectedHotbarSlot Packet_SelectedHotbarSlot
---@field CustomPacket Packet_CustomPacket
---@field NetworkChannels Packet_NetworkChannels
---@field GotoGroup Packet_GotoGroup
---@field ExchangeBlock Packet_ServerExchangeBlock
---@field BulkEntityAttributes Packet_BulkEntityAttributes
---@field SpawnParticles Packet_SpawnParticles
---@field BulkEntityDebugAttributes Packet_BulkEntityDebugAttributes
---@field SetBlocksNoRelight Packet_ServerSetBlocks
---@field BlockDamage Packet_BlockDamage
---@field Ambient Packet_Ambient
---@field NotifySlot Packet_NotifySlot
---@field IngameError Packet_IngameError
---@field IngameDiscovery Packet_IngameDiscovery
---@field SetBlocksMinimal Packet_ServerSetBlocks
---@field SetDecors Packet_ServerSetDecors
---@field RemoveBlockLight Packet_RemoveBlockLight
---@field ServerReady Packet_ServerReady
---@field UnloadMapRegion Packet_UnloadMapRegion
---@field LandClaims Packet_LandClaims
---@field Roles Packet_Roles
---@field IdFieldID number
---@field TokenFieldID number
---@field IdentificationFieldID number
---@field LevelInitializeFieldID number
---@field LevelDataChunkFieldID number
---@field LevelFinalizeFieldID number
---@field SetBlockFieldID number
---@field ChatlineFieldID number
---@field DisconnectPlayerFieldID number
---@field ChunksFieldID number
---@field UnloadChunkFieldID number
---@field CalendarFieldID number
---@field MapChunkFieldID number
---@field PingFieldID number
---@field PlayerPingFieldID number
---@field SoundFieldID number
---@field AssetsFieldID number
---@field WorldMetaDataFieldID number
---@field QueryAnswerFieldID number
---@field RedirectFieldID number
---@field InventoryContentsFieldID number
---@field InventoryUpdateFieldID number
---@field InventoryDoubleUpdateFieldID number
---@field EntityFieldID number
---@field EntitySpawnFieldID number
---@field EntityDespawnFieldID number
---@field EntityMovedFieldID number
---@field EntityAttributesFieldID number
---@field EntityAttributeUpdateFieldID number
---@field EntityPacketFieldID number
---@field EntitiesFieldID number
---@field PlayerDataFieldID number
---@field MapRegionFieldID number
---@field BlockEntityMessageFieldID number
---@field PlayerDeathFieldID number
---@field ModeChangeFieldID number
---@field SetBlocksFieldID number
---@field BlockEntitiesFieldID number
---@field PlayerGroupsFieldID number
---@field PlayerGroupFieldID number
---@field SpawnPositionFieldID number
---@field HighlightBlocksFieldID number
---@field SelectedHotbarSlotFieldID number
---@field CustomPacketFieldID number
---@field NetworkChannelsFieldID number
---@field GotoGroupFieldID number
---@field ExchangeBlockFieldID number
---@field BulkEntityAttributesFieldID number
---@field SpawnParticlesFieldID number
---@field BulkEntityDebugAttributesFieldID number
---@field SetBlocksNoRelightFieldID number
---@field BlockDamageFieldID number
---@field AmbientFieldID number
---@field NotifySlotFieldID number
---@field IngameErrorFieldID number
---@field IngameDiscoveryFieldID number
---@field SetBlocksMinimalFieldID number
---@field SetDecorsFieldID number
---@field RemoveBlockLightFieldID number
---@field ServerReadyFieldID number
---@field UnloadMapRegionFieldID number
---@field LandClaimsFieldID number
---@field RolesFieldID number
Packet_Server = {}

---@return Packet_Server
function Packet_Server.ctor() end

---@param stream CitoStream
function Packet_Server.SerializeTo(stream) end

---@param value number
function Packet_Server.SetId(value) end

---@param value Packet_LoginTokenAnswer
function Packet_Server.SetToken(value) end

---@param value Packet_ServerIdentification
function Packet_Server.SetIdentification(value) end

---@param value Packet_ServerLevelInitialize
function Packet_Server.SetLevelInitialize(value) end

---@param value Packet_ServerLevelProgress
function Packet_Server.SetLevelDataChunk(value) end

---@param value Packet_ServerLevelFinalize
function Packet_Server.SetLevelFinalize(value) end

---@param value Packet_ServerSetBlock
function Packet_Server.SetSetBlock(value) end

---@param value Packet_ChatLine
function Packet_Server.SetChatline(value) end

---@param value Packet_ServerDisconnectPlayer
function Packet_Server.SetDisconnectPlayer(value) end

---@param value Packet_ServerChunks
function Packet_Server.SetChunks(value) end

---@param value Packet_UnloadServerChunk
function Packet_Server.SetUnloadChunk(value) end

---@param value Packet_ServerCalendar
function Packet_Server.SetCalendar(value) end

---@param value Packet_ServerMapChunk
function Packet_Server.SetMapChunk(value) end

---@param value Packet_ServerPing
function Packet_Server.SetPing(value) end

---@param value Packet_ServerPlayerPing
function Packet_Server.SetPlayerPing(value) end

---@param value Packet_ServerSound
function Packet_Server.SetSound(value) end

---@param value Packet_ServerAssets
function Packet_Server.SetAssets(value) end

---@param value Packet_WorldMetaData
function Packet_Server.SetWorldMetaData(value) end

---@param value Packet_ServerQueryAnswer
function Packet_Server.SetQueryAnswer(value) end

---@param value Packet_ServerRedirect
function Packet_Server.SetRedirect(value) end

---@param value Packet_InventoryContents
function Packet_Server.SetInventoryContents(value) end

---@param value Packet_InventoryUpdate
function Packet_Server.SetInventoryUpdate(value) end

---@param value Packet_InventoryDoubleUpdate
function Packet_Server.SetInventoryDoubleUpdate(value) end

---@param value Packet_Entity
function Packet_Server.SetEntity(value) end

---@param value Packet_EntitySpawn
function Packet_Server.SetEntitySpawn(value) end

---@param value Packet_EntityDespawn
function Packet_Server.SetEntityDespawn(value) end

---@param value Packet_EntityMoved
function Packet_Server.SetEntityMoved(value) end

---@param value Packet_EntityAttributes
function Packet_Server.SetEntityAttributes(value) end

---@param value Packet_EntityAttributeUpdate
function Packet_Server.SetEntityAttributeUpdate(value) end

---@param value Packet_EntityPacket
function Packet_Server.SetEntityPacket(value) end

---@param value Packet_Entities
function Packet_Server.SetEntities(value) end

---@param value Packet_PlayerData
function Packet_Server.SetPlayerData(value) end

---@param value Packet_MapRegion
function Packet_Server.SetMapRegion(value) end

---@param value Packet_BlockEntityMessage
function Packet_Server.SetBlockEntityMessage(value) end

---@param value Packet_PlayerDeath
function Packet_Server.SetPlayerDeath(value) end

---@param value Packet_PlayerMode
function Packet_Server.SetModeChange(value) end

---@param value Packet_ServerSetBlocks
function Packet_Server.SetSetBlocks(value) end

---@param value Packet_BlockEntities
function Packet_Server.SetBlockEntities(value) end

---@param value Packet_PlayerGroups
function Packet_Server.SetPlayerGroups(value) end

---@param value Packet_PlayerGroup
function Packet_Server.SetPlayerGroup(value) end

---@param value Packet_EntityPosition
function Packet_Server.SetSpawnPosition(value) end

---@param value Packet_HighlightBlocks
function Packet_Server.SetHighlightBlocks(value) end

---@param value Packet_SelectedHotbarSlot
function Packet_Server.SetSelectedHotbarSlot(value) end

---@param value Packet_CustomPacket
function Packet_Server.SetCustomPacket(value) end

---@param value Packet_NetworkChannels
function Packet_Server.SetNetworkChannels(value) end

---@param value Packet_GotoGroup
function Packet_Server.SetGotoGroup(value) end

---@param value Packet_ServerExchangeBlock
function Packet_Server.SetExchangeBlock(value) end

---@param value Packet_BulkEntityAttributes
function Packet_Server.SetBulkEntityAttributes(value) end

---@param value Packet_SpawnParticles
function Packet_Server.SetSpawnParticles(value) end

---@param value Packet_BulkEntityDebugAttributes
function Packet_Server.SetBulkEntityDebugAttributes(value) end

---@param value Packet_ServerSetBlocks
function Packet_Server.SetSetBlocksNoRelight(value) end

---@param value Packet_BlockDamage
function Packet_Server.SetBlockDamage(value) end

---@param value Packet_Ambient
function Packet_Server.SetAmbient(value) end

---@param value Packet_NotifySlot
function Packet_Server.SetNotifySlot(value) end

---@param value Packet_IngameError
function Packet_Server.SetIngameError(value) end

---@param value Packet_IngameDiscovery
function Packet_Server.SetIngameDiscovery(value) end

---@param value Packet_ServerSetBlocks
function Packet_Server.SetSetBlocksMinimal(value) end

---@param value Packet_ServerSetDecors
function Packet_Server.SetSetDecors(value) end

---@param value Packet_RemoveBlockLight
function Packet_Server.SetRemoveBlockLight(value) end

---@param value Packet_ServerReady
function Packet_Server.SetServerReady(value) end

---@param value Packet_UnloadMapRegion
function Packet_Server.SetUnloadMapRegion(value) end

---@param value Packet_LandClaims
function Packet_Server.SetLandClaims(value) end

---@param value Packet_Roles
function Packet_Server.SetRoles(value) end

---@return userdata
function Packet_Server.GetType() end

---@return string
function Packet_Server.ToString() end

---@param obj userdata
---@return boolean
function Packet_Server.Equals(obj) end

---@return number
function Packet_Server.GetHashCode() end


