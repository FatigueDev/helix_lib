---@meta

---@class GrowTreeDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
GrowTreeDelegate = {}

---@param object userdata
---@param method IntPtr
---@return GrowTreeDelegate
function GrowTreeDelegate.ctor(object, method) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param treeGenParams TreeGenParams
function GrowTreeDelegate.Invoke(blockAccessor, pos, treeGenParams) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param treeGenParams TreeGenParams
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function GrowTreeDelegate.BeginInvoke(blockAccessor, pos, treeGenParams, callback, object) end

---@param result IAsyncResult
function GrowTreeDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function GrowTreeDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function GrowTreeDelegate.Equals(obj) end

---@return function
function GrowTreeDelegate.GetInvocationList() end

---@return number
function GrowTreeDelegate.GetHashCode() end

---@return userdata
function GrowTreeDelegate.get_Target() end

---@return userdata
function GrowTreeDelegate.Clone() end

---@param args userdata
---@return userdata
function GrowTreeDelegate.DynamicInvoke(args) end

---@return function
function GrowTreeDelegate.get_Method() end

---@return userdata
function GrowTreeDelegate.GetType() end

---@return string
function GrowTreeDelegate.ToString() end


