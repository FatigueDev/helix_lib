---@meta

---@class GetAutoPushIntoSlotDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
GetAutoPushIntoSlotDelegate = {}

---@param object userdata
---@param method IntPtr
---@return GetAutoPushIntoSlotDelegate
function GetAutoPushIntoSlotDelegate.ctor(object, method) end

---@param atBlockFace BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param fromSlot ItemSlot The default item slot to item stacks
---@return ItemSlot # The default item slot to item stacks
function GetAutoPushIntoSlotDelegate.Invoke(atBlockFace, fromSlot) end

---@param atBlockFace BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param fromSlot ItemSlot The default item slot to item stacks
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function GetAutoPushIntoSlotDelegate.BeginInvoke(atBlockFace, fromSlot, callback, object) end

---@param result IAsyncResult
---@return ItemSlot # The default item slot to item stacks
function GetAutoPushIntoSlotDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function GetAutoPushIntoSlotDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function GetAutoPushIntoSlotDelegate.Equals(obj) end

---@return function
function GetAutoPushIntoSlotDelegate.GetInvocationList() end

---@return number
function GetAutoPushIntoSlotDelegate.GetHashCode() end

---@return userdata
function GetAutoPushIntoSlotDelegate.get_Target() end

---@return userdata
function GetAutoPushIntoSlotDelegate.Clone() end

---@param args userdata
---@return userdata
function GetAutoPushIntoSlotDelegate.DynamicInvoke(args) end

---@return function
function GetAutoPushIntoSlotDelegate.get_Method() end

---@return userdata
function GetAutoPushIntoSlotDelegate.GetType() end

---@return string
function GetAutoPushIntoSlotDelegate.ToString() end


