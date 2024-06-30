---@meta

---@class SyncedTreeAttribute: TreeAttribute, IEnumerable, ITreeAttribute, IAttribute, TreeAttribute
---@field AllDirty boolean
---@field PartialDirty boolean
---@field Item IAttribute
---@field Count number Amount of elements in this Tree attribute
---@field Values IAttribute[] Returns all values inside this tree attributes
---@field Keys string
---@field OnModified table
---@field attributesLock userdata
SyncedTreeAttribute = {}

---@return SyncedTreeAttribute
function SyncedTreeAttribute.ctor() end

---@param path string
---@param listener function
function SyncedTreeAttribute.RegisterModifiedListener(path, listener) end

---@param listener function
function SyncedTreeAttribute.UnregisterListener(listener) end

-- Marks the whole attribute tree as dirty, so that it will be resent to all connected clients. Does not trigger modified listeners (because it makes no sense and breaks things)
function SyncedTreeAttribute.MarkAllDirty() end

---@return boolean
function SyncedTreeAttribute.get_AllDirty() end

---@return boolean
function SyncedTreeAttribute.get_PartialDirty() end

function SyncedTreeAttribute.MarkClean() end

-- Marks part of the attribute tree as dirty, allowing for a partial update of the attribute tree.
-- Has no effect it the whole tree is already marked dirty. If more than 5 paths are marked dirty it will wipe the list of dirty paths and just marked the whole tree as dirty
---@param path string
function SyncedTreeAttribute.MarkPathDirty(path) end

---@param key string
---@param value number
function SyncedTreeAttribute.SetInt(key, value) end

---@param key string
---@param value number
function SyncedTreeAttribute.SetLong(key, value) end

---@param key string
---@param value number
function SyncedTreeAttribute.SetFloat(key, value) end

---@param key string
---@param value boolean
function SyncedTreeAttribute.SetBool(key, value) end

---@param key string
---@param value number
function SyncedTreeAttribute.SetBytes(key, value) end

---@param key string
---@param value number
function SyncedTreeAttribute.SetDouble(key, value) end

---@param key string
---@param value string
function SyncedTreeAttribute.SetString(key, value) end

---@param key string
---@param value IAttribute An attribute from an attribute tree
function SyncedTreeAttribute.SetAttribute(key, value) end

---@param key string
function SyncedTreeAttribute.RemoveAttribute(key) end

---@param paths string
---@param dirtydata number
function SyncedTreeAttribute.DirtyPathData(paths, dirtydata) end

---@param stream BinaryReader
function SyncedTreeAttribute.FromBytes(stream) end

---@param path string
---@param data number
function SyncedTreeAttribute.PartialUpdate(path, data) end

---@param key string
---@return IAttribute # An attribute from an attribute tree
function SyncedTreeAttribute.get_Item(key) end

---@param key string
---@param value IAttribute An attribute from an attribute tree
function SyncedTreeAttribute.set_Item(key, value) end

---@return number
function SyncedTreeAttribute.get_Count() end

---@return IAttribute[] # An attribute from an attribute tree
function SyncedTreeAttribute.get_Values() end

---@return string
function SyncedTreeAttribute.get_Keys() end

---@return number
function SyncedTreeAttribute.ToBytes() end

---@param data number
function SyncedTreeAttribute.FromBytes(data) end

---@param stream BinaryWriter
function SyncedTreeAttribute.ToBytes(stream) end

---@return number
function SyncedTreeAttribute.GetAttributeId() end

---@param key string
---@return number
function SyncedTreeAttribute.IndexOf(key) end

---@return function
function SyncedTreeAttribute.GetEnumerator() end

---@param key string
---@return IAttribute # An attribute from an attribute tree
function SyncedTreeAttribute.GetAttribute(key) end

-- True if this attribute exists
---@param key string
---@return boolean
function SyncedTreeAttribute.HasAttribute(key) end

---@param path string
---@return IAttribute # An attribute from an attribute tree
function SyncedTreeAttribute.GetAttributeByPath(path) end

---@param path string
function SyncedTreeAttribute.DeleteAttributeByPath(path) end

---@param key string
---@param values string
function SyncedTreeAttribute.SetStringArray(key, values) end

-- Sets given item stack with given key
---@param key string
---@param itemstack ItemStack
function SyncedTreeAttribute.SetItemstack(key, itemstack) end

-- Retrieves a bool or null if the key is not found
---@param key string
---@return Nullable`1
function SyncedTreeAttribute.TryGetBool(key) end

---@param key string
---@return Nullable`1
function SyncedTreeAttribute.TryGetInt(key) end

-- Retrieves a double or null if key is not found
---@param key string
---@return Nullable`1
function SyncedTreeAttribute.TryGetDouble(key) end

-- Retrieves a float or null if the key is not found
---@param key string
---@return Nullable`1
function SyncedTreeAttribute.TryGetFloat(key) end

-- Retrieves a bool or default value if key is not found
---@param key string
---@param defaultValue? boolean
---@return boolean
function SyncedTreeAttribute.GetBool(key, defaultValue) end

-- Retrieves an int or default value if key is not found
---@param key string
---@param defaultValue? number
---@return number
function SyncedTreeAttribute.GetInt(key, defaultValue) end

-- Same as (int)GetDecimal(key, defValue);
---@param key string
---@param defaultValue? number
---@return number
function SyncedTreeAttribute.GetAsInt(key, defaultValue) end

---@param key string
---@param defaultValue? boolean
---@return boolean
function SyncedTreeAttribute.GetAsBool(key, defaultValue) end

-- Retrieves an int, float, long or double value. Whatever attribute is found for given key, in aformentioned order. If its a string its converted to double
---@param key string
---@param defaultValue? number
---@return number
function SyncedTreeAttribute.GetDecimal(key, defaultValue) end

-- Retrieves a double or defaultValue if key is not found
---@param key string
---@param defaultValue? number
---@return number
function SyncedTreeAttribute.GetDouble(key, defaultValue) end

-- Retrieves a float or defaultvalue if key is not found
---@param key string
---@param defaultValue? number
---@return number
function SyncedTreeAttribute.GetFloat(key, defaultValue) end

-- Retrieves a string attribute or defaultValue if key is not found
---@param key string
---@param defaultValue? string
---@return string
function SyncedTreeAttribute.GetString(key, defaultValue) end

-- Retrieves the value of given attribute, independent of attribute type
---@param key string
---@param defaultValue? string
---@return string
function SyncedTreeAttribute.GetAsString(key, defaultValue) end

-- Retrieves a string or defaultValue if key is not found
---@param key string
---@param defaultValue? string
---@return string
function SyncedTreeAttribute.GetStringArray(key, defaultValue) end

-- Retrieves a byte array or defaultValue if key is not found
---@param key string
---@param defaultValue? number
---@return number
function SyncedTreeAttribute.GetBytes(key, defaultValue) end

-- Retrieves an attribute tree or null if key is not found
---@param key string
---@return ITreeAttribute # Represents a List of nestable Attributes
function SyncedTreeAttribute.GetTreeAttribute(key) end

-- Retrieves an attribute tree or adds it if key is not found.
-- Throws an exception if the key does exist but is not a tree.
---@param key string
---@return ITreeAttribute # Represents a List of nestable Attributes
function SyncedTreeAttribute.GetOrAddTreeAttribute(key) end

-- Retrieves an itemstack or defaultValue if key is not found. Be sure to call stack.ResolveBlockOrItem() after retrieving it.
---@param key string
---@param defaultValue? ItemStack
---@return ItemStack
function SyncedTreeAttribute.GetItemstack(key, defaultValue) end

-- Retrieves a long or default value if key is not found
---@param key string
---@param defaultValue? number
---@return number
function SyncedTreeAttribute.GetLong(key, defaultValue) end

-- Retrieves a long or null value if key is not found
---@param key string
---@return Nullable`1
function SyncedTreeAttribute.TryGetLong(key) end

---@param key string
---@return ModelTransform # Used for transformations applied to a block or item model
function SyncedTreeAttribute.GetModelTransform(key) end

---@return userdata
function SyncedTreeAttribute.GetValue() end

-- Creates a deep copy of the attribute tree
---@return ITreeAttribute # Represents a List of nestable Attributes
function SyncedTreeAttribute.Clone() end

-- Returns true if given tree contains all of elements of this one, but given tree may contain also more elements. Individual node values are exactly matched.
---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param other IAttribute An attribute from an attribute tree
---@return boolean
function SyncedTreeAttribute.IsSubSetOf(worldForResolve, other) end

-- Returns true if given tree exactly matches this one
---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param other IAttribute An attribute from an attribute tree
---@return boolean
function SyncedTreeAttribute.Equals(worldForResolve, other) end

---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param other IAttribute An attribute from an attribute tree
---@param ignorePaths string
---@return boolean
function SyncedTreeAttribute.Equals(worldForResolve, other, ignorePaths) end

---@param worldForResolve IWorldAccessor Important interface to access the game world.
---@param other IAttribute An attribute from an attribute tree
---@param currentPath string
---@param ignorePaths string
---@return boolean
function SyncedTreeAttribute.Equals(worldForResolve, other, currentPath, ignorePaths) end

---@return string
function SyncedTreeAttribute.ToJsonToken() end

-- Merges the sourceTree into the current one
---@param sourceTree ITreeAttribute Represents a List of nestable Attributes
function SyncedTreeAttribute.MergeTree(sourceTree) end

---@param recursive? boolean
---@return ITreeAttribute # Represents a List of nestable Attributes
function SyncedTreeAttribute.SortedCopy(recursive) end

---@return number
function SyncedTreeAttribute.GetHashCode() end

---@param ignoredAttributes string
---@return number
function SyncedTreeAttribute.GetHashCode(ignoredAttributes) end

---@return userdata
function SyncedTreeAttribute.GetType() end

---@return string
function SyncedTreeAttribute.ToString() end

---@param obj userdata
---@return boolean
function SyncedTreeAttribute.Equals(obj) end


