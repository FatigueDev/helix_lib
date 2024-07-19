---@meta

-- Represents a List of nestable Attributes
---@class ITreeAttribute:  IEnumerable, IAttribute
---@field Item IAttribute
---@field Count number Amount of elements in this Tree attribute
---@field Values IAttribute[] Returns all values inside this tree attributes
ITreeAttribute = {}


---@param key string
---@return IAttribute # An attribute from an attribute tree
function ITreeAttribute.get_Item(key) end

---@param key string
---@param value IAttribute An attribute from an attribute tree
function ITreeAttribute.set_Item(key, value) end

---@return number
function ITreeAttribute.get_Count() end

---@return IAttribute[] # An attribute from an attribute tree
function ITreeAttribute.get_Values() end

-- True if this attribute exists
---@param key string
---@return boolean
function ITreeAttribute.HasAttribute(key) end

-- Removes an attribute
---@param key string
function ITreeAttribute.RemoveAttribute(key) end

-- Creates a bool attribute with given key and value
---@param key string
---@param value boolean
function ITreeAttribute.SetBool(key, value) end

-- Creates an int attribute with given key and value
---@param key string
---@param value number
function ITreeAttribute.SetInt(key, value) end

-- Creates a long attribute with given key and value
---@param key string
---@param value number
function ITreeAttribute.SetLong(key, value) end

-- Creates a double attribute with given key and value
---@param key string
---@param value number
function ITreeAttribute.SetDouble(key, value) end

-- Creates a float attribute with given key and value
---@param key string
---@param value number
function ITreeAttribute.SetFloat(key, value) end

-- Creates a string attribute with given key and value
---@param key string
---@param value string
function ITreeAttribute.SetString(key, value) end

-- Creates a byte[] attribute with given key and value
---@param key string
---@param value number
function ITreeAttribute.SetBytes(key, value) end

-- Sets given item stack with given key
---@param key string
---@param itemstack ItemStack
function ITreeAttribute.SetItemstack(key, itemstack) end

-- Retrieves a bool or null if the key is not found
---@param key string
---@return Nullable`1
function ITreeAttribute.TryGetBool(key) end

-- Retrieves a bool or default value if key is not found
---@param key string
---@param defaultValue? boolean
---@return boolean
function ITreeAttribute.GetBool(key, defaultValue) end

-- Retrieves an int or null if the key is not found
---@param key string
---@return Nullable`1
function ITreeAttribute.TryGetInt(key) end

-- Retrieves an int or default value if key is not found
---@param key string
---@param defaultValue? number
---@return number
function ITreeAttribute.GetInt(key, defaultValue) end

-- Same as (int)GetDecimal
---@param key string
---@param defaultValue? number
---@return number
function ITreeAttribute.GetAsInt(key, defaultValue) end

-- Returns true/false, for whatever type of attribute is found for given key
---@param key string
---@param defaultValue? boolean
---@return boolean
function ITreeAttribute.GetAsBool(key, defaultValue) end

-- Retrieves an int, float, long or double value. Whatever attribute is found for given key
---@param key string
---@param defaultValue? number
---@return number
function ITreeAttribute.GetDecimal(key, defaultValue) end

-- Retrieves the value of given attribute, independent of attribute type
---@param key string
---@param defaultValue? string
---@return string
function ITreeAttribute.GetAsString(key, defaultValue) end

-- Retrieves a long or null value if key is not found
---@param key string
---@return Nullable`1
function ITreeAttribute.TryGetLong(key) end

-- Retrieves a long or default value if key is not found
---@param key string
---@param defaultValue? number
---@return number
function ITreeAttribute.GetLong(key, defaultValue) end

-- Retrieves a float or null if the key is not found
---@param key string
---@return Nullable`1
function ITreeAttribute.TryGetFloat(key) end

-- Retrieves a float or defaultvalue if key is not found
---@param key string
---@param defaultValue? number
---@return number
function ITreeAttribute.GetFloat(key, defaultValue) end

-- Retrieves a double or null if key is not found
---@param key string
---@return Nullable`1
function ITreeAttribute.TryGetDouble(key) end

-- Retrieves a double or defaultValue if key is not found
---@param key string
---@param defaultValue? number
---@return number
function ITreeAttribute.GetDouble(key, defaultValue) end

-- Retrieves a string or defaultValue if key is not found
---@param key string
---@param defaultValue? string
---@return string
function ITreeAttribute.GetString(key, defaultValue) end

-- Retrieves a byte array or defaultValue if key is not found
---@param key string
---@param defaultValue? number
---@return number
function ITreeAttribute.GetBytes(key, defaultValue) end

-- Retrieves an itemstack or defaultValue if key is not found. Be sure to call stack.ResolveBlockOrItem() after retrieving it.
---@param key string
---@param defaultValue? ItemStack
---@return ItemStack
function ITreeAttribute.GetItemstack(key, defaultValue) end

-- Retrieves an attribute tree or null if key is not found
---@param key string
---@return ITreeAttribute # Represents a List of nestable Attributes
function ITreeAttribute.GetTreeAttribute(key) end

-- Retrieves an attribute tree or adds it if key is not found.
-- Throws an exception if the key does exist but is not a tree.
---@param key string
---@return ITreeAttribute # Represents a List of nestable Attributes
function ITreeAttribute.GetOrAddTreeAttribute(key) end

-- Creates a deep copy of the attribute tree
---@return ITreeAttribute # Represents a List of nestable Attributes
function ITreeAttribute.Clone() end

-- Merges trees (it will overwrite existing values)
---@param tree ITreeAttribute Represents a List of nestable Attributes
function ITreeAttribute.MergeTree(tree) end

-- Returns a ITreeAttribute sorted alphabetically by key. Does not modify the existing ITreeAttribute
---@param recursive? boolean
---@return ITreeAttribute # Represents a List of nestable Attributes
function ITreeAttribute.SortedCopy(recursive) end

---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param attr IAttribute An attribute from an attribute tree
---@param ignoreSubTrees string
---@return boolean
function ITreeAttribute.Equals(worldForResolve, attr, ignoreSubTrees) end

---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param other IAttribute An attribute from an attribute tree
---@return boolean
function ITreeAttribute.IsSubSetOf(worldForResolve, other) end

---@param ignoredAttributes string
---@return number
function ITreeAttribute.GetHashCode(ignoredAttributes) end


