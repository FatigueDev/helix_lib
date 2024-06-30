---@meta

---@class PositionMismatchDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
PositionMismatchDelegate = {}

---@param object userdata
---@param method IntPtr
---@return PositionMismatchDelegate
function PositionMismatchDelegate.ctor(object, method) end

---@param haveBlock Block Basic class for a placeable block
---@param wantBlockCode AssetLocation Defines a complete path to an assets, including it's domain
function PositionMismatchDelegate.Invoke(haveBlock, wantBlockCode) end

---@param haveBlock Block Basic class for a placeable block
---@param wantBlockCode AssetLocation Defines a complete path to an assets, including it's domain
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function PositionMismatchDelegate.BeginInvoke(haveBlock, wantBlockCode, callback, object) end

---@param result IAsyncResult
function PositionMismatchDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function PositionMismatchDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function PositionMismatchDelegate.Equals(obj) end

---@return function
function PositionMismatchDelegate.GetInvocationList() end

---@return number
function PositionMismatchDelegate.GetHashCode() end

---@return userdata
function PositionMismatchDelegate.get_Target() end

---@return userdata
function PositionMismatchDelegate.Clone() end

---@param args userdata
---@return userdata
function PositionMismatchDelegate.DynamicInvoke(args) end

---@return function
function PositionMismatchDelegate.get_Method() end

---@return userdata
function PositionMismatchDelegate.GetType() end

---@return string
function PositionMismatchDelegate.ToString() end


