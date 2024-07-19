---@meta

-- A datastructure to hold generic data for most primitives (int, string, float, etc.). But can also hold generic data using the ByteArrayAttribute + class serialization
---@class TreeAttribute:  IEnumerable, ITreeAttribute, IAttribute
---@field Item IAttribute
---@field Count number Amount of elements in this Tree attribute
---@field Values IAttribute[] Returns all values inside this tree attributes
---@field Keys string
---@field attributesLock userdata
---@field AttributeIdMapping table
TreeAttribute = {}

---@return TreeAttribute
function TreeAttribute.ctor() end

---@param key string
---@return IAttribute # An attribute from an attribute tree
function TreeAttribute.get_Item(key) end

---@param key string
---@param value IAttribute An attribute from an attribute tree
function TreeAttribute.set_Item(key, value) end

---@return number
function TreeAttribute.get_Count() end

---@return IAttribute[] # An attribute from an attribute tree
function TreeAttribute.get_Values() end

---@return string
function TreeAttribute.get_Keys() end

---@param attrId number
---@param type userdata
function TreeAttribute.RegisterAttribute(attrId, type) end

---@param blockEntityData number
---@return TreeAttribute # A datastructure to hold generic data for most primitives (int, string, float, etc.). But can also hold generic data using the ByteArrayAttribute + class serialization
function TreeAttribute.CreateFromBytes(blockEntityData) end

---@param stream BinaryReader
function TreeAttribute.FromBytes(stream) end

---@return number
function TreeAttribute.ToBytes() end

---@param data number
function TreeAttribute.FromBytes(data) end

---@param stream BinaryWriter
function TreeAttribute.ToBytes(stream) end

---@return number
function TreeAttribute.GetAttributeId() end

---@param key string
---@return number
function TreeAttribute.IndexOf(key) end

---@return function
function TreeAttribute.GetEnumerator() end

---@param key string
---@return IAttribute # An attribute from an attribute tree
function TreeAttribute.GetAttribute(key) end

-- True if this attribute exists
---@param key string
---@return boolean
function TreeAttribute.HasAttribute(key) end

---@param path string
---@return IAttribute # An attribute from an attribute tree
function TreeAttribute.GetAttributeByPath(path) end

---@param path string
function TreeAttribute.DeleteAttributeByPath(path) end

-- Removes an attribute
---@param key string
function TreeAttribute.RemoveAttribute(key) end

-- Creates a bool attribute with given key and value
---@param key string
---@param value boolean
function TreeAttribute.SetBool(key, value) end

-- Creates an int attribute with given key and value
-- Side note: If you need this attribute to be compatible with deserialized json - use SetLong()
---@param key string
---@param value number
function TreeAttribute.SetInt(key, value) end

-- Creates a long attribute with given key and value
---@param key string
---@param value number
function TreeAttribute.SetLong(key, value) end

-- Creates a double attribute with given key and value
---@param key string
---@param value number
function TreeAttribute.SetDouble(key, value) end

-- Creates a float attribute with given key and value
-- Side note: If you need this attribute to be compatible with deserialized json - use SetDouble()
---@param key string
---@param value number
function TreeAttribute.SetFloat(key, value) end

---@param key string
---@param value string
function TreeAttribute.SetString(key, value) end

---@param key string
---@param values string
function TreeAttribute.SetStringArray(key, values) end

-- Creates a byte[] attribute with given key and value
---@param key string
---@param value number
function TreeAttribute.SetBytes(key, value) end

---@param key string
---@param value IAttribute An attribute from an attribute tree
function TreeAttribute.SetAttribute(key, value) end

-- Sets given item stack with given key
---@param key string
---@param itemstack ItemStack
function TreeAttribute.SetItemstack(key, itemstack) end

-- Retrieves a bool or null if the key is not found
---@param key string
---@return Nullable`1
function TreeAttribute.TryGetBool(key) end

---@param key string
---@return Nullable`1
function TreeAttribute.TryGetInt(key) end

-- Retrieves a double or null if key is not found
---@param key string
---@return Nullable`1
function TreeAttribute.TryGetDouble(key) end

-- Retrieves a float or null if the key is not found
---@param key string
---@return Nullable`1
function TreeAttribute.TryGetFloat(key) end

-- Retrieves a bool or default value if key is not found
---@param key string
---@param defaultValue? boolean
---@return boolean
function TreeAttribute.GetBool(key, defaultValue) end

-- Retrieves an int or default value if key is not found
---@param key string
---@param defaultValue? number
---@return number
function TreeAttribute.GetInt(key, defaultValue) end

-- Same as (int)GetDecimal(key, defValue);
---@param key string
---@param defaultValue? number
---@return number
function TreeAttribute.GetAsInt(key, defaultValue) end

---@param key string
---@param defaultValue? boolean
---@return boolean
function TreeAttribute.GetAsBool(key, defaultValue) end

-- Retrieves an int, float, long or double value. Whatever attribute is found for given key, in aformentioned order. If its a string its converted to double
---@param key string
---@param defaultValue? number
---@return number
function TreeAttribute.GetDecimal(key, defaultValue) end

-- Retrieves a double or defaultValue if key is not found
---@param key string
---@param defaultValue? number
---@return number
function TreeAttribute.GetDouble(key, defaultValue) end

-- Retrieves a float or defaultvalue if key is not found
---@param key string
---@param defaultValue? number
---@return number
function TreeAttribute.GetFloat(key, defaultValue) end

-- Retrieves a string attribute or defaultValue if key is not found
---@param key string
---@param defaultValue? string
---@return string
function TreeAttribute.GetString(key, defaultValue) end

-- Retrieves the value of given attribute, independent of attribute type
---@param key string
---@param defaultValue? string
---@return string
function TreeAttribute.GetAsString(key, defaultValue) end

-- Retrieves a string or defaultValue if key is not found
---@param key string
---@param defaultValue? string
---@return string
function TreeAttribute.GetStringArray(key, defaultValue) end

-- Retrieves a byte array or defaultValue if key is not found
---@param key string
---@param defaultValue? number
---@return number
function TreeAttribute.GetBytes(key, defaultValue) end

-- Retrieves an attribute tree or null if key is not found
---@param key string
---@return ITreeAttribute # Represents a List of nestable Attributes
function TreeAttribute.GetTreeAttribute(key) end

-- Retrieves an attribute tree or adds it if key is not found.
-- Throws an exception if the key does exist but is not a tree.
---@param key string
---@return ITreeAttribute # Represents a List of nestable Attributes
function TreeAttribute.GetOrAddTreeAttribute(key) end

-- Retrieves an itemstack or defaultValue if key is not found. Be sure to call stack.ResolveBlockOrItem() after retrieving it.
---@param key string
---@param defaultValue? ItemStack
---@return ItemStack
function TreeAttribute.GetItemstack(key, defaultValue) end

-- Retrieves a long or default value if key is not found
---@param key string
---@param defaultValue? number
---@return number
function TreeAttribute.GetLong(key, defaultValue) end

-- Retrieves a long or null value if key is not found
---@param key string
---@return Nullable`1
function TreeAttribute.TryGetLong(key) end

---@param key string
---@return ModelTransform # Used for transformations applied to a block or item model
function TreeAttribute.GetModelTransform(key) end

---@return userdata
function TreeAttribute.GetValue() end

-- Creates a deep copy of the attribute tree
---@return ITreeAttribute # Represents a List of nestable Attributes
function TreeAttribute.Clone() end

-- Returns true if given tree contains all of elements of this one, but given tree may contain also more elements. Individual node values are exactly matched.
---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param other IAttribute An attribute from an attribute tree
---@return boolean
function TreeAttribute.IsSubSetOf(worldForResolve, other) end

-- Returns true if given tree exactly matches this one
---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param other IAttribute An attribute from an attribute tree
---@return boolean
function TreeAttribute.Equals(worldForResolve, other) end

---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param other IAttribute An attribute from an attribute tree
---@param ignorePaths string
---@return boolean
function TreeAttribute.Equals(worldForResolve, other, ignorePaths) end

---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param other IAttribute An attribute from an attribute tree
---@param currentPath string
---@param ignorePaths string
---@return boolean
function TreeAttribute.Equals(worldForResolve, other, currentPath, ignorePaths) end

---@return string
function TreeAttribute.ToJsonToken() end

-- Merges the sourceTree into the current one
---@param sourceTree ITreeAttribute Represents a List of nestable Attributes
function TreeAttribute.MergeTree(sourceTree) end

---@param recursive? boolean
---@return ITreeAttribute # Represents a List of nestable Attributes
function TreeAttribute.SortedCopy(recursive) end

---@return number
function TreeAttribute.GetHashCode() end

---@param ignoredAttributes string
---@return number
function TreeAttribute.GetHashCode(ignoredAttributes) end

---@return userdata
function TreeAttribute.GetType() end

---@return string
function TreeAttribute.ToString() end

---@param obj userdata
---@return boolean
function TreeAttribute.Equals(obj) end


