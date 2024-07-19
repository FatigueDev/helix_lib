---@meta

---@class ClientChatLineDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
ClientChatLineDelegate = {}

---@param object userdata
---@param method IntPtr
---@return ClientChatLineDelegate
function ClientChatLineDelegate.ctor(object, method) end

---@param groupId number
---@param message string
---@param handled EnumHandling&
function ClientChatLineDelegate.Invoke(groupId, message, handled) end

---@param groupId number
---@param message string
---@param handled EnumHandling&
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function ClientChatLineDelegate.BeginInvoke(groupId, message, handled, callback, object) end

---@param message string
---@param handled EnumHandling&
---@param result IAsyncResult
function ClientChatLineDelegate.EndInvoke(message, handled, result) end

---@param info SerializationInfo
---@param context StreamingContext
function ClientChatLineDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function ClientChatLineDelegate.Equals(obj) end

---@return function
function ClientChatLineDelegate.GetInvocationList() end

---@return number
function ClientChatLineDelegate.GetHashCode() end

---@return userdata
function ClientChatLineDelegate.get_Target() end

---@return userdata
function ClientChatLineDelegate.Clone() end

---@param args userdata
---@return userdata
function ClientChatLineDelegate.DynamicInvoke(args) end

---@return function
function ClientChatLineDelegate.get_Method() end

---@return userdata
function ClientChatLineDelegate.GetType() end

---@return string
function ClientChatLineDelegate.ToString() end


