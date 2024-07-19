---@meta

---@class IMacroManager
---@field MacrosByIndex SortedDictionary`2
IMacroManager = {}


---@param macroIndex number
function IMacroManager.DeleteMacro(macroIndex) end

function IMacroManager.LoadMacros() end

---@param macroIndex number
---@param world IClientWorldAccessor The world accessor implemented by the client, offers some extra features only available on the client
---@return boolean
function IMacroManager.RunMacro(macroIndex, world) end

---@param macroIndex number
---@return boolean
function IMacroManager.SaveMacro(macroIndex) end

---@param macroIndex number
---@param macro IMacroBase
function IMacroManager.SetMacro(macroIndex, macro) end

---@return SortedDictionary`2
function IMacroManager.get_MacrosByIndex() end

---@param value SortedDictionary`2
function IMacroManager.set_MacrosByIndex(value) end


