---@meta

---@class PlayerEventDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
PlayerEventDelegate = {}

---@param object userdata
---@param method IntPtr
---@return PlayerEventDelegate
function PlayerEventDelegate.ctor(object, method) end

---@param byPlayer IClientPlayer A client side player
function PlayerEventDelegate.Invoke(byPlayer) end

---@param byPlayer IClientPlayer A client side player
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function PlayerEventDelegate.BeginInvoke(byPlayer, callback, object) end

---@param result IAsyncResult
function PlayerEventDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function PlayerEventDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function PlayerEventDelegate.Equals(obj) end

---@return function
function PlayerEventDelegate.GetInvocationList() end

---@return number
function PlayerEventDelegate.GetHashCode() end

---@return userdata
function PlayerEventDelegate.get_Target() end

---@return userdata
function PlayerEventDelegate.Clone() end

---@param args userdata
---@return userdata
function PlayerEventDelegate.DynamicInvoke(args) end

---@return function
function PlayerEventDelegate.get_Method() end

---@return userdata
function PlayerEventDelegate.GetType() end

---@return string
function PlayerEventDelegate.ToString() end


