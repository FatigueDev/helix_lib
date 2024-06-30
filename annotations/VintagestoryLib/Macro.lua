---@meta

---@class Macro: MacroBase, MacroBase, IMacroBase
---@field Index number
---@field Code string
---@field Name string
---@field Commands string
---@field KeyCombination KeyCombination
---@field iconTexture LoadedTexture
Macro = {}

---@return Macro
function Macro.ctor() end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param size number
function Macro.GenTexture(capi, size) end

---@return number
function Macro.get_Index() end

---@param value number
function Macro.set_Index(value) end

---@return string
function Macro.get_Code() end

---@param value string
function Macro.set_Code(value) end

---@return string
function Macro.get_Name() end

---@param value string
function Macro.set_Name(value) end

---@return string
function Macro.get_Commands() end

---@param value string
function Macro.set_Commands(value) end

---@return KeyCombination # Mapping of an input key combination.   Note: the "key" might also be a mouse button if a hotkey has been configured to be activated by a mouse button
function Macro.get_KeyCombination() end

---@param value KeyCombination Mapping of an input key combination.   Note: the "key" might also be a mouse button if a hotkey has been configured to be activated by a mouse button
function Macro.set_KeyCombination(value) end

---@return LoadedTexture # A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
function Macro.get_iconTexture() end

---@param value LoadedTexture A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
function Macro.set_iconTexture(value) end

---@return userdata
function Macro.GetType() end

---@return string
function Macro.ToString() end

---@param obj userdata
---@return boolean
function Macro.Equals(obj) end

---@return number
function Macro.GetHashCode() end


