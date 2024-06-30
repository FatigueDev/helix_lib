---@meta

---@class ServerPacketHandler`1: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
ServerPacketHandler`1 = {}

---@param object userdata
---@param method IntPtr
---@return ServerPacketHandler`1
function ServerPacketHandler`1.ctor(object, method) end

---@param packet Packet_Server
function ServerPacketHandler`1.Invoke(packet) end

---@param packet Packet_Server
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function ServerPacketHandler`1.BeginInvoke(packet, callback, object) end

---@param result IAsyncResult
function ServerPacketHandler`1.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function ServerPacketHandler`1.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function ServerPacketHandler`1.Equals(obj) end

---@return function
function ServerPacketHandler`1.GetInvocationList() end

---@return number
function ServerPacketHandler`1.GetHashCode() end

---@return userdata
function ServerPacketHandler`1.get_Target() end

---@return userdata
function ServerPacketHandler`1.Clone() end

---@param args userdata
---@return userdata
function ServerPacketHandler`1.DynamicInvoke(args) end

---@return function
function ServerPacketHandler`1.get_Method() end

---@return userdata
function ServerPacketHandler`1.GetType() end

---@return string
function ServerPacketHandler`1.ToString() end


