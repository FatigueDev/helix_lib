---@meta

-- Handler for processing a message
---@class NetworkClientMessageHandler`1: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
NetworkClientMessageHandler`1 = {}

---@param object userdata
---@param method IntPtr
---@return NetworkClientMessageHandler`1
function NetworkClientMessageHandler`1.ctor(object, method) end

---@param fromPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param packet T
function NetworkClientMessageHandler`1.Invoke(fromPlayer, packet) end

---@param fromPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param packet T
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function NetworkClientMessageHandler`1.BeginInvoke(fromPlayer, packet, callback, object) end

---@param result IAsyncResult
function NetworkClientMessageHandler`1.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function NetworkClientMessageHandler`1.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function NetworkClientMessageHandler`1.Equals(obj) end

---@return function
function NetworkClientMessageHandler`1.GetInvocationList() end

---@return number
function NetworkClientMessageHandler`1.GetHashCode() end

---@return userdata
function NetworkClientMessageHandler`1.get_Target() end

---@return userdata
function NetworkClientMessageHandler`1.Clone() end

---@param args userdata
---@return userdata
function NetworkClientMessageHandler`1.DynamicInvoke(args) end

---@return function
function NetworkClientMessageHandler`1.get_Method() end

---@return userdata
function NetworkClientMessageHandler`1.GetType() end

---@return string
function NetworkClientMessageHandler`1.ToString() end


