---@meta

---@class TrackedPlayerProperties
---@field EyesInWaterColorShift number
---@field EyesInLavaColorShift number
---@field EyesInLavaDepth number
---@field EyesInWaterDepth number
---@field DayLight number
---@field DistanceToSpawnPoint number
---@field MoonLight number
---@field FallSpeed number
---@field PlayerChunkPos BlockPos
---@field PlayerPosDiv8 BlockPos
---@field posY number Relative value. bottom 0...1 sealevel, 1 .... 2 max-y
---@field sunSlight number 0...32
---@field Playstyle string The servers playstyle
---@field PlayListCode string
TrackedPlayerProperties = {}

---@return TrackedPlayerProperties
function TrackedPlayerProperties.ctor() end

---@return userdata
function TrackedPlayerProperties.GetType() end

---@return string
function TrackedPlayerProperties.ToString() end

---@param obj userdata
---@return boolean
function TrackedPlayerProperties.Equals(obj) end

---@return number
function TrackedPlayerProperties.GetHashCode() end


