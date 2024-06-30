---@meta

---@class HotKey
---@field IsGlobalHotkey boolean For global hotkeys that shall not be blocked by anything (e.g. F11 for fullscreen, F12 for screenshot)
---@field IsIngameHotkey boolean For hotkeys that only available during a game session. When the game session ends, the handler to this hotkey is removed (or we have a dead reference to runninggame)
---@field CurrentMapping KeyCombination The current key combination for this hotkey
---@field DefaultMapping KeyCombination The default key combination for this hotkey
---@field Code string The code of the Hotkey.
---@field Name string The name of the Hotkey
---@field KeyCombinationType HotkeyType The type of the key combination.  This defaults to HotkeyType.CharacterControls.
---@field Handler function This is the action that happens when the hotkey is used.
---@field TriggerOnUpAlso boolean If true, the handler will be called twice, once on the key or button down event, and once on the up event
HotKey = {}

---@return HotKey
function HotKey.ctor() end

-- Was this hotkey pressed?
---@param keyEventargs KeyEvent
---@param world IWorldAccessor Important interface to access the game world.
---@param player IPlayer Represents a player
---@param allowCharacterControls boolean
---@return boolean
function HotKey.DidPress(keyEventargs, world, player, allowCharacterControls) end

-- Fallback version of the DidPress event.
---@param keyEventargs KeyEvent
---@param world IWorldAccessor Important interface to access the game world.
---@param player IPlayer Represents a player
---@param allowCharacterControls boolean
---@return boolean
function HotKey.FallbackDidPress(keyEventargs, world, player, allowCharacterControls) end

-- Clones the hotkey.
---@return HotKey
function HotKey.Clone() end

-- Sets the default keymap for this hotkey.
function HotKey.SetDefaultMapping() end

---@return userdata
function HotKey.GetType() end

---@return string
function HotKey.ToString() end

---@param obj userdata
---@return boolean
function HotKey.Equals(obj) end

---@return number
function HotKey.GetHashCode() end


