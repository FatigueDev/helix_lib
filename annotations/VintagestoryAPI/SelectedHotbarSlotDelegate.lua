---@meta

---@class SelectedHotbarSlotDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
SelectedHotbarSlotDelegate = {}

---@param object userdata
---@param method IntPtr
---@return SelectedHotbarSlotDelegate
function SelectedHotbarSlotDelegate.ctor(object, method) end

---@param byPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
function SelectedHotbarSlotDelegate.Invoke(byPlayer) end

---@param byPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function SelectedHotbarSlotDelegate.BeginInvoke(byPlayer, callback, object) end

---@param result IAsyncResult
function SelectedHotbarSlotDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function SelectedHotbarSlotDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function SelectedHotbarSlotDelegate.Equals(obj) end

---@return function
function SelectedHotbarSlotDelegate.GetInvocationList() end

---@return number
function SelectedHotbarSlotDelegate.GetHashCode() end

---@return userdata
function SelectedHotbarSlotDelegate.get_Target() end

---@return userdata
function SelectedHotbarSlotDelegate.Clone() end

---@param args userdata
---@return userdata
function SelectedHotbarSlotDelegate.DynamicInvoke(args) end

---@return function
function SelectedHotbarSlotDelegate.get_Method() end

---@return userdata
function SelectedHotbarSlotDelegate.GetType() end

---@return string
function SelectedHotbarSlotDelegate.ToString() end


