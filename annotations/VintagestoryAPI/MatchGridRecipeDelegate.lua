---@meta

---@class MatchGridRecipeDelegate: MulticastDelegate, Delegate, MulticastDelegate, ICloneable, ISerializable
---@field Target userdata
---@field Method function
MatchGridRecipeDelegate = {}

---@param object userdata
---@param method IntPtr
---@return MatchGridRecipeDelegate
function MatchGridRecipeDelegate.ctor(object, method) end

---@param player IPlayer Represents a player
---@param recipe GridRecipe Represents a crafting recipe
---@param ingredients ItemSlot[] The default item slot to item stacks
---@param gridWidth number
---@return boolean
function MatchGridRecipeDelegate.Invoke(player, recipe, ingredients, gridWidth) end

---@param player IPlayer Represents a player
---@param recipe GridRecipe Represents a crafting recipe
---@param ingredients ItemSlot[] The default item slot to item stacks
---@param gridWidth number
---@param callback AsyncCallback
---@param object userdata
---@return IAsyncResult
function MatchGridRecipeDelegate.BeginInvoke(player, recipe, ingredients, gridWidth, callback, object) end

---@param result IAsyncResult
---@return boolean
function MatchGridRecipeDelegate.EndInvoke(result) end

---@param info SerializationInfo
---@param context StreamingContext
function MatchGridRecipeDelegate.GetObjectData(info, context) end

---@param obj userdata
---@return boolean
function MatchGridRecipeDelegate.Equals(obj) end

---@return function
function MatchGridRecipeDelegate.GetInvocationList() end

---@return number
function MatchGridRecipeDelegate.GetHashCode() end

---@return userdata
function MatchGridRecipeDelegate.get_Target() end

---@return userdata
function MatchGridRecipeDelegate.Clone() end

---@param args userdata
---@return userdata
function MatchGridRecipeDelegate.DynamicInvoke(args) end

---@return function
function MatchGridRecipeDelegate.get_Method() end

---@return userdata
function MatchGridRecipeDelegate.GetType() end

---@return string
function MatchGridRecipeDelegate.ToString() end


