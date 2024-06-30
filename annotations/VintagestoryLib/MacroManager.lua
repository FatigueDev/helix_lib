---@meta

---@class MacroManager:  IMacroManager
---@field MacrosByIndex SortedDictionary`2
MacroManager = {}

---@param game ClientMain
---@return MacroManager
function MacroManager.ctor(game) end

---@return SortedDictionary`2
function MacroManager.get_MacrosByIndex() end

---@param value SortedDictionary`2
function MacroManager.set_MacrosByIndex(value) end

function MacroManager.LoadMacros() end

---@param macroIndex number
function MacroManager.DeleteMacro(macroIndex) end

---@param macroIndex number
---@param macro IMacroBase
function MacroManager.SetMacro(macroIndex, macro) end

---@param macroIndex number
---@return boolean
function MacroManager.SaveMacro(macroIndex) end

---@param macroIndex number
---@param world IClientWorldAccessor The world accessor implemented by the client, offers some extra features only available on the client
---@return boolean
function MacroManager.RunMacro(macroIndex, world) end

---@return userdata
function MacroManager.GetType() end

---@return string
function MacroManager.ToString() end

---@param obj userdata
---@return boolean
function MacroManager.Equals(obj) end

---@return number
function MacroManager.GetHashCode() end


