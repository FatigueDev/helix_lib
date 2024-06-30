---@meta

---@class PlayerDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
PlayerDelegate = {}

---@param object userdata
---@param method IntPtr
---@return PlayerDelegate
function PlayerDelegate.ctor(object, method) end

---@param byPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function PlayerDelegate.Invoke(byPlayer) end

---@param byPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function PlayerDelegate.BeginInvoke(byPlayer, callback, object) end

---@param result IAsyncResult
function PlayerDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function PlayerDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function PlayerDelegate.Equals(obj) end

---@return function
function PlayerDelegate.GetInvocationList() end

---@return number
function PlayerDelegate.GetHashCode() end

---@return userdata
function PlayerDelegate.get_Target() end

---@return userdata
function PlayerDelegate.Clone() end

---@param args userdata
---@return userdata
function PlayerDelegate.DynamicInvoke(args) end

---@return function
function PlayerDelegate.get_Method() end

---@return userdata
function PlayerDelegate.GetType() end

---@return string
function PlayerDelegate.ToString() end


