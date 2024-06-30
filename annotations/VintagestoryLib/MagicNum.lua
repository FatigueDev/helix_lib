---@meta

---@class MagicNum
---@field FileName string
---@field DefaultEntityTrackingRange number
---@field DefaultSimulationRange number
---@field ServerChunkSize number
---@field ServerChunkSizeMask number
---@field RequestChunkColumnsQueueSize number
---@field ReadyChunksQueueSize number
---@field ChunksColumnsToRequestPerTick number
---@field ChunksToSendPerTick number
---@field ChunkRequestTickTime number
---@field ChunkColumnsToGeneratePerThreadTick number
---@field ServerAutoSave number
---@field SpawnChunksWidth number
---@field TrackedEntitiesPerClient number
---@field ChunkRegionSizeInChunks number
---@field CalendarPacketSecondInterval number
---@field ChunkUnloadInterval number
---@field UncompressedChunkTTL number
---@field CompressedChunkTTL number
---@field MapRegionSize number
---@field PlayerDesyncTolerance number
---@field PlayerDesyncMaxIntervalls number
---@field ChunkThreadTickTime number
---@field AntiAbuseMaxWalkBlocksPer200ms number
---@field AntiAbuseMaxFlySuspicions number
---@field AntiAbuseMaxTeleSuspicions number
---@field MaxPhysicsThreads number
---@field MaxWorldgenThreads number
---@field MaxEntitySpawnsPerTick number
---@field ServerMagicNumVersion string
---@field Comment string
MagicNum = {}

---@return MagicNum
function MagicNum.ctor() end

function MagicNum.Save() end

function MagicNum.Load() end

---@return userdata
function MagicNum.GetType() end

---@return string
function MagicNum.ToString() end

---@param obj userdata
---@return boolean
function MagicNum.Equals(obj) end

---@return number
function MagicNum.GetHashCode() end


