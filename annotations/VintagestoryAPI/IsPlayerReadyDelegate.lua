---@meta

---@class IsPlayerReadyDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
IsPlayerReadyDelegate = {}

---@param object userdata
---@param method IntPtr
---@return IsPlayerReadyDelegate
function IsPlayerReadyDelegate.ctor(object, method) end

---@param handling EnumHandling&
---@return boolean
function IsPlayerReadyDelegate.Invoke(handling) end

---@param handling EnumHandling&
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function IsPlayerReadyDelegate.BeginInvoke(handling, callback, object) end

---@param handling EnumHandling&
---@param result IAsyncResult
---@return boolean
function IsPlayerReadyDelegate.EndInvoke(handling, result) end

---@param info SerializationInfo
---@param context StreamingContext
function IsPlayerReadyDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function IsPlayerReadyDelegate.Equals(obj) end

---@return function
function IsPlayerReadyDelegate.GetInvocationList() end

---@return number
function IsPlayerReadyDelegate.GetHashCode() end

---@return userdata
function IsPlayerReadyDelegate.get_Target() end

---@return userdata
function IsPlayerReadyDelegate.Clone() end

---@param args userdata
---@return userdata
function IsPlayerReadyDelegate.DynamicInvoke(args) end

---@return function
function IsPlayerReadyDelegate.get_Method() end

---@return userdata
function IsPlayerReadyDelegate.GetType() end

---@return string
function IsPlayerReadyDelegate.ToString() end


