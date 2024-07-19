---@meta

-- Applied to a mod assembly to provide additional meta data information about a code mod. Superseded by "modinfo.json" file, if available.
---@class ModInfoAttribute: Attribute, Attribute
---@field Name string The name of this mod. For example "My Example Mod". 
---@field IconPath string
---@field ModID string The mod ID (domain) of this mod. For example "myexamplemod". 
---@field Version string The version of this mod. For example "2.10.4". (optional) 
---@field CoreMod boolean Is this mod part of the core game, i.e. vanilla Vintage Story?  (optional)  Only affects whether the player is given a warning when attempting to disable this mod.Mods other than VSSurvival, VSEssentials, VSCreative should not use this, obviously... 
---@field NetworkVersion string The network version of this mod. Change this number when a user that has an older version of your mod should not be allowed to connected to server with a newer version. If not set, the version value is used.
---@field Description string A short description of what this mod does. (optional) 
---@field Website string Location of the website or project site of this mod. (optional) 
---@field Authors string Names of people working on this mod. (optional) 
---@field Contributors string Names of people contributing to this mod. (optional) 
---@field Side string Which side(s) this mod runs on. Can be "Server", "Client" or "Universal". (Optional. Universal (both server and client) by default.)
---@field RequiredOnClient boolean If set to false and the mod is universal, clients don't need it to join. (Optional. True (required) by default.)
---@field RequiredOnServer boolean If set to false and the mod is universal, the mod is not disabled if it's not present on the server. (Optional. True by default.)
---@field WorldConfig string
---@field TypeId userdata
ModInfoAttribute = {}

---@param name string
---@param modID string
---@return ModInfoAttribute
function ModInfoAttribute.ctor(name, modID) end
---@param name string
---@return ModInfoAttribute
function ModInfoAttribute.ctor(name) end

---@return string
function ModInfoAttribute.get_Name() end

---@return string
function ModInfoAttribute.get_IconPath() end

---@param value string
function ModInfoAttribute.set_IconPath(value) end

---@return string
function ModInfoAttribute.get_ModID() end

---@return string
function ModInfoAttribute.get_Version() end

---@param value string
function ModInfoAttribute.set_Version(value) end

---@return boolean
function ModInfoAttribute.get_CoreMod() end

---@param value boolean
function ModInfoAttribute.set_CoreMod(value) end

---@return string
function ModInfoAttribute.get_NetworkVersion() end

---@param value string
function ModInfoAttribute.set_NetworkVersion(value) end

---@return string
function ModInfoAttribute.get_Description() end

---@param value string
function ModInfoAttribute.set_Description(value) end

---@return string
function ModInfoAttribute.get_Website() end

---@param value string
function ModInfoAttribute.set_Website(value) end

---@return string
function ModInfoAttribute.get_Authors() end

---@param value string
function ModInfoAttribute.set_Authors(value) end

---@return string
function ModInfoAttribute.get_Contributors() end

---@param value string
function ModInfoAttribute.set_Contributors(value) end

---@return string
function ModInfoAttribute.get_Side() end

---@param value string
function ModInfoAttribute.set_Side(value) end

---@return boolean
function ModInfoAttribute.get_RequiredOnClient() end

---@param value boolean
function ModInfoAttribute.set_RequiredOnClient(value) end

---@return boolean
function ModInfoAttribute.get_RequiredOnServer() end

---@param value boolean
function ModInfoAttribute.set_RequiredOnServer(value) end

---@return string
function ModInfoAttribute.get_WorldConfig() end

---@param value string
function ModInfoAttribute.set_WorldConfig(value) end

---@param obj userdata
---@return boolean
function ModInfoAttribute.Equals(obj) end

---@return number
function ModInfoAttribute.GetHashCode() end

---@return userdata
function ModInfoAttribute.get_TypeId() end

---@param obj userdata
---@return boolean
function ModInfoAttribute.Match(obj) end

---@return boolean
function ModInfoAttribute.IsDefaultAttribute() end

---@return userdata
function ModInfoAttribute.GetType() end

---@return string
function ModInfoAttribute.ToString() end


