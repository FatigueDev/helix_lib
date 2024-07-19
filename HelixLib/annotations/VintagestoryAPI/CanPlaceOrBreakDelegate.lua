---@meta

---@class CanPlaceOrBreakDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
CanPlaceOrBreakDelegate = {}

---@param object userdata
---@param method IntPtr
---@return CanPlaceOrBreakDelegate
function CanPlaceOrBreakDelegate.ctor(object, method) end

---@param byPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param claimant string
---@return boolean
function CanPlaceOrBreakDelegate.Invoke(byPlayer, blockSel, claimant) end

---@param byPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param claimant string
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function CanPlaceOrBreakDelegate.BeginInvoke(byPlayer, blockSel, claimant, callback, object) end

---@param claimant string
---@param result IAsyncResult
---@return boolean
function CanPlaceOrBreakDelegate.EndInvoke(claimant, result) end

---@param info SerializationInfo
---@param context StreamingContext
function CanPlaceOrBreakDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function CanPlaceOrBreakDelegate.Equals(obj) end

---@return function
function CanPlaceOrBreakDelegate.GetInvocationList() end

---@return number
function CanPlaceOrBreakDelegate.GetHashCode() end

---@return userdata
function CanPlaceOrBreakDelegate.get_Target() end

---@return userdata
function CanPlaceOrBreakDelegate.Clone() end

---@param args userdata
---@return userdata
function CanPlaceOrBreakDelegate.DynamicInvoke(args) end

---@return function
function CanPlaceOrBreakDelegate.get_Method() end

---@return userdata
function CanPlaceOrBreakDelegate.GetType() end

---@return string
function CanPlaceOrBreakDelegate.ToString() end


