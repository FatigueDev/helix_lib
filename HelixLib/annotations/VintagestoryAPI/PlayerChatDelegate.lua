---@meta

-- When the player wrote a chat message. Set consumed.value to true to prevent further processing of this chat message
---@class PlayerChatDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
PlayerChatDelegate = {}

---@param object userdata
---@param method IntPtr
---@return PlayerChatDelegate
function PlayerChatDelegate.ctor(object, method) end

---@param byPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param channelId number
---@param message string
---@param data string
---@param consumed BoolRef
function PlayerChatDelegate.Invoke(byPlayer, channelId, message, data, consumed) end

---@param byPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param channelId number
---@param message string
---@param data string
---@param consumed BoolRef
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function PlayerChatDelegate.BeginInvoke(byPlayer, channelId, message, data, consumed, callback, object) end

---@param message string
---@param data string
---@param result IAsyncResult
function PlayerChatDelegate.EndInvoke(message, data, result) end

---@param info SerializationInfo
---@param context StreamingContext
function PlayerChatDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function PlayerChatDelegate.Equals(obj) end

---@return function
function PlayerChatDelegate.GetInvocationList() end

---@return number
function PlayerChatDelegate.GetHashCode() end

---@return userdata
function PlayerChatDelegate.get_Target() end

---@return userdata
function PlayerChatDelegate.Clone() end

---@param args userdata
---@return userdata
function PlayerChatDelegate.DynamicInvoke(args) end

---@return function
function PlayerChatDelegate.get_Method() end

---@return userdata
function PlayerChatDelegate.GetType() end

---@return string
function PlayerChatDelegate.ToString() end


