---@meta

-- Handler for processing a message
---@class NetworkServerMessageHandler`1: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
NetworkServerMessageHandler`1 = {}

---@param object userdata
---@param method IntPtr
---@return NetworkServerMessageHandler`1
function NetworkServerMessageHandler`1.ctor(object, method) end

---@param packet T
function NetworkServerMessageHandler`1.Invoke(packet) end

---@param packet T
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function NetworkServerMessageHandler`1.BeginInvoke(packet, callback, object) end

---@param result IAsyncResult
function NetworkServerMessageHandler`1.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function NetworkServerMessageHandler`1.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function NetworkServerMessageHandler`1.Equals(obj) end

---@return function
function NetworkServerMessageHandler`1.GetInvocationList() end

---@return number
function NetworkServerMessageHandler`1.GetHashCode() end

---@return userdata
function NetworkServerMessageHandler`1.get_Target() end

---@return userdata
function NetworkServerMessageHandler`1.Clone() end

---@param args userdata
---@return userdata
function NetworkServerMessageHandler`1.DynamicInvoke(args) end

---@return function
function NetworkServerMessageHandler`1.get_Method() end

---@return userdata
function NetworkServerMessageHandler`1.GetType() end

---@return string
function NetworkServerMessageHandler`1.ToString() end


