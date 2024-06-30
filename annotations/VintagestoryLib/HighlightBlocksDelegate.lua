---@meta

---@class HighlightBlocksDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
HighlightBlocksDelegate = {}

---@param object userdata
---@param method IntPtr
---@return HighlightBlocksDelegate
function HighlightBlocksDelegate.ctor(object, method) end

---@param player IPlayer Represents a player
---@param slotId number
---@param blocks table
---@param colors table
---@param mode? EnumHighlightBlocksMode
---@param shape? EnumHighlightShape
---@param scale? number
function HighlightBlocksDelegate.Invoke(player, slotId, blocks, colors, mode, shape, scale) end

---@param player IPlayer Represents a player
---@param slotId number
---@param blocks table
---@param colors table
---@param mode EnumHighlightBlocksMode
---@param shape EnumHighlightShape
---@param scale number
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function HighlightBlocksDelegate.BeginInvoke(player, slotId, blocks, colors, mode, shape, scale, callback, object) end

---@param result IAsyncResult
function HighlightBlocksDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function HighlightBlocksDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function HighlightBlocksDelegate.Equals(obj) end

---@return function
function HighlightBlocksDelegate.GetInvocationList() end

---@return number
function HighlightBlocksDelegate.GetHashCode() end

---@return userdata
function HighlightBlocksDelegate.get_Target() end

---@return userdata
function HighlightBlocksDelegate.Clone() end

---@param args userdata
---@return userdata
function HighlightBlocksDelegate.DynamicInvoke(args) end

---@return function
function HighlightBlocksDelegate.get_Method() end

---@return userdata
function HighlightBlocksDelegate.GetType() end

---@return string
function HighlightBlocksDelegate.ToString() end


