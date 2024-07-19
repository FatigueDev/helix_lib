---@meta

---@class WorldConfig
---@field PlayStyles table
---@field CurrentPlayStyle PlayStyle
---@field CurrentPlayStyleIndex number
---@field WorldConfigsPlaystyle table
---@field WorldConfigsCustom table
---@field Jworldconfig JsonObject
---@field Item WorldConfigurationValue
---@field MapsizeY number
---@field Seed string
---@field IsNewWorld boolean
WorldConfig = {}

---@param mods table
---@return WorldConfig
function WorldConfig.ctor(mods) end

---@return table
function WorldConfig.get_PlayStyles() end

---@return PlayStyle
function WorldConfig.get_CurrentPlayStyle() end

---@return number
function WorldConfig.get_CurrentPlayStyleIndex() end

---@return table
function WorldConfig.get_WorldConfigsPlaystyle() end

---@return table
function WorldConfig.get_WorldConfigsCustom() end

---@return JsonObject # Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
function WorldConfig.get_Jworldconfig() end

---@param code string
---@return WorldConfigurationValue
function WorldConfig.get_Item(code) end

function WorldConfig.LoadPlayStyles() end

---@param index number
function WorldConfig.selectPlayStyle(index) end

---@param playstylecode string
function WorldConfig.selectPlayStyle(playstylecode) end

function WorldConfig.updateJWorldConfig() end

---@param mods table
---@return JsonObject # Elegant, yet somewhat inefficently designed (because wasteful with heap objects) wrapper class to abstract away the type-casting nightmare of JToken O.O
function WorldConfig.allDefaultValues(mods) end

---@param inputElements table
function WorldConfig.ApplyConfigs(inputElements) end

---@param withCustomConfigs boolean
---@return string
function WorldConfig.ToRichText(withCustomConfigs) end

---@param playstyle PlayStyle
---@param withCustomConfigs boolean
---@return string
function WorldConfig.ToRichText(playstyle, withCustomConfigs) end

---@return string
function WorldConfig.ToJson() end

---@param json string
function WorldConfig.FromJson(json) end

---@return WorldConfig
function WorldConfig.Clone() end

---@return userdata
function WorldConfig.GetType() end

---@return string
function WorldConfig.ToString() end

---@param obj userdata
---@return boolean
function WorldConfig.Equals(obj) end

---@return number
function WorldConfig.GetHashCode() end


