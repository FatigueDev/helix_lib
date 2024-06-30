---@meta

---@class OnGetClimateDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
OnGetClimateDelegate = {}

---@param object userdata
---@param method IntPtr
---@return OnGetClimateDelegate
function OnGetClimateDelegate.ctor(object, method) end

---@param climate ClimateCondition&
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param mode? EnumGetClimateMode The type of climate values you wish to receive
---@param totalDays? number
function OnGetClimateDelegate.Invoke(climate, pos, mode, totalDays) end

---@param climate ClimateCondition&
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param mode EnumGetClimateMode The type of climate values you wish to receive
---@param totalDays number
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function OnGetClimateDelegate.BeginInvoke(climate, pos, mode, totalDays, callback, object) end

---@param climate ClimateCondition&
---@param result IAsyncResult
function OnGetClimateDelegate.EndInvoke(climate, result) end

---@param info SerializationInfo
---@param context StreamingContext
function OnGetClimateDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function OnGetClimateDelegate.Equals(obj) end

---@return function
function OnGetClimateDelegate.GetInvocationList() end

---@return number
function OnGetClimateDelegate.GetHashCode() end

---@return userdata
function OnGetClimateDelegate.get_Target() end

---@return userdata
function OnGetClimateDelegate.Clone() end

---@param args userdata
---@return userdata
function OnGetClimateDelegate.DynamicInvoke(args) end

---@return function
function OnGetClimateDelegate.get_Method() end

---@return userdata
function OnGetClimateDelegate.GetType() end

---@return string
function OnGetClimateDelegate.ToString() end


