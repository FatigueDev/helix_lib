---@meta

---@class WorldInteraction
---@field HotKeyCodes string Does it require pressing multiple keys to perform this action (if set then HotkeyCode is ignored)
---@field MouseButton EnumMouseButton Left or Right mouse button?
---@field HotKeyCode string Does it require a mouse modifier key to perform this action (e.g. "shift" or "ctrl")
---@field ActionLangCode string The text to show, will be used in the form of Lang.Get(ActionLangCode); 
---@field JsonItemStacks JsonItemStack[] Does the player need to hold a certain items/blocks in hands? (e.g. a knife). You can define an array of item stacks here and the game will loop through them in a 1 second interval. This property is loaded from the entitytypes and blocktype json files and then resolved.
---@field Itemstacks ItemStack[]
---@field RequireFreeHand boolean If true, the interaction only applies when the player has no slot in hands
---@field GetMatchingStacks InteractionStacksDelegate Only applicable when ItemStacks is non null. If set, this method will be executed before adding the interaction. Lets you return a filtered list of itemstacks that can be used for this interaction (or null/empty array for not interactable)
---@field ShouldApply InteractionMatcherDelegate Only applicable when ItemStacks is null. If set and the method returns false, the interaction will not be displayed
WorldInteraction = {}

---@return WorldInteraction
function WorldInteraction.ctor() end

---@return string
function WorldInteraction.get_HotKeyCodes() end

---@param value string
function WorldInteraction.set_HotKeyCodes(value) end

---@return userdata
function WorldInteraction.GetType() end

---@return string
function WorldInteraction.ToString() end

---@param obj userdata
---@return boolean
function WorldInteraction.Equals(obj) end

---@return number
function WorldInteraction.GetHashCode() end


