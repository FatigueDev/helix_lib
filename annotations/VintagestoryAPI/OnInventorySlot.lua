---@meta

-- Return false to stop walking the inventory
---@class OnInventorySlot: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
OnInventorySlot = {}

---@param object userdata
---@param method IntPtr
---@return OnInventorySlot
function OnInventorySlot.ctor(object, method) end

---@param slot ItemSlot The default item slot to item stacks
---@return boolean
function OnInventorySlot.Invoke(slot) end

---@param slot ItemSlot The default item slot to item stacks
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function OnInventorySlot.BeginInvoke(slot, callback, object) end

---@param result IAsyncResult
---@return boolean
function OnInventorySlot.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function OnInventorySlot.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function OnInventorySlot.Equals(obj) end

---@return function
function OnInventorySlot.GetInvocationList() end

---@return number
function OnInventorySlot.GetHashCode() end

---@return userdata
function OnInventorySlot.get_Target() end

---@return userdata
function OnInventorySlot.Clone() end

---@param args userdata
---@return userdata
function OnInventorySlot.DynamicInvoke(args) end

---@return function
function OnInventorySlot.get_Method() end

---@return userdata
function OnInventorySlot.GetType() end

---@return string
function OnInventorySlot.ToString() end


