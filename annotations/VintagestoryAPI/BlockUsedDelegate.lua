---@meta

---@class BlockUsedDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
BlockUsedDelegate = {}

---@param object userdata
---@param method IntPtr
---@return BlockUsedDelegate
function BlockUsedDelegate.ctor(object, method) end

---@param byPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param blockSel BlockSelection Contains all the information for a players block selection event
function BlockUsedDelegate.Invoke(byPlayer, blockSel) end

---@param byPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function BlockUsedDelegate.BeginInvoke(byPlayer, blockSel, callback, object) end

---@param result IAsyncResult
function BlockUsedDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function BlockUsedDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function BlockUsedDelegate.Equals(obj) end

---@return function
function BlockUsedDelegate.GetInvocationList() end

---@return number
function BlockUsedDelegate.GetHashCode() end

---@return userdata
function BlockUsedDelegate.get_Target() end

---@return userdata
function BlockUsedDelegate.Clone() end

---@param args userdata
---@return userdata
function BlockUsedDelegate.DynamicInvoke(args) end

---@return function
function BlockUsedDelegate.get_Method() end

---@return userdata
function BlockUsedDelegate.GetType() end

---@return string
function BlockUsedDelegate.ToString() end


