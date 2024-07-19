---@meta

-- A registerable object with variants, i.e. an item, a block or an entity
---@class RegistryObject
---@field Code AssetLocation A unique domain + code of the object. Must be globally unique for all items / all blocks / all entities.
---@field VariantStrict OrderedDictionary`2 Variant values as resolved from blocktype/itemtype.  NOT set for entities - use entity.Properties.VariantStrict instead.
---@field Variant RelaxedReadOnlyDictionary`2 Variant values as resolved from blocktype/itemtype. Will not throw an null pointer exception when the key does not exist, but return null instead. NOT set for entities - use entity.Properties.Variant instead
---@field Class string The class handeling the object
RegistryObject = {}

---@return RegistryObject
function RegistryObject.ctor() end

-- Returns a new assetlocation with an equal domain and the given path
---@param path string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function RegistryObject.CodeWithPath(path) end

-- Removes componentsToRemove parts from the blocks code end by splitting it up at every occurence of a dash ('-'). Right to left.
---@param componentsToRemove number
---@return string
function RegistryObject.CodeWithoutParts(componentsToRemove) end

-- Removes componentsToRemove parts from the blocks code beginning by splitting it up at every occurence of a dash ('-'). Left to Right
---@param componentsToRemove number
---@return string
function RegistryObject.CodeEndWithoutParts(componentsToRemove) end

-- Replaces the last parts from the blocks code and replaces it with components by splitting it up at every occurence of a dash ('-')
---@param components string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function RegistryObject.CodeWithParts(components) end

-- More efficient version of CodeWithParts if there is only a single parameter
---@param component string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function RegistryObject.CodeWithParts(component) end

---@param type string
---@param value string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function RegistryObject.CodeWithVariant(type, value) end

---@param valuesByType table
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function RegistryObject.CodeWithVariants(valuesByType) end

---@param types string
---@param values string
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function RegistryObject.CodeWithVariants(types, values) end

-- Replaces one part from the blocks code and replaces it with components by splitting it up at every occurence of a dash ('-')
---@param part string
---@param atPosition? number
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function RegistryObject.CodeWithPart(part, atPosition) end

-- Returns the n-th code part in inverse order. If the code contains no dash ('-') the whole code is returned. Returns null if posFromRight is too high.
---@param posFromRight? number
---@return string
function RegistryObject.LastCodePart(posFromRight) end

-- Returns the n-th code part. If the code contains no dash ('-') the whole code is returned. Returns null if posFromLeft is too high.
---@param posFromLeft? number
---@return string
function RegistryObject.FirstCodePart(posFromLeft) end

-- Returns true if any given wildcard matches the blocks/items code. E.g. water-* will match all water blocks
---@param wildcards AssetLocation[] Defines a complete path to an assets, including it's domain
---@return boolean
function RegistryObject.WildCardMatch(wildcards) end

-- Returns true if given wildcard matches the blocks/items code. E.g. water-* will match all water blocks
---@param wildCard AssetLocation Defines a complete path to an assets, including it's domain
---@return boolean
function RegistryObject.WildCardMatch(wildCard) end

-- Returns true if any given wildcard matches the blocks/items code. E.g. water-* will match all water blocks
---@param wildcards string
---@return boolean
function RegistryObject.WildCardMatch(wildcards) end

-- Returns true if given wildcard matches the blocks/items code. E.g. water-* will match all water blocks
---@param wildCard string
---@return boolean
function RegistryObject.WildCardMatch(wildCard) end

-- Used by the block loader to replace wildcards with their final values
---@param input AssetLocation Defines a complete path to an assets, including it's domain
---@param searchReplace OrderedDictionary`2 Same as your normal C# Dictionary but ensures that the order in which the items are added is remembered. That way you can iterate over the dictionary with the insert order intact or set/get elements by index. Taken from http://www.codeproject.com/Articles/18615/OrderedDictionary-T-A-generic-implementation-of-IO Please be aware that this is not a very efficient implementation, recommed use only for small sets of data.
---@return AssetLocation # Defines a complete path to an assets, including it's domain
function RegistryObject.FillPlaceHolder(input, searchReplace) end

-- Used by the block loader to replace wildcards with their final values
---@param input string
---@param searchReplace OrderedDictionary`2 Same as your normal C# Dictionary but ensures that the order in which the items are added is remembered. That way you can iterate over the dictionary with the insert order intact or set/get elements by index. Taken from http://www.codeproject.com/Articles/18615/OrderedDictionary-T-A-generic-implementation-of-IO Please be aware that this is not a very efficient implementation, recommed use only for small sets of data.
---@return string
function RegistryObject.FillPlaceHolder(input, searchReplace) end

-- Used by the block loader to replace wildcards with their final values
---@param input string
---@param search string
---@param replace string
---@return string
function RegistryObject.FillPlaceHolder(input, search, replace) end

---@return userdata
function RegistryObject.GetType() end

---@return string
function RegistryObject.ToString() end

---@param obj userdata
---@return boolean
function RegistryObject.Equals(obj) end

---@return number
function RegistryObject.GetHashCode() end


