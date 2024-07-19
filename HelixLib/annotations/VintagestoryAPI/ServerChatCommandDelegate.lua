---@meta

---@class ServerChatCommandDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
ServerChatCommandDelegate = {}

---@param object userdata
---@param method IntPtr
---@return ServerChatCommandDelegate
function ServerChatCommandDelegate.ctor(object, method) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param groupId number
---@param args CmdArgs The arguments from a client or sever command
function ServerChatCommandDelegate.Invoke(player, groupId, args) end

---@param player IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param groupId number
---@param args CmdArgs The arguments from a client or sever command
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function ServerChatCommandDelegate.BeginInvoke(player, groupId, args, callback, object) end

---@param result IAsyncResult
function ServerChatCommandDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function ServerChatCommandDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function ServerChatCommandDelegate.Equals(obj) end

---@return function
function ServerChatCommandDelegate.GetInvocationList() end

---@return number
function ServerChatCommandDelegate.GetHashCode() end

---@return userdata
function ServerChatCommandDelegate.get_Target() end

---@return userdata
function ServerChatCommandDelegate.Clone() end

---@param args userdata
---@return userdata
function ServerChatCommandDelegate.DynamicInvoke(args) end

---@return function
function ServerChatCommandDelegate.get_Method() end

---@return userdata
function ServerChatCommandDelegate.GetType() end

---@return string
function ServerChatCommandDelegate.ToString() end


