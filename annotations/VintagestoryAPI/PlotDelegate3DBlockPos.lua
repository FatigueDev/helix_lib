---@meta

---@class PlotDelegate3DBlockPos: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
PlotDelegate3DBlockPos = {}

---@param object userdata
---@param method IntPtr
---@return PlotDelegate3DBlockPos
function PlotDelegate3DBlockPos.ctor(object, method) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
function PlotDelegate3DBlockPos.Invoke(pos) end

---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function PlotDelegate3DBlockPos.BeginInvoke(pos, callback, object) end

---@param result IAsyncResult
function PlotDelegate3DBlockPos.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function PlotDelegate3DBlockPos.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function PlotDelegate3DBlockPos.Equals(obj) end

---@return function
function PlotDelegate3DBlockPos.GetInvocationList() end

---@return number
function PlotDelegate3DBlockPos.GetHashCode() end

---@return userdata
function PlotDelegate3DBlockPos.get_Target() end

---@return userdata
function PlotDelegate3DBlockPos.Clone() end

---@param args userdata
---@return userdata
function PlotDelegate3DBlockPos.DynamicInvoke(args) end

---@return function
function PlotDelegate3DBlockPos.get_Method() end

---@return userdata
function PlotDelegate3DBlockPos.GetType() end

---@return string
function PlotDelegate3DBlockPos.ToString() end


