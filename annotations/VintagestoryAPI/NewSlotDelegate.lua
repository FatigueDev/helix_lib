---@meta

---@class NewSlotDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
NewSlotDelegate = {}

---@param object userdata
---@param method IntPtr
---@return NewSlotDelegate
function NewSlotDelegate.ctor(object, method) end

---@param slotId number
---@param self InventoryGeneric A general purpose inventory
---@return ItemSlot # The default item slot to item stacks
function NewSlotDelegate.Invoke(slotId, self) end

---@param slotId number
---@param self InventoryGeneric A general purpose inventory
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function NewSlotDelegate.BeginInvoke(slotId, self, callback, object) end

---@param result IAsyncResult
---@return ItemSlot # The default item slot to item stacks
function NewSlotDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function NewSlotDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function NewSlotDelegate.Equals(obj) end

---@return function
function NewSlotDelegate.GetInvocationList() end

---@return number
function NewSlotDelegate.GetHashCode() end

---@return userdata
function NewSlotDelegate.get_Target() end

---@return userdata
function NewSlotDelegate.Clone() end

---@param args userdata
---@return userdata
function NewSlotDelegate.DynamicInvoke(args) end

---@return function
function NewSlotDelegate.get_Method() end

---@return userdata
function NewSlotDelegate.GetType() end

---@return string
function NewSlotDelegate.ToString() end


