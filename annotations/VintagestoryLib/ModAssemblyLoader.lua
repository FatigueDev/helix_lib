---@meta

---@class ModAssemblyLoader:  IDisposable
ModAssemblyLoader = {}

---@param modSearchPaths IReadOnlyCollection`1
---@param mods IReadOnlyCollection`1
---@return ModAssemblyLoader
function ModAssemblyLoader.ctor(modSearchPaths, mods) end

function ModAssemblyLoader.Dispose() end

---@param path string
---@return Assembly
function ModAssemblyLoader.LoadFrom(path) end

---@param path string
---@return AssemblyDefinition
function ModAssemblyLoader.LoadAssemblyDefinition(path) end

---@return userdata
function ModAssemblyLoader.GetType() end

---@return string
function ModAssemblyLoader.ToString() end

---@param obj userdata
---@return boolean
function ModAssemblyLoader.Equals(obj) end

---@return number
function ModAssemblyLoader.GetHashCode() end


