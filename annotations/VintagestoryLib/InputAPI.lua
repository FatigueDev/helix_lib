---@meta

---@class InputAPI:  IInputAPI
---@field KeyboardKeyState boolean
---@field MouseX number
---@field MouseY number
---@field MouseWorldInteractAnyway boolean
---@field HotKeys OrderedDictionary`2
---@field MouseButton MouseButtonState
---@field InWorldMouseButton MouseButtonState
---@field KeyboardKeyStateRaw boolean
---@field MouseGrabbed boolean
---@field MouseYaw number
---@field MousePitch number
---@field ClipboardText string
---@field InWorldAction OnEntityAction
InputAPI = {}

---@param game ClientMain
---@return InputAPI
function InputAPI.ctor(game) end

---@param value OnEntityAction
function InputAPI.add_InWorldAction(value) end

---@param value OnEntityAction
function InputAPI.remove_InWorldAction(value) end

---@return boolean
function InputAPI.get_KeyboardKeyState() end

---@return number
function InputAPI.get_MouseX() end

---@return number
function InputAPI.get_MouseY() end

---@param action EnumEntityAction A players in-world action
---@param on boolean
---@param handling EnumHandling&
function InputAPI.TriggerInWorldAction(action, on, handling) end

---@param slot ItemSlot The default item slot to item stacks
function InputAPI.TriggerOnMouseEnterSlot(slot) end

---@param itemSlot ItemSlot The default item slot to item stacks
function InputAPI.TriggerOnMouseLeaveSlot(itemSlot) end

---@param itemSlot ItemSlot The default item slot to item stacks
function InputAPI.TriggerOnMouseClickSlot(itemSlot) end

---@return boolean
function InputAPI.get_MouseWorldInteractAnyway() end

---@param value boolean
function InputAPI.set_MouseWorldInteractAnyway(value) end

---@param hotkeyCode string
---@param name string
---@param key GlKeys Internally the game uses OpenTK and their Keys are by default mapped to US QWERTY Keyboard layout which the GlKeys also do. Upon typing text in a Text input field it will produce the correct characters according to your keyboard layout.              If you need to get the character for the current Keyboard layout use GetKeyName
---@param type? HotkeyType
---@param altPressed? boolean
---@param ctrlPressed? boolean
---@param shiftPressed? boolean
function InputAPI.RegisterHotKey(hotkeyCode, name, key, type, altPressed, ctrlPressed, shiftPressed) end

---@param hotkeyCode string
---@param name string
---@param key GlKeys Internally the game uses OpenTK and their Keys are by default mapped to US QWERTY Keyboard layout which the GlKeys also do. Upon typing text in a Text input field it will produce the correct characters according to your keyboard layout.              If you need to get the character for the current Keyboard layout use GetKeyName
---@param type? HotkeyType
---@param altPressed? boolean
---@param ctrlPressed? boolean
---@param shiftPressed? boolean
function InputAPI.RegisterHotKeyFirst(hotkeyCode, name, key, type, altPressed, ctrlPressed, shiftPressed) end

---@param hotkeyCode string
---@param handler function Return true if the action/event should be "consumed" (e.g. mark a mouse click as handled)
function InputAPI.SetHotKeyHandler(hotkeyCode, handler) end

---@param toggleKeyCombinationCode string
---@return HotKey
function InputAPI.GetHotKeyByCode(toggleKeyCombinationCode) end

---@param handler OnHotKeyDelegate
function InputAPI.AddHotkeyListener(handler) end

---@return OrderedDictionary`2 # Same as your normal C# Dictionary but ensures that the order in which the items are added is remembered. That way you can iterate over the dictionary with the insert order intact or set/get elements by index. Taken from http://www.codeproject.com/Articles/18615/OrderedDictionary-T-A-generic-implementation-of-IO Please be aware that this is not a very efficient implementation, recommed use only for small sets of data.
function InputAPI.get_HotKeys() end

---@return MouseButtonState
function InputAPI.get_MouseButton() end

---@return MouseButtonState
function InputAPI.get_InWorldMouseButton() end

---@return boolean
function InputAPI.get_KeyboardKeyStateRaw() end

---@return boolean
function InputAPI.get_MouseGrabbed() end

---@return number
function InputAPI.get_MouseYaw() end

---@param value number
function InputAPI.set_MouseYaw(value) end

---@return number
function InputAPI.get_MousePitch() end

---@param value number
function InputAPI.set_MousePitch(value) end

---@return string
function InputAPI.get_ClipboardText() end

---@param value string
function InputAPI.set_ClipboardText(value) end

---@return userdata
function InputAPI.GetType() end

---@return string
function InputAPI.ToString() end

---@param obj userdata
---@return boolean
function InputAPI.Equals(obj) end

---@return number
function InputAPI.GetHashCode() end


