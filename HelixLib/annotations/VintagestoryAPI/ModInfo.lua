---@meta

-- Meta data for a specific mod folder, archive, source file or assembly. Either loaded from a "modinfo.json" or from the assembly's ModInfoAttribute.
---@class ModInfo
---@field ModID string The mod id (domain) of this mod. For example "myexamplemod". (Optional. Uses mod name (converted to lowercase, stripped of whitespace and special characters) if missing.)
---@field Authors IReadOnlyList`1 Names of people working on this mod. (optional) 
---@field Contributors IReadOnlyList`1 Names of people contributing to this mod. (optional) 
---@field Side EnumAppSide Which side(s) this mod runs on. Can be "Server", "Client" or "Universal". (Optional. Universal (both server and client) by default.)
---@field RequiredOnClient boolean If set to false and the mod is universal, clients don't need the mod to join. (Optional. True by default.)
---@field RequiredOnServer boolean If set to false and the mod is universal, the mod is not disabled if it's not present on the server. (Optional. True by default.)
---@field Dependencies IReadOnlyList`1 List of mods (and versions) this mod depends on. 
---@field Type EnumModType The type of this mod. Can be "Theme", "Content" or "Code". 
---@field TextureSize number If the mod is a texture pack that changes topsoil grass textures, define the texture size here
---@field Name string The name of this mod. For example "My Example Mod". 
---@field Version string The version of this mod. For example "2.10.4". (optional) 
---@field NetworkVersion string The network version of this mod. Change this number when a user that has an older version of your mod should not be allowed to connected to server with a newer version. If not set, the version value is used.
---@field Description string A short description of what this mod does. (optional) 
---@field Website string Location of the website or project site of this mod. (optional) 
---@field CoreMod boolean Not exposed as a JsonProperty, only coded mods can set this to true 
ModInfo = {}

---@return ModInfo
function ModInfo.ctor() end
---@param type EnumModType Describes the type of a mod. Allows easy recognition and limiting of what any particular mod can do.
---@param name string
---@param modID string
---@param version string
---@param description string
---@param authors function
---@param contributors function
---@param website string
---@param side EnumAppSide
---@param requiredOnClient boolean
---@param requiredOnServer boolean
---@param dependencies function
---@return ModInfo
function ModInfo.ctor(type, name, modID, version, description, authors, contributors, website, side, requiredOnClient, requiredOnServer, dependencies) end

---@return string
function ModInfo.get_ModID() end

---@param value string
function ModInfo.set_ModID(value) end

---@return IReadOnlyList`1
function ModInfo.get_Authors() end

---@param value IReadOnlyList`1
function ModInfo.set_Authors(value) end

---@return IReadOnlyList`1
function ModInfo.get_Contributors() end

---@param value IReadOnlyList`1
function ModInfo.set_Contributors(value) end

---@return EnumAppSide
function ModInfo.get_Side() end

---@param value EnumAppSide
function ModInfo.set_Side(value) end

---@return boolean
function ModInfo.get_RequiredOnClient() end

---@param value boolean
function ModInfo.set_RequiredOnClient(value) end

---@return boolean
function ModInfo.get_RequiredOnServer() end

---@param value boolean
function ModInfo.set_RequiredOnServer(value) end

---@return IReadOnlyList`1
function ModInfo.get_Dependencies() end

---@param value IReadOnlyList`1
function ModInfo.set_Dependencies(value) end

function ModInfo.Init() end

-- Attempts to convert the specified mod name to a mod ID, stripping any
-- non-alphanumerical (including spaces and dashes) and lowercasing letters.
---@param name string
---@return string
function ModInfo.ToModID(name) end

-- Returns whether the specified domain is valid.
--             
-- Tests if the string is non-null, has a length of at least 1, starts with
-- a basic lowercase letter and contains only lowercase letters and numbers.
---@param str string
---@return boolean
function ModInfo.IsValidModID(str) end

---@param other ModInfo Meta data for a specific mod folder, archive, source file or assembly. Either loaded from a "modinfo.json" or from the assembly's ModInfoAttribute.
---@return number
function ModInfo.CompareTo(other) end

---@return userdata
function ModInfo.GetType() end

---@return string
function ModInfo.ToString() end

---@param obj userdata
---@return boolean
function ModInfo.Equals(obj) end

---@return number
function ModInfo.GetHashCode() end


