---@meta

-- This method needs to find your mountable based on the tree attribute data, which you can write to in IMountable.MountableToTreeAttributes() For example if its an entity, you will want to store the entity id, then this method can simply contain return world.GetEntityById(tree.GetLong("entityId"));
---@class GetMountableDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
GetMountableDelegate = {}

---@param object userdata
---@param method IntPtr
---@return GetMountableDelegate
function GetMountableDelegate.ctor(object, method) end

---@param world IWorldAccessor Important interface to access the game world.
---@param tree TreeAttribute A datastructure to hold generic data for most primitives (int, string, float, etc.). But can also hold generic data using the ByteArrayAttribute + class serialization
---@return IMountable
function GetMountableDelegate.Invoke(world, tree) end

---@param world IWorldAccessor Important interface to access the game world.
---@param tree TreeAttribute A datastructure to hold generic data for most primitives (int, string, float, etc.). But can also hold generic data using the ByteArrayAttribute + class serialization
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function GetMountableDelegate.BeginInvoke(world, tree, callback, object) end

---@param result IAsyncResult
---@return IMountable
function GetMountableDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function GetMountableDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function GetMountableDelegate.Equals(obj) end

---@return function
function GetMountableDelegate.GetInvocationList() end

---@return number
function GetMountableDelegate.GetHashCode() end

---@return userdata
function GetMountableDelegate.get_Target() end

---@return userdata
function GetMountableDelegate.Clone() end

---@param args userdata
---@return userdata
function GetMountableDelegate.DynamicInvoke(args) end

---@return function
function GetMountableDelegate.get_Method() end

---@return userdata
function GetMountableDelegate.GetType() end

---@return string
function GetMountableDelegate.ToString() end


