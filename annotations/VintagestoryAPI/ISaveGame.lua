---@meta

---@class ISaveGame
---@field IsNew boolean True if this is a newly created world
---@field CreatedGameVersion string The game version under which this savegame was created
---@field LastSavedGameVersion string The game version under which this savegame was last saved
---@field Seed number
---@field SavegameIdentifier string A globally unique identifier for this savegame
---@field TotalGameSeconds number
---@field WorldName string
---@field PlayStyle string
---@field WorldType string
---@field EntitySpawning boolean
---@field LandClaims table
---@field WorldConfiguration ITreeAttribute
ISaveGame = {}


---@return boolean
function ISaveGame.get_IsNew() end

---@return string
function ISaveGame.get_CreatedGameVersion() end

---@return string
function ISaveGame.get_LastSavedGameVersion() end

---@return number
function ISaveGame.get_Seed() end

---@param value number
function ISaveGame.set_Seed(value) end

---@return string
function ISaveGame.get_SavegameIdentifier() end

---@return number
function ISaveGame.get_TotalGameSeconds() end

---@param value number
function ISaveGame.set_TotalGameSeconds(value) end

---@return string
function ISaveGame.get_WorldName() end

---@param value string
function ISaveGame.set_WorldName(value) end

---@return string
function ISaveGame.get_PlayStyle() end

---@param value string
function ISaveGame.set_PlayStyle(value) end

---@return string
function ISaveGame.get_WorldType() end

---@param value string
function ISaveGame.set_WorldType(value) end

---@return boolean
function ISaveGame.get_EntitySpawning() end

---@param value boolean
function ISaveGame.set_EntitySpawning(value) end

---@return table
function ISaveGame.get_LandClaims() end

---@param value table
function ISaveGame.set_LandClaims(value) end

---@return ITreeAttribute # Represents a List of nestable Attributes
function ISaveGame.get_WorldConfiguration() end

-- Gets a previously saved object from the savegame. Returns null if no such data under this key was previously set.
---@param key string
---@return number
function ISaveGame.GetData(key) end

-- Store the given data persistently to the savegame. Size limit is around 1 gigabyte for *all* data stored along with the savegame datastructure. If you need more space, you have to store it somewhere else.
---@param key string
---@param data number
function ISaveGame.StoreData(key, data) end

---@param key string
---@param defaultValue? T
---@return T
function ISaveGame.GetData(key, defaultValue) end

---@param key string
---@param data T
function ISaveGame.StoreData(key, data) end


