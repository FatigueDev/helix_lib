---@meta

---@class ITextureLocationDictionary
---@field Item number
ITextureLocationDictionary = {}


---@param textureLoc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@return boolean
function ITextureLocationDictionary.AddTextureLocation(textureLoc) end

---@param textureLoc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@return number
function ITextureLocationDictionary.GetOrAddTextureLocation(textureLoc) end

---@param textureLoc AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
---@return number
function ITextureLocationDictionary.get_Item(textureLoc) end

---@param loc AssetLocation Defines a complete path to an assets, including it's domain
---@return boolean
function ITextureLocationDictionary.ContainsKey(loc) end

---@param assetLocationAndSource AssetLocationAndSource Defines a complete path to an assets, including it's domain. Includes an extra Source field for debugging.
function ITextureLocationDictionary.SetTextureLocation(assetLocationAndSource) end

---@param compositeShape Shape The base shape for all json objects.
---@param targetDict IDictionary`2
---@param baseLoc AssetLocation Defines a complete path to an assets, including it's domain
function ITextureLocationDictionary.CollectAndBakeTexturesFromShape(compositeShape, targetDict, baseLoc) end


