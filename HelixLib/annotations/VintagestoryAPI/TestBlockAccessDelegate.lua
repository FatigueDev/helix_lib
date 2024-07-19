---@meta

---@class TestBlockAccessDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
TestBlockAccessDelegate = {}

---@param object userdata
---@param method IntPtr
---@return TestBlockAccessDelegate
function TestBlockAccessDelegate.ctor(object, method) end

---@param player IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param accessType EnumBlockAccessFlags
---@param claimant string
---@param response EnumWorldAccessResponse
---@return EnumWorldAccessResponse
function TestBlockAccessDelegate.Invoke(player, blockSel, accessType, claimant, response) end

---@param player IPlayer Represents a player
---@param blockSel BlockSelection Contains all the information for a players block selection event
---@param accessType EnumBlockAccessFlags
---@param claimant string
---@param response EnumWorldAccessResponse
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function TestBlockAccessDelegate.BeginInvoke(player, blockSel, accessType, claimant, response, callback, object) end

---@param result IAsyncResult
---@return EnumWorldAccessResponse
function TestBlockAccessDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function TestBlockAccessDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function TestBlockAccessDelegate.Equals(obj) end

---@return function
function TestBlockAccessDelegate.GetInvocationList() end

---@return number
function TestBlockAccessDelegate.GetHashCode() end

---@return userdata
function TestBlockAccessDelegate.get_Target() end

---@return userdata
function TestBlockAccessDelegate.Clone() end

---@param args userdata
---@return userdata
function TestBlockAccessDelegate.DynamicInvoke(args) end

---@return function
function TestBlockAccessDelegate.get_Method() end

---@return userdata
function TestBlockAccessDelegate.GetType() end

---@return string
function TestBlockAccessDelegate.ToString() end


