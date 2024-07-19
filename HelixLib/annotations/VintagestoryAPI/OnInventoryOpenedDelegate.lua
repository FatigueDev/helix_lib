---@meta

---@class OnInventoryOpenedDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
OnInventoryOpenedDelegate = {}

---@param object userdata
---@param method IntPtr
---@return OnInventoryOpenedDelegate
function OnInventoryOpenedDelegate.ctor(object, method) end

---@param player IPlayer Represents a player
function OnInventoryOpenedDelegate.Invoke(player) end

---@param player IPlayer Represents a player
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function OnInventoryOpenedDelegate.BeginInvoke(player, callback, object) end

---@param result IAsyncResult
function OnInventoryOpenedDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function OnInventoryOpenedDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function OnInventoryOpenedDelegate.Equals(obj) end

---@return function
function OnInventoryOpenedDelegate.GetInvocationList() end

---@return number
function OnInventoryOpenedDelegate.GetHashCode() end

---@return userdata
function OnInventoryOpenedDelegate.get_Target() end

---@return userdata
function OnInventoryOpenedDelegate.Clone() end

---@param args userdata
---@return userdata
function OnInventoryOpenedDelegate.DynamicInvoke(args) end

---@return function
function OnInventoryOpenedDelegate.get_Method() end

---@return userdata
function OnInventoryOpenedDelegate.GetType() end

---@return string
function OnInventoryOpenedDelegate.ToString() end


