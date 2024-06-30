---@meta

-- When the player died, this delegate will fire.
---@class PlayerDeathDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
PlayerDeathDelegate = {}

---@param object userdata
---@param method IntPtr
---@return PlayerDeathDelegate
function PlayerDeathDelegate.ctor(object, method) end

---@param byPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param damageSource DamageSource
function PlayerDeathDelegate.Invoke(byPlayer, damageSource) end

---@param byPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param damageSource DamageSource
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function PlayerDeathDelegate.BeginInvoke(byPlayer, damageSource, callback, object) end

---@param result IAsyncResult
function PlayerDeathDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function PlayerDeathDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function PlayerDeathDelegate.Equals(obj) end

---@return function
function PlayerDeathDelegate.GetInvocationList() end

---@return number
function PlayerDeathDelegate.GetHashCode() end

---@return userdata
function PlayerDeathDelegate.get_Target() end

---@return userdata
function PlayerDeathDelegate.Clone() end

---@param args userdata
---@return userdata
function PlayerDeathDelegate.DynamicInvoke(args) end

---@return function
function PlayerDeathDelegate.get_Method() end

---@return userdata
function PlayerDeathDelegate.GetType() end

---@return string
function PlayerDeathDelegate.ToString() end


