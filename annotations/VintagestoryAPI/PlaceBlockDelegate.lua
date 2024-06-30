---@meta

---@class PlaceBlockDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
PlaceBlockDelegate = {}

---@param object userdata
---@param method IntPtr
---@return PlaceBlockDelegate
function PlaceBlockDelegate.ctor(object, method) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param newBlock Block Basic class for a placeable block
---@param replaceMeta boolean
---@return number
function PlaceBlockDelegate.Invoke(blockAccessor, pos, newBlock, replaceMeta) end

---@param blockAccessor IBlockAccessor Provides read/write access to the blocks of a world
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param newBlock Block Basic class for a placeable block
---@param replaceMeta boolean
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function PlaceBlockDelegate.BeginInvoke(blockAccessor, pos, newBlock, replaceMeta, callback, object) end

---@param result IAsyncResult
---@return number
function PlaceBlockDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function PlaceBlockDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function PlaceBlockDelegate.Equals(obj) end

---@return function
function PlaceBlockDelegate.GetInvocationList() end

---@return number
function PlaceBlockDelegate.GetHashCode() end

---@return userdata
function PlaceBlockDelegate.get_Target() end

---@return userdata
function PlaceBlockDelegate.Clone() end

---@param args userdata
---@return userdata
function PlaceBlockDelegate.DynamicInvoke(args) end

---@return function
function PlaceBlockDelegate.get_Method() end

---@return userdata
function PlaceBlockDelegate.GetType() end

---@return string
function PlaceBlockDelegate.ToString() end


