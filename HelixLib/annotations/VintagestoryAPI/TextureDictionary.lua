---@meta

---@class TextureDictionary: FastSmallDictionary`2, IEnumerable
---@field Keys ICollection`1
---@field Values ICollection`1
---@field IsReadOnly boolean
---@field Item CompositeTexture
TextureDictionary = {}

---@return TextureDictionary
function TextureDictionary.ctor() end
---@param initialCapacity number
---@return TextureDictionary
function TextureDictionary.ctor(initialCapacity) end

-- Called by the texture atlas manager when building up the block atlas. Has to add all of the blocks textures
---@param manager IAssetManager Takes care loading, reloading and managing all files inside the assets folder. All asset names and paths are always converted to lower case.
---@param mainTextureDict ITextureLocationDictionary
---@param sourceCode AssetLocation Defines a complete path to an assets, including it's domain
---@param sourceMessage string
function TextureDictionary.BakeAndCollect(manager, mainTextureDict, sourceCode, sourceMessage) end

---@return ICollection`1
function TextureDictionary.get_Keys() end

---@return ICollection`1
function TextureDictionary.get_Values() end

---@return boolean
function TextureDictionary.get_IsReadOnly() end

---@return FastSmallDictionary`2 # A fast implementation of IDictionary using arrays.  Only suitable for small dictionaries, typically 1-20 entries. Note that Add is implemented differently from a standard Dictionary, it does not check that the key is not already present (and does not throw an ArgumentException) Additional methods AddIfNotPresent() and Clone() are provided for convenience.  There are also additional convenient constructors
function TextureDictionary.Clone() end

---@return string
function TextureDictionary.GetFirstKey() end

---@param key string
---@return CompositeTexture # A single block texture
function TextureDictionary.get_Item(key) end

---@param key string
---@param value CompositeTexture A single block texture
function TextureDictionary.set_Item(key, value) end

---@param key string
---@return boolean
function TextureDictionary.ContainsKey(key) end

---@param key string
---@param value CompositeTexture A single block texture
function TextureDictionary.Add(key, value) end

---@param key string
---@param value CompositeTexture&
---@return boolean
function TextureDictionary.TryGetValue(key, value) end

function TextureDictionary.Clear() end

---@return function
function TextureDictionary.GetEnumerator() end

---@param item KeyValuePair`2
function TextureDictionary.Add(item) end

---@param item KeyValuePair`2
---@return boolean
function TextureDictionary.Contains(item) end

---@param key string
---@return boolean
function TextureDictionary.Remove(key) end

---@param item KeyValuePair`2
---@return boolean
function TextureDictionary.Remove(item) end

---@param array KeyValuePair`2[]
---@param arrayIndex number
function TextureDictionary.CopyTo(array, arrayIndex) end

---@return userdata
function TextureDictionary.GetType() end

---@return string
function TextureDictionary.ToString() end

---@param obj userdata
---@return boolean
function TextureDictionary.Equals(obj) end

---@return number
function TextureDictionary.GetHashCode() end


