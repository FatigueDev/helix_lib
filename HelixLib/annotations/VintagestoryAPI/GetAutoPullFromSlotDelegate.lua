---@meta

---@class GetAutoPullFromSlotDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
GetAutoPullFromSlotDelegate = {}

---@param object userdata
---@param method IntPtr
---@return GetAutoPullFromSlotDelegate
function GetAutoPullFromSlotDelegate.ctor(object, method) end

---@param atBlockFace BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@return ItemSlot # The default item slot to item stacks
function GetAutoPullFromSlotDelegate.Invoke(atBlockFace) end

---@param atBlockFace BlockFacing Represents one of the 6 faces of a cube and all it's properties. Uses a right Handed Coordinate System. See also http://www.matrix44.net/cms/notes/opengl-3d-graphics/coordinate-systems-in-opengl In short:  North: Negative Z East: Positive X South: Positive Z West: Negative X Up: Positive Y Down: Negative Y
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function GetAutoPullFromSlotDelegate.BeginInvoke(atBlockFace, callback, object) end

---@param result IAsyncResult
---@return ItemSlot # The default item slot to item stacks
function GetAutoPullFromSlotDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function GetAutoPullFromSlotDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function GetAutoPullFromSlotDelegate.Equals(obj) end

---@return function
function GetAutoPullFromSlotDelegate.GetInvocationList() end

---@return number
function GetAutoPullFromSlotDelegate.GetHashCode() end

---@return userdata
function GetAutoPullFromSlotDelegate.get_Target() end

---@return userdata
function GetAutoPullFromSlotDelegate.Clone() end

---@param args userdata
---@return userdata
function GetAutoPullFromSlotDelegate.DynamicInvoke(args) end

---@return function
function GetAutoPullFromSlotDelegate.get_Method() end

---@return userdata
function GetAutoPullFromSlotDelegate.GetType() end

---@return string
function GetAutoPullFromSlotDelegate.ToString() end


