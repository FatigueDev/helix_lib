---@meta

---@class IMacroBase
---@field Index number
---@field Code string
---@field Name string
---@field Commands string
---@field KeyCombination KeyCombination
---@field iconTexture LoadedTexture
IMacroBase = {}


---@return number
function IMacroBase.get_Index() end

---@param value number
function IMacroBase.set_Index(value) end

---@return string
function IMacroBase.get_Code() end

---@param value string
function IMacroBase.set_Code(value) end

---@return string
function IMacroBase.get_Name() end

---@param value string
function IMacroBase.set_Name(value) end

---@return string
function IMacroBase.get_Commands() end

---@param value string
function IMacroBase.set_Commands(value) end

---@return KeyCombination # Mapping of an input key combination.   Note: the "key" might also be a mouse button if a hotkey has been configured to be activated by a mouse button
function IMacroBase.get_KeyCombination() end

---@param value KeyCombination Mapping of an input key combination.   Note: the "key" might also be a mouse button if a hotkey has been configured to be activated by a mouse button
function IMacroBase.set_KeyCombination(value) end

---@return LoadedTexture # A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
function IMacroBase.get_iconTexture() end

---@param value LoadedTexture A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
function IMacroBase.set_iconTexture(value) end

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param size number
function IMacroBase.GenTexture(capi, size) end


