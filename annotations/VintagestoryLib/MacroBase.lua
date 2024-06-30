---@meta

---@class MacroBase:  IMacroBase
---@field Index number
---@field Code string
---@field Name string
---@field Commands string
---@field KeyCombination KeyCombination
---@field iconTexture LoadedTexture
MacroBase = {}

---@return MacroBase
function MacroBase.ctor() end

---@return number
function MacroBase.get_Index() end

---@param value number
function MacroBase.set_Index(value) end

---@return string
function MacroBase.get_Code() end

---@param value string
function MacroBase.set_Code(value) end

---@return string
function MacroBase.get_Name() end

---@param value string
function MacroBase.set_Name(value) end

---@return string
function MacroBase.get_Commands() end

---@param value string
function MacroBase.set_Commands(value) end

---@return KeyCombination # Mapping of an input key combination.   Note: the "key" might also be a mouse button if a hotkey has been configured to be activated by a mouse button
function MacroBase.get_KeyCombination() end

---@param value KeyCombination Mapping of an input key combination.   Note: the "key" might also be a mouse button if a hotkey has been configured to be activated by a mouse button
function MacroBase.set_KeyCombination(value) end

---@return LoadedTexture # A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
function MacroBase.get_iconTexture() end

---@param value LoadedTexture A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
function MacroBase.set_iconTexture(value) end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param size number
function MacroBase.GenTexture(capi, size) end

---@return userdata
function MacroBase.GetType() end

---@return string
function MacroBase.ToString() end

---@param obj userdata
---@return boolean
function MacroBase.Equals(obj) end

---@return number
function MacroBase.GetHashCode() end


