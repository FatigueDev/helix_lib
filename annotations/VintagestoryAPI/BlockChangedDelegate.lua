---@meta

-- OldBlock param may be null!
---@class BlockChangedDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
BlockChangedDelegate = {}

---@param object userdata
---@param method IntPtr
---@return BlockChangedDelegate
function BlockChangedDelegate.ctor(object, method) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param oldBlock Block Basic class for a placeable block
function BlockChangedDelegate.Invoke(pos, oldBlock) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param oldBlock Block Basic class for a placeable block
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function BlockChangedDelegate.BeginInvoke(pos, oldBlock, callback, object) end

---@param result IAsyncResult
function BlockChangedDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function BlockChangedDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function BlockChangedDelegate.Equals(obj) end

---@return function
function BlockChangedDelegate.GetInvocationList() end

---@return number
function BlockChangedDelegate.GetHashCode() end

---@return userdata
function BlockChangedDelegate.get_Target() end

---@return userdata
function BlockChangedDelegate.Clone() end

---@param args userdata
---@return userdata
function BlockChangedDelegate.DynamicInvoke(args) end

---@return function
function BlockChangedDelegate.get_Method() end

---@return userdata
function BlockChangedDelegate.GetType() end

---@return string
function BlockChangedDelegate.ToString() end


