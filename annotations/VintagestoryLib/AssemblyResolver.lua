---@meta

---@class AssemblyResolver
AssemblyResolver = {}


---@param sender userdata
---@param args ResolveEventArgs
---@return Assembly
function AssemblyResolver.AssemblyResolve(sender, args) end

---@return userdata
function AssemblyResolver.GetType() end

---@return string
function AssemblyResolver.ToString() end

---@param obj userdata
---@return boolean
function AssemblyResolver.Equals(obj) end

---@return number
function AssemblyResolver.GetHashCode() end


