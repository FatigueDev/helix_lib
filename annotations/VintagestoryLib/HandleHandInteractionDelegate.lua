---@meta

---@class HandleHandInteractionDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
HandleHandInteractionDelegate = {}

---@param object userdata
---@param method IntPtr
---@return HandleHandInteractionDelegate
function HandleHandInteractionDelegate.ctor(object, method) end

---@param packet Packet_Client
---@param client ConnectedClient
function HandleHandInteractionDelegate.Invoke(packet, client) end

---@param packet Packet_Client
---@param client ConnectedClient
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function HandleHandInteractionDelegate.BeginInvoke(packet, client, callback, object) end

---@param result IAsyncResult
function HandleHandInteractionDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function HandleHandInteractionDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function HandleHandInteractionDelegate.Equals(obj) end

---@return function
function HandleHandInteractionDelegate.GetInvocationList() end

---@return number
function HandleHandInteractionDelegate.GetHashCode() end

---@return userdata
function HandleHandInteractionDelegate.get_Target() end

---@return userdata
function HandleHandInteractionDelegate.Clone() end

---@param args userdata
---@return userdata
function HandleHandInteractionDelegate.DynamicInvoke(args) end

---@return function
function HandleHandInteractionDelegate.get_Method() end

---@return userdata
function HandleHandInteractionDelegate.GetType() end

---@return string
function HandleHandInteractionDelegate.ToString() end


