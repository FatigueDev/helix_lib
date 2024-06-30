---@meta

---@class OnInventoryClosedDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
OnInventoryClosedDelegate = {}

---@param object userdata
---@param method IntPtr
---@return OnInventoryClosedDelegate
function OnInventoryClosedDelegate.ctor(object, method) end

---@param player IPlayer Represents a player
function OnInventoryClosedDelegate.Invoke(player) end

---@param player IPlayer Represents a player
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function OnInventoryClosedDelegate.BeginInvoke(player, callback, object) end

---@param result IAsyncResult
function OnInventoryClosedDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function OnInventoryClosedDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function OnInventoryClosedDelegate.Equals(obj) end

---@return function
function OnInventoryClosedDelegate.GetInvocationList() end

---@return number
function OnInventoryClosedDelegate.GetHashCode() end

---@return userdata
function OnInventoryClosedDelegate.get_Target() end

---@return userdata
function OnInventoryClosedDelegate.Clone() end

---@param args userdata
---@return userdata
function OnInventoryClosedDelegate.DynamicInvoke(args) end

---@return function
function OnInventoryClosedDelegate.get_Method() end

---@return userdata
function OnInventoryClosedDelegate.GetType() end

---@return string
function OnInventoryClosedDelegate.ToString() end


