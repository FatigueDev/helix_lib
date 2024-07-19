---@meta

---@class ClientPacketHandler`2: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
ClientPacketHandler`2 = {}

---@param object userdata
---@param method IntPtr
---@return ClientPacketHandler`2
function ClientPacketHandler`2.ctor(object, method) end

---@param packet Packet_Client
---@param player IServerPlayer
function ClientPacketHandler`2.Invoke(packet, player) end

---@param packet Packet_Client
---@param player IServerPlayer
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function ClientPacketHandler`2.BeginInvoke(packet, player, callback, object) end

---@param result IAsyncResult
function ClientPacketHandler`2.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function ClientPacketHandler`2.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function ClientPacketHandler`2.Equals(obj) end

---@return function
function ClientPacketHandler`2.GetInvocationList() end

---@return number
function ClientPacketHandler`2.GetHashCode() end

---@return userdata
function ClientPacketHandler`2.get_Target() end

---@return userdata
function ClientPacketHandler`2.Clone() end

---@param args userdata
---@return userdata
function ClientPacketHandler`2.DynamicInvoke(args) end

---@return function
function ClientPacketHandler`2.get_Method() end

---@return userdata
function ClientPacketHandler`2.GetType() end

---@return string
function ClientPacketHandler`2.ToString() end


