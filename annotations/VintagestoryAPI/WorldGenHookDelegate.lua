---@meta

---@class WorldGenHookDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
WorldGenHookDelegate = {}

---@param object userdata
---@param method IntPtr
---@return WorldGenHookDelegate
function WorldGenHookDelegate.ctor(object, method) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param instructions AssetLocation Defines a complete path to an assets, including it's domain
function WorldGenHookDelegate.Invoke(blockAccessor, pos, instructions) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param instructions AssetLocation Defines a complete path to an assets, including it's domain
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function WorldGenHookDelegate.BeginInvoke(blockAccessor, pos, instructions, callback, object) end

---@param result IAsyncResult
function WorldGenHookDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function WorldGenHookDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function WorldGenHookDelegate.Equals(obj) end

---@return function
function WorldGenHookDelegate.GetInvocationList() end

---@return number
function WorldGenHookDelegate.GetHashCode() end

---@return userdata
function WorldGenHookDelegate.get_Target() end

---@return userdata
function WorldGenHookDelegate.Clone() end

---@param args userdata
---@return userdata
function WorldGenHookDelegate.DynamicInvoke(args) end

---@return function
function WorldGenHookDelegate.get_Method() end

---@return userdata
function WorldGenHookDelegate.GetType() end

---@return string
function WorldGenHookDelegate.ToString() end


