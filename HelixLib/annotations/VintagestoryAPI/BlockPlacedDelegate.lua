---@meta

---@class BlockPlacedDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
BlockPlacedDelegate = {}

---@param object userdata
---@param method IntPtr
---@return BlockPlacedDelegate
function BlockPlacedDelegate.ctor(object, method) end

---@param byPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param oldblockId number
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param withItemStack ItemStack
function BlockPlacedDelegate.Invoke(byPlayer, oldblockId, blockSel, withItemStack) end

---@param byPlayer IServerPlayer Represents a player on the server side that joined the server at least once. May not be online at this point in time.
---@param oldblockId number
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param withItemStack ItemStack
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function BlockPlacedDelegate.BeginInvoke(byPlayer, oldblockId, blockSel, withItemStack, callback, object) end

---@param result IAsyncResult
function BlockPlacedDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function BlockPlacedDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function BlockPlacedDelegate.Equals(obj) end

---@return function
function BlockPlacedDelegate.GetInvocationList() end

---@return number
function BlockPlacedDelegate.GetHashCode() end

---@return userdata
function BlockPlacedDelegate.get_Target() end

---@return userdata
function BlockPlacedDelegate.Clone() end

---@param args userdata
---@return userdata
function BlockPlacedDelegate.DynamicInvoke(args) end

---@return function
function BlockPlacedDelegate.get_Method() end

---@return userdata
function BlockPlacedDelegate.GetType() end

---@return string
function BlockPlacedDelegate.ToString() end


