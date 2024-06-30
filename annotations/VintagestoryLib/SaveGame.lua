---@meta

---@class SaveGame:  ISaveGame
---@field MapSizeX number
---@field MapSizeY number
---@field MapSizeZ number
---@field PlayerDataByUID table
---@field Seed number
---@field SimulationCurrentFrame number
---@field LastEntityId number
---@field ModData ConcurrentDictionary`2
---@field TotalGameSeconds number
---@field GameTimeSpeed number
---@field WorldName string
---@field TotalSecondsPlayed number
---@field MiniDimensionsCreated number
---@field LastPlayed string
---@field CreatedGameVersion string
---@field LastBlockItemMappingVersion number
---@field LastSavedGameVersion string
---@field CreatedByPlayerName string
---@field EntitySpawning boolean
---@field HoursPerDay number
---@field LastHerdId number
---@field LandClaims table
---@field TimeSpeedModifiers table
---@field PlayStyle string
---@field PlayStyleLangCode string
---@field WorldType string
---@field SavegameIdentifier string
---@field CalendarSpeedMul number
---@field RemappingsAppliedByCode table
---@field HighestChunkdataVersion number
---@field TotalGameSecondsStart number
---@field CreatedWorldGenVersion number
---@field WorldConfiguration ITreeAttribute
---@field IsNewWorld boolean
SaveGame = {}

---@return SaveGame
function SaveGame.ctor() end

---@param config ServerConfig
---@return SaveGame
function SaveGame.CreateNew(config) end

---@return DateTime
function SaveGame.GetLastPlayed() end

---@param server ServerMain
function SaveGame.Init(server) end

function SaveGame.LoadWorldConfig() end

---@param name string
---@return number
function SaveGame.GetData(name) end

---@param name string
---@param value number
function SaveGame.StoreData(name, value) end

---@param name string
---@param defaultValue? T
---@return T
function SaveGame.GetData(name, defaultValue) end

---@param name string
---@param data T
function SaveGame.StoreData(name, data) end

---@param config ServerConfig
---@return SaveGame
function SaveGame.GetSaveGameForSaving(config) end

---@return userdata
function SaveGame.GetType() end

---@return string
function SaveGame.ToString() end

---@param obj userdata
---@return boolean
function SaveGame.Equals(obj) end

---@return number
function SaveGame.GetHashCode() end


