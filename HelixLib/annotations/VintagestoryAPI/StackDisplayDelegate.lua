---@meta

---@class StackDisplayDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
StackDisplayDelegate = {}

---@param object userdata
---@param method IntPtr
---@return StackDisplayDelegate
function StackDisplayDelegate.ctor(object, method) end

---@return ItemStack
function StackDisplayDelegate.Invoke() end

---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function StackDisplayDelegate.BeginInvoke(callback, object) end

---@param result IAsyncResult
---@return ItemStack
function StackDisplayDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function StackDisplayDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function StackDisplayDelegate.Equals(obj) end

---@return function
function StackDisplayDelegate.GetInvocationList() end

---@return number
function StackDisplayDelegate.GetHashCode() end

---@return userdata
function StackDisplayDelegate.get_Target() end

---@return userdata
function StackDisplayDelegate.Clone() end

---@param args userdata
---@return userdata
function StackDisplayDelegate.DynamicInvoke(args) end

---@return function
function StackDisplayDelegate.get_Method() end

---@return userdata
function StackDisplayDelegate.GetType() end

---@return string
function StackDisplayDelegate.ToString() end


