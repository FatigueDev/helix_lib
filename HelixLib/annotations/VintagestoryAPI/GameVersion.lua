---@meta

-- The games current version
---@class GameVersion
---@field ReleaseType EnumReleaseType
---@field LongGameVersion string Version number in the format: major.minor.revision [release title]
---@field DatabaseVersion number Version of the savegame database
---@field BlockItemMappingVersion number "Version" of the block and item mapping. This number gets increased by 1 when remappings are needed
---@field OverallVersion string Assembly Info Version number in the format: major.minor.revision
---@field Branch EnumGameBranch Whether this is a stable or unstable version
---@field ShortGameVersion string Version number in the format: major.minor.revision[appendix]
---@field AssemblyVersion string Assembly Info Version number in the format: major.minor.revision
---@field APIVersion string Version of the Mod API
---@field NetworkVersion string Version of the Network Protocol
---@field WorldGenVersion number Version of the world generator - a change in version will insert a smoothed chunk between old and new version
---@field ChunkdataVersion number Version of the chunkdata compression for individual WorldChunks (0 is Deflate; 1 is ZSTD and palettised)  Also affects compression of network packets sent
---@field CopyRight string Copyright notice
GameVersion = {}


---@return EnumReleaseType
function GameVersion.get_ReleaseType() end

---@param version string
---@return number
function GameVersion.SplitVersionString(version) end

---@param version string
---@return EnumReleaseType
function GameVersion.GetReleaseType(version) end

-- Returns true if given version has the same major and minor version. Ignores revision.
---@param version string
---@return boolean
function GameVersion.IsCompatibleApiVersion(version) end

-- Returns true if given version has the same major and minor version. Ignores revision.
---@param version string
---@return boolean
function GameVersion.IsCompatibleNetworkVersion(version) end

-- Returns true if supplied version is the same or higher as the current version
---@param version string
---@return boolean
function GameVersion.IsAtLeastVersion(version) end

-- Returns true if supplied version is the same or higher as the reference version
---@param version string
---@param reference string
---@return boolean
function GameVersion.IsAtLeastVersion(version, reference) end

---@param version string
---@param reference string
---@return boolean
function GameVersion.IsLowerVersionThan(version, reference) end

-- Returns true if supplied version is the higher as the reference version
---@param version string
---@param reference string
---@return boolean
function GameVersion.IsNewerVersionThan(version, reference) end

---@param api ICoreAPI Common API Components that are available on the server and the client. Cast to ICoreServerAPI or ICoreClientAPI to access side specific features.
---@param version string
---@param reference string
---@param modName string
function GameVersion.EnsureEqualVersionOrKillExecutable(api, version, reference, modName) end

---@return userdata
function GameVersion.GetType() end

---@return string
function GameVersion.ToString() end

---@param obj userdata
---@return boolean
function GameVersion.Equals(obj) end

---@return number
function GameVersion.GetHashCode() end


