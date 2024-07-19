---@meta

---@class ModCompilationContext
ModCompilationContext = {}

---@return ModCompilationContext
function ModCompilationContext.ctor() end

---@param mod ModContainer
---@return Assembly
function ModCompilationContext.CompileFromFiles(mod) end

---@return userdata
function ModCompilationContext.GetType() end

---@return string
function ModCompilationContext.ToString() end

---@param obj userdata
---@return boolean
function ModCompilationContext.Equals(obj) end

---@return number
function ModCompilationContext.GetHashCode() end


