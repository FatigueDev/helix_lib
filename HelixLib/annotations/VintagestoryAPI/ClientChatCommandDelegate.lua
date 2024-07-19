---@meta

---@class ClientChatCommandDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
ClientChatCommandDelegate = {}

---@param object userdata
---@param method IntPtr
---@return ClientChatCommandDelegate
function ClientChatCommandDelegate.ctor(object, method) end

---@param groupId number
---@param args CmdArgs The arguments from a client or sever command
function ClientChatCommandDelegate.Invoke(groupId, args) end

---@param groupId number
---@param args CmdArgs The arguments from a client or sever command
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function ClientChatCommandDelegate.BeginInvoke(groupId, args, callback, object) end

---@param result IAsyncResult
function ClientChatCommandDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function ClientChatCommandDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function ClientChatCommandDelegate.Equals(obj) end

---@return function
function ClientChatCommandDelegate.GetInvocationList() end

---@return number
function ClientChatCommandDelegate.GetHashCode() end

---@return userdata
function ClientChatCommandDelegate.get_Target() end

---@return userdata
function ClientChatCommandDelegate.Clone() end

---@param args userdata
---@return userdata
function ClientChatCommandDelegate.DynamicInvoke(args) end

---@return function
function ClientChatCommandDelegate.get_Method() end

---@return userdata
function ClientChatCommandDelegate.GetType() end

---@return string
function ClientChatCommandDelegate.ToString() end


