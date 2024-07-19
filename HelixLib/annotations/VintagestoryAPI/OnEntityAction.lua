---@meta

---@class OnEntityAction: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
OnEntityAction = {}

---@param object userdata
---@param method IntPtr
---@return OnEntityAction
function OnEntityAction.ctor(object, method) end

---@param action EnumEntityAction A players in-world action
---@param on boolean
---@param handled EnumHandling&
function OnEntityAction.Invoke(action, on, handled) end

---@param action EnumEntityAction A players in-world action
---@param on boolean
---@param handled EnumHandling&
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function OnEntityAction.BeginInvoke(action, on, handled, callback, object) end

---@param handled EnumHandling&
---@param result IAsyncResult
function OnEntityAction.EndInvoke(handled, result) end

---@param info SerializationInfo
---@param context StreamingContext
function OnEntityAction.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function OnEntityAction.Equals(obj) end

---@return function
function OnEntityAction.GetInvocationList() end

---@return number
function OnEntityAction.GetHashCode() end

---@return userdata
function OnEntityAction.get_Target() end

---@return userdata
function OnEntityAction.Clone() end

---@param args userdata
---@return userdata
function OnEntityAction.DynamicInvoke(args) end

---@return function
function OnEntityAction.get_Method() end

---@return userdata
function OnEntityAction.GetType() end

---@return string
function OnEntityAction.ToString() end


