---@meta

---@class ShaderRegistry
---@field NormalView boolean
ShaderRegistry = {}

---@return ShaderRegistry
function ShaderRegistry.ctor() end

---@param name string
---@param program ShaderProgram
---@return number
function ShaderRegistry.RegisterShaderProgram(name, program) end

---@param defaultProgram EnumShaderProgram
---@param program ShaderProgram
function ShaderRegistry.RegisterShaderProgram(defaultProgram, program) end

---@param renderPass EnumShaderProgram
---@return ShaderProgram
function ShaderRegistry.getProgram(renderPass) end

---@param renderPass number
---@return ShaderProgram
function ShaderRegistry.getProgram(renderPass) end

---@param shadername string
---@return ShaderProgram
function ShaderRegistry.getProgramByName(shadername) end

function ShaderRegistry.Load() end

---@return boolean
function ShaderRegistry.ReloadShaders() end

---@param minVersion string
---@return boolean
function ShaderRegistry.IsGLSLVersionSupported(minVersion) end

---@return userdata
function ShaderRegistry.GetType() end

---@return string
function ShaderRegistry.ToString() end

---@param obj userdata
---@return boolean
function ShaderRegistry.Equals(obj) end

---@return number
function ShaderRegistry.GetHashCode() end


