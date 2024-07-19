---@meta

---@class OnInteractDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
OnInteractDelegate = {}

---@param object userdata
---@param method IntPtr
---@return OnInteractDelegate
function OnInteractDelegate.ctor(object, method) end

---@param entity Entity The basic class for all entities in the game
---@param byPlayer IPlayer Represents a player
---@param slot ItemSlot The default item slot to item stacks
---@param hitPosition Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param mode number
---@param handling EnumHandling&
function OnInteractDelegate.Invoke(entity, byPlayer, slot, hitPosition, mode, handling) end

---@param entity Entity The basic class for all entities in the game
---@param byPlayer IPlayer Represents a player
---@param slot ItemSlot The default item slot to item stacks
---@param hitPosition Vec3d Represents a vector of 3 doubles. Go bug Tyron of you need more utility methods in this class.
---@param mode number
---@param handling EnumHandling&
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function OnInteractDelegate.BeginInvoke(entity, byPlayer, slot, hitPosition, mode, handling, callback, object) end

---@param handling EnumHandling&
---@param result IAsyncResult
function OnInteractDelegate.EndInvoke(handling, result) end

---@param info SerializationInfo
---@param context StreamingContext
function OnInteractDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function OnInteractDelegate.Equals(obj) end

---@return function
function OnInteractDelegate.GetInvocationList() end

---@return number
function OnInteractDelegate.GetHashCode() end

---@return userdata
function OnInteractDelegate.get_Target() end

---@return userdata
function OnInteractDelegate.Clone() end

---@param args userdata
---@return userdata
function OnInteractDelegate.DynamicInvoke(args) end

---@return function
function OnInteractDelegate.get_Method() end

---@return userdata
function OnInteractDelegate.GetType() end

---@return string
function OnInteractDelegate.ToString() end


