---@meta

---@class BlockBreakDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
BlockBreakDelegate = {}

---@param object userdata
---@param method IntPtr
---@return BlockBreakDelegate
function BlockBreakDelegate.ctor(object, method) end

---@param byPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param dropQuantityMultiplier number
---@param handling EnumHandling&
function BlockBreakDelegate.Invoke(byPlayer, blockSel, dropQuantityMultiplier, handling) end

---@param byPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param dropQuantityMultiplier number
---@param handling EnumHandling&
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function BlockBreakDelegate.BeginInvoke(byPlayer, blockSel, dropQuantityMultiplier, handling, callback, object) end

---@param dropQuantityMultiplier number
---@param handling EnumHandling&
---@param result IAsyncResult
function BlockBreakDelegate.EndInvoke(dropQuantityMultiplier, handling, result) end

---@param info SerializationInfo
---@param context StreamingContext
function BlockBreakDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function BlockBreakDelegate.Equals(obj) end

---@return function
function BlockBreakDelegate.GetInvocationList() end

---@return number
function BlockBreakDelegate.GetHashCode() end

---@return userdata
function BlockBreakDelegate.get_Target() end

---@return userdata
function BlockBreakDelegate.Clone() end

---@param args userdata
---@return userdata
function BlockBreakDelegate.DynamicInvoke(args) end

---@return function
function BlockBreakDelegate.get_Method() end

---@return userdata
function BlockBreakDelegate.GetType() end

---@return string
function BlockBreakDelegate.ToString() end


