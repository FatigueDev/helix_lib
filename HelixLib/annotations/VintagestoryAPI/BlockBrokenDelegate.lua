---@meta

---@class BlockBrokenDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
BlockBrokenDelegate = {}

---@param object userdata
---@param method IntPtr
---@return BlockBrokenDelegate
function BlockBrokenDelegate.ctor(object, method) end

---@param byPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param oldblockId number
---@param blockSel BlockSelection Contains all the information for a players block selection event
function BlockBrokenDelegate.Invoke(byPlayer, oldblockId, blockSel) end

---@param byPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param oldblockId number
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function BlockBrokenDelegate.BeginInvoke(byPlayer, oldblockId, blockSel, callback, object) end

---@param result IAsyncResult
function BlockBrokenDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function BlockBrokenDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function BlockBrokenDelegate.Equals(obj) end

---@return function
function BlockBrokenDelegate.GetInvocationList() end

---@return number
function BlockBrokenDelegate.GetHashCode() end

---@return userdata
function BlockBrokenDelegate.get_Target() end

---@return userdata
function BlockBrokenDelegate.Clone() end

---@param args userdata
---@return userdata
function BlockBrokenDelegate.DynamicInvoke(args) end

---@return function
function BlockBrokenDelegate.get_Method() end

---@return userdata
function BlockBrokenDelegate.GetType() end

---@return string
function BlockBrokenDelegate.ToString() end


