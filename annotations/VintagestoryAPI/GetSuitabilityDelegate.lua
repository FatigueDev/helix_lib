---@meta

---@class GetSuitabilityDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
GetSuitabilityDelegate = {}

---@param object userdata
---@param method IntPtr
---@return GetSuitabilityDelegate
function GetSuitabilityDelegate.ctor(object, method) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param targetSlow ItemSlot The default item slot to item stacks
---@param isMerge boolean
---@return number
function GetSuitabilityDelegate.Invoke(sourceSlot, targetSlow, isMerge) end

---@param sourceSlot ItemSlot The default item slot to item stacks
---@param targetSlow ItemSlot The default item slot to item stacks
---@param isMerge boolean
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function GetSuitabilityDelegate.BeginInvoke(sourceSlot, targetSlow, isMerge, callback, object) end

---@param result IAsyncResult
---@return number
function GetSuitabilityDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function GetSuitabilityDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function GetSuitabilityDelegate.Equals(obj) end

---@return function
function GetSuitabilityDelegate.GetInvocationList() end

---@return number
function GetSuitabilityDelegate.GetHashCode() end

---@return userdata
function GetSuitabilityDelegate.get_Target() end

---@return userdata
function GetSuitabilityDelegate.Clone() end

---@param args userdata
---@return userdata
function GetSuitabilityDelegate.DynamicInvoke(args) end

---@return function
function GetSuitabilityDelegate.get_Method() end

---@return userdata
function GetSuitabilityDelegate.GetType() end

---@return string
function GetSuitabilityDelegate.ToString() end


