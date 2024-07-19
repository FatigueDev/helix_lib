---@meta

---@class BlockFilter: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
BlockFilter = {}

---@param object userdata
---@param method IntPtr
---@return BlockFilter
function BlockFilter.ctor(object, method) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param block Block Basic class for a placeable block
---@return boolean
function BlockFilter.Invoke(pos, block) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param block Block Basic class for a placeable block
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function BlockFilter.BeginInvoke(pos, block, callback, object) end

---@param result IAsyncResult
---@return boolean
function BlockFilter.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function BlockFilter.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function BlockFilter.Equals(obj) end

---@return function
function BlockFilter.GetInvocationList() end

---@return number
function BlockFilter.GetHashCode() end

---@return userdata
function BlockFilter.get_Target() end

---@return userdata
function BlockFilter.Clone() end

---@param args userdata
---@return userdata
function BlockFilter.DynamicInvoke(args) end

---@return function
function BlockFilter.get_Method() end

---@return userdata
function BlockFilter.GetType() end

---@return string
function BlockFilter.ToString() end


