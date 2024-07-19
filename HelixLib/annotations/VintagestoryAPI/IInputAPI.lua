---@meta

-- This interface manages the inputs of the player and is used mostly on the client side.  
---@class IInputAPI
---@field ClipboardText string Get set clipboard text
---@field KeyboardKeyStateRaw boolean The current keyboard key states, use the GlKeys enum to get the index of an array key.
---@field KeyboardKeyState boolean The current keyboard key states that were not handled by a dialog or other client systems (exception: hotkeys), use the GlKeys enum to get the array index of a key.
---@field MouseButton MouseButtonState The current mouse button state
---@field InWorldMouseButton MouseButtonState The current mouse button state outside of dialogs / clicked inside the game world
---@field MouseX number The current x-position of the mouse, relative to the upper left corner of the game window
---@field MouseY number The current y-position of the mouse, relative to the upper left corner of the game window
---@field MouseYaw number When controlling the camera, this is the camera yaw determined by the game engine
---@field MousePitch number When controlling the camera, this is the camera pitch determined by the game engine
---@field MouseWorldInteractAnyway boolean Gives the player the ability to still interact with the world even if a gui dialog is opened
---@field MouseGrabbed boolean True if the mouse cursor is currently grabbed and not visible. (Such as while controlling the character's view in first person.)
---@field HotKeys OrderedDictionary`2 Returns a list of all currently registered hotkeys.
---@field InWorldAction OnEntityAction Triggered when the player attempts to trigger an action, such as walking forward or sprinting
IInputAPI = {}


---@return string
function IInputAPI.get_ClipboardText() end

---@param value string
function IInputAPI.set_ClipboardText(value) end

---@param value OnEntityAction
function IInputAPI.add_InWorldAction(value) end

---@param value OnEntityAction
function IInputAPI.remove_InWorldAction(value) end

---@return boolean
function IInputAPI.get_KeyboardKeyStateRaw() end

---@return boolean
function IInputAPI.get_KeyboardKeyState() end

---@return MouseButtonState
function IInputAPI.get_MouseButton() end

---@return MouseButtonState
function IInputAPI.get_InWorldMouseButton() end

---@return number
function IInputAPI.get_MouseX() end

---@return number
function IInputAPI.get_MouseY() end

---@return number
function IInputAPI.get_MouseYaw() end

---@param value number
function IInputAPI.set_MouseYaw(value) end

---@return number
function IInputAPI.get_MousePitch() end

---@param value number
function IInputAPI.set_MousePitch(value) end

-- Handles the event when the mouse enters the bounding box of the given item slot.
---@param slot ItemSlot The default item slot to item stacks
function IInputAPI.TriggerOnMouseEnterSlot(slot) end

-- Handles the event when the mouse leaves the bounding box of the given item slot.
---@param itemSlot ItemSlot The default item slot to item stacks
function IInputAPI.TriggerOnMouseLeaveSlot(itemSlot) end

-- Handles the event when the mouse clicks on a given item slot.
---@param itemSlot ItemSlot The default item slot to item stacks
function IInputAPI.TriggerOnMouseClickSlot(itemSlot) end

---@return boolean
function IInputAPI.get_MouseWorldInteractAnyway() end

---@param value boolean
function IInputAPI.set_MouseWorldInteractAnyway(value) end

---@return boolean
function IInputAPI.get_MouseGrabbed() end

-- Registers a hot key with given default key combination, the player will be able change these in the controls. Supplied hotkeyCode can than be used to register a hotkey handler.
---@param hotkeyCode string
---@param name string
---@param key GlKeys Internally the game uses OpenTK and their Keys are by default mapped to US QWERTY Keyboard layout which the GlKeys also do. Upon typing text in a Text input field it will produce the correct characters according to your keyboard layout.              If you need to get the character for the current Keyboard layout use GetKeyName
---@param type? HotkeyType
---@param altPressed? boolean
---@param ctrlPressed? boolean
---@param shiftPressed? boolean
function IInputAPI.RegisterHotKey(hotkeyCode, name, key, type, altPressed, ctrlPressed, shiftPressed) end

-- Same as RegisterHotKey except it inserts it at the start of the list
---@param hotkeyCode string
---@param name string
---@param key GlKeys Internally the game uses OpenTK and their Keys are by default mapped to US QWERTY Keyboard layout which the GlKeys also do. Upon typing text in a Text input field it will produce the correct characters according to your keyboard layout.              If you need to get the character for the current Keyboard layout use GetKeyName
---@param type? HotkeyType
---@param altPressed? boolean
---@param ctrlPressed? boolean
---@param shiftPressed? boolean
function IInputAPI.RegisterHotKeyFirst(hotkeyCode, name, key, type, altPressed, ctrlPressed, shiftPressed) end

-- Will call the handler if given hotkey has been pressed. Removes the previously assigned handler.
---@param hotkeyCode string
---@param handler function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function IInputAPI.SetHotKeyHandler(hotkeyCode, handler) end

---@param handler OnHotKeyDelegate
function IInputAPI.AddHotkeyListener(handler) end

---@return OrderedDictionary`2 # Same as your normal C# Dictionary but ensures that the order in which the items are added is remembered. That way you can iterate over the dictionary with the insert order intact or set/get elements by index. Taken from http://www.codeproject.com/Articles/18615/OrderedDictionary-T-A-generic-implementation-of-IO Please be aware that this is not a very efficient implementation, recommed use only for small sets of data.
function IInputAPI.get_HotKeys() end

-- Gets the hotkey by the given hotkey code.
---@param toggleKeyCombinationCode string
---@return HotKey
function IInputAPI.GetHotKeyByCode(toggleKeyCombinationCode) end


