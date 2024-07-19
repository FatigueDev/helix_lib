---@meta

---@class OnChunkPeekedDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
OnChunkPeekedDelegate = {}

---@param object userdata
---@param method IntPtr
---@return OnChunkPeekedDelegate
function OnChunkPeekedDelegate.ctor(object, method) end

---@param columnsByChunkCoordinate table
function OnChunkPeekedDelegate.Invoke(columnsByChunkCoordinate) end

---@param columnsByChunkCoordinate table
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function OnChunkPeekedDelegate.BeginInvoke(columnsByChunkCoordinate, callback, object) end

---@param result IAsyncResult
function OnChunkPeekedDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function OnChunkPeekedDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function OnChunkPeekedDelegate.Equals(obj) end

---@return function
function OnChunkPeekedDelegate.GetInvocationList() end

---@return number
function OnChunkPeekedDelegate.GetHashCode() end

---@return userdata
function OnChunkPeekedDelegate.get_Target() end

---@return userdata
function OnChunkPeekedDelegate.Clone() end

---@param args userdata
---@return userdata
function OnChunkPeekedDelegate.DynamicInvoke(args) end

---@return function
function OnChunkPeekedDelegate.get_Method() end

---@return userdata
function OnChunkPeekedDelegate.GetType() end

---@return string
function OnChunkPeekedDelegate.ToString() end


