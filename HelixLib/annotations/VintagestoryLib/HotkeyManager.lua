---@meta

---@class HotkeyManager
---@field HotKeys OrderedDictionary`2
---@field ShouldTriggerHotkeys boolean
HotkeyManager = {}

---@return HotkeyManager
function HotkeyManager.ctor() end

function HotkeyManager.RegisterDefaultHotKeys() end

---@param keyEventargs KeyEvent
---@param world IWorldAccessor Important interface to access the game world.
---@param player IPlayer Represents a player
---@param allowCharacterControls boolean
---@param keyUp boolean
---@return boolean
function HotkeyManager.TriggerHotKey(keyEventargs, world, player, allowCharacterControls, keyUp) end

---@param keyCombMap KeyCombination Mapping of an input key combination.   Note: the "key" might also be a mouse button if a hotkey has been configured to be activated by a mouse button
---@return boolean
function HotkeyManager.IsHotKeyRegistered(keyCombMap) end

---@param keyCombMap KeyCombination Mapping of an input key combination.   Note: the "key" might also be a mouse button if a hotkey has been configured to be activated by a mouse button
---@return HotKey
function HotkeyManager.GetHotkeyByKeyCombination(keyCombMap) end

---@param code string
---@return HotKey
function HotkeyManager.GetHotKeyByCode(code) end

---@param code string
function HotkeyManager.RemoveHotKey(code) end

---@param keyComb HotKey
function HotkeyManager.RegisterHotKey(keyComb) end

---@param code string
---@param name string
---@param keyComb KeyCombination Mapping of an input key combination.   Note: the "key" might also be a mouse button if a hotkey has been configured to be activated by a mouse button
---@param type? HotkeyType
function HotkeyManager.RegisterHotKey(code, name, keyComb, type) end

---@param code string
---@param name string
---@param key GlKeys Internally the game uses OpenTK and their Keys are by default mapped to US QWERTY Keyboard layout which the GlKeys also do. Upon typing text in a Text input field it will produce the correct characters according to your keyboard layout.              If you need to get the character for the current Keyboard layout use GetKeyName
---@param type? HotkeyType
---@param altPressed? boolean
---@param ctrlPressed? boolean
---@param shiftPressed? boolean
---@param insertFirst? boolean
function HotkeyManager.RegisterHotKey(code, name, key, type, altPressed, ctrlPressed, shiftPressed, insertFirst) end

---@param code string
---@param name string
---@param button EnumMouseButton
---@param type? HotkeyType
---@param altPressed? boolean
---@param ctrlPressed? boolean
---@param shiftPressed? boolean
---@param insertFirst? boolean
function HotkeyManager.RegisterHotKey(code, name, button, type, altPressed, ctrlPressed, shiftPressed, insertFirst) end

---@param code string
---@param name string
---@param keyCode number
---@param type? HotkeyType
---@param altPressed? boolean
---@param ctrlPressed? boolean
---@param shiftPressed? boolean
---@param insertFirst? boolean
---@param triggerOnUpAlso? boolean
function HotkeyManager.RegisterHotKey(code, name, keyCode, type, altPressed, ctrlPressed, shiftPressed, insertFirst, triggerOnUpAlso) end

---@param code string
---@param name string
---@param keyCode number
---@param keyCode2 Nullable`1
---@param type? HotkeyType
---@param altPressed? boolean
---@param ctrlPressed? boolean
---@param shiftPressed? boolean
function HotkeyManager.RegisterHotKey(code, name, keyCode, keyCode2, type, altPressed, ctrlPressed, shiftPressed) end

---@param code string
---@param handler function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
---@param isIngameHotkey? boolean
function HotkeyManager.SetHotKeyHandler(code, handler, isIngameHotkey) end

function HotkeyManager.ClearInGameHotKeyHandlers() end

---@param handler OnHotKeyDelegate
function HotkeyManager.AddHotkeyListener(handler) end

---@param game ClientMain
---@param button EnumMouseButton
---@param modifiers number
---@param buttonDown boolean
---@return boolean
function HotkeyManager.OnMouseButton(game, button, modifiers, buttonDown) end

---@return userdata
function HotkeyManager.GetType() end

---@return string
function HotkeyManager.ToString() end

---@param obj userdata
---@return boolean
function HotkeyManager.Equals(obj) end

---@return number
function HotkeyManager.GetHashCode() end


