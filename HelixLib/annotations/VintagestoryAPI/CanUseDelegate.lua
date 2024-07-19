---@meta

---@class CanUseDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
CanUseDelegate = {}

---@param object userdata
---@param method IntPtr
---@return CanUseDelegate
function CanUseDelegate.ctor(object, method) end

---@param byPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@return boolean
function CanUseDelegate.Invoke(byPlayer, blockSel) end

---@param byPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function CanUseDelegate.BeginInvoke(byPlayer, blockSel, callback, object) end

---@param result IAsyncResult
---@return boolean
function CanUseDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function CanUseDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function CanUseDelegate.Equals(obj) end

---@return function
function CanUseDelegate.GetInvocationList() end

---@return number
function CanUseDelegate.GetHashCode() end

---@return userdata
function CanUseDelegate.get_Target() end

---@return userdata
function CanUseDelegate.Clone() end

---@param args userdata
---@return userdata
function CanUseDelegate.DynamicInvoke(args) end

---@return function
function CanUseDelegate.get_Method() end

---@return userdata
function CanUseDelegate.GetType() end

---@return string
function CanUseDelegate.ToString() end


