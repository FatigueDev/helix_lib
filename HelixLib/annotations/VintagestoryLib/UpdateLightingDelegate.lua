---@meta

---@class UpdateLightingDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
UpdateLightingDelegate = {}

---@param object userdata
---@param method IntPtr
---@return UpdateLightingDelegate
function UpdateLightingDelegate.ctor(object, method) end

---@param oldBlockId number
---@param newBlockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param blockUpdatesBulk? table
function UpdateLightingDelegate.Invoke(oldBlockId, newBlockId, pos, blockUpdatesBulk) end

---@param oldBlockId number
---@param newBlockId number
---@param pos BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param blockUpdatesBulk table
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function UpdateLightingDelegate.BeginInvoke(oldBlockId, newBlockId, pos, blockUpdatesBulk, callback, object) end

---@param result IAsyncResult
function UpdateLightingDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function UpdateLightingDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function UpdateLightingDelegate.Equals(obj) end

---@return function
function UpdateLightingDelegate.GetInvocationList() end

---@return number
function UpdateLightingDelegate.GetHashCode() end

---@return userdata
function UpdateLightingDelegate.get_Target() end

---@return userdata
function UpdateLightingDelegate.Clone() end

---@param args userdata
---@return userdata
function UpdateLightingDelegate.DynamicInvoke(args) end

---@return function
function UpdateLightingDelegate.get_Method() end

---@return userdata
function UpdateLightingDelegate.GetType() end

---@return string
function UpdateLightingDelegate.ToString() end


