---@meta

---@class MainMenuInputAPI:  IInputAPI
---@field KeyboardKeyState boolean
---@field KeyboardKeyStateRaw boolean
---@field MouseButton MouseButtonState
---@field InWorldMouseButton MouseButtonState
---@field MouseWorldInteractAnyway boolean
---@field MouseGrabbed boolean
---@field HotKeys OrderedDictionary`2
---@field MouseX number
---@field MouseY number
---@field MouseYaw number
---@field MousePitch number
---@field ClipboardText string
---@field OnMouseDown MouseEventDelegate
---@field OnMouseUp MouseEventDelegate
---@field OnMouseMove MouseEventDelegate
---@field OnKeyDown KeyEventDelegate
---@field OnKeyUp KeyEventDelegate
---@field InWorldAction OnEntityAction
MainMenuInputAPI = {}

---@param screenManager ScreenManager
---@return MainMenuInputAPI
function MainMenuInputAPI.ctor(screenManager) end

---@param value MouseEventDelegate
function MainMenuInputAPI.add_OnMouseDown(value) end

---@param value MouseEventDelegate
function MainMenuInputAPI.remove_OnMouseDown(value) end

---@param value MouseEventDelegate
function MainMenuInputAPI.add_OnMouseUp(value) end

---@param value MouseEventDelegate
function MainMenuInputAPI.remove_OnMouseUp(value) end

---@param value MouseEventDelegate
function MainMenuInputAPI.add_OnMouseMove(value) end

---@param value MouseEventDelegate
function MainMenuInputAPI.remove_OnMouseMove(value) end

---@param value KeyEventDelegate
function MainMenuInputAPI.add_OnKeyDown(value) end

---@param value KeyEventDelegate
function MainMenuInputAPI.remove_OnKeyDown(value) end

---@param value KeyEventDelegate
function MainMenuInputAPI.add_OnKeyUp(value) end

---@param value KeyEventDelegate
function MainMenuInputAPI.remove_OnKeyUp(value) end

---@param value OnEntityAction
function MainMenuInputAPI.add_InWorldAction(value) end

---@param value OnEntityAction
function MainMenuInputAPI.remove_InWorldAction(value) end

---@return boolean
function MainMenuInputAPI.get_KeyboardKeyState() end

---@return boolean
function MainMenuInputAPI.get_KeyboardKeyStateRaw() end

---@return MouseButtonState
function MainMenuInputAPI.get_MouseButton() end

---@return MouseButtonState
function MainMenuInputAPI.get_InWorldMouseButton() end

---@return boolean
function MainMenuInputAPI.get_MouseWorldInteractAnyway() end

---@param value boolean
function MainMenuInputAPI.set_MouseWorldInteractAnyway(value) end

---@return boolean
function MainMenuInputAPI.get_MouseGrabbed() end

---@return OrderedDictionary`2 # Same as your normal C# Dictionary but ensures that the order in which the items are added is remembered. That way you can iterate over the dictionary with the insert order intact or set/get elements by index. Taken from http://www.codeproject.com/Articles/18615/OrderedDictionary-T-A-generic-implementation-of-IO Please be aware that this is not a very efficient implementation, recommed use only for small sets of data.
function MainMenuInputAPI.get_HotKeys() end

---@param toggleKeyCombinationCode string
---@return HotKey
function MainMenuInputAPI.GetHotKeyByCode(toggleKeyCombinationCode) end

---@return number
function MainMenuInputAPI.get_MouseX() end

---@return number
function MainMenuInputAPI.get_MouseY() end

---@return number
function MainMenuInputAPI.get_MouseYaw() end

---@param value number
function MainMenuInputAPI.set_MouseYaw(value) end

---@return number
function MainMenuInputAPI.get_MousePitch() end

---@param value number
function MainMenuInputAPI.set_MousePitch(value) end

---@return string
function MainMenuInputAPI.get_ClipboardText() end

---@param value string
function MainMenuInputAPI.set_ClipboardText(value) end

---@param hotkeyCode string
---@param name string
---@param key GlKeys Internally the game uses OpenTK and their Keys are by default mapped to US QWERTY Keyboard layout which the GlKeys also do. Upon typing text in a Text input field it will produce the correct characters according to your keyboard layout.              If you need to get the character for the current Keyboard layout use GetKeyName
---@param type? HotkeyType
---@param altPressed? boolean
---@param ctrlPressed? boolean
---@param shiftPressed? boolean
function MainMenuInputAPI.RegisterHotKey(hotkeyCode, name, key, type, altPressed, ctrlPressed, shiftPressed) end

---@param hotkeyCode string
---@param name string
---@param key GlKeys Internally the game uses OpenTK and their Keys are by default mapped to US QWERTY Keyboard layout which the GlKeys also do. Upon typing text in a Text input field it will produce the correct characters according to your keyboard layout.              If you need to get the character for the current Keyboard layout use GetKeyName
---@param type? HotkeyType
---@param altPressed? boolean
---@param ctrlPressed? boolean
---@param shiftPressed? boolean
function MainMenuInputAPI.RegisterHotKeyFirst(hotkeyCode, name, key, type, altPressed, ctrlPressed, shiftPressed) end

---@param hotkeyCode string
---@param handler function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function MainMenuInputAPI.SetHotKeyHandler(hotkeyCode, handler) end

---@param itemSlot ItemSlot The default item slot to item stacks
function MainMenuInputAPI.TriggerOnMouseClickSlot(itemSlot) end

---@param slot ItemSlot The default item slot to item stacks
function MainMenuInputAPI.TriggerOnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
function MainMenuInputAPI.TriggerOnMouseLeaveSlot(itemSlot) end

---@param ev MouseEvent This contains the data for what the mouse is currently doing.
function MainMenuInputAPI.TriggerMouseDown(ev) end

---@param ev MouseEvent This contains the data for what the mouse is currently doing.
function MainMenuInputAPI.TriggerMouseUp(ev) end

---@param ev MouseEvent This contains the data for what the mouse is currently doing.
function MainMenuInputAPI.TriggerMouseMove(ev) end

---@param ev KeyEvent
function MainMenuInputAPI.TriggerKeyUp(ev) end

---@param ev KeyEvent
function MainMenuInputAPI.TriggerKeyDown(ev) end

---@param handler OnHotKeyDelegate
function MainMenuInputAPI.AddHotkeyListener(handler) end

---@return userdata
function MainMenuInputAPI.GetType() end

---@return string
function MainMenuInputAPI.ToString() end

---@param obj userdata
---@return boolean
function MainMenuInputAPI.Equals(obj) end

---@return number
function MainMenuInputAPI.GetHashCode() end


