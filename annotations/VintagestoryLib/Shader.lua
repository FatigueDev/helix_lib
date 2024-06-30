---@meta

---@class Shader:  IShader
---@field Type EnumShaderType
---@field PrefixCode string
---@field Code string
---@field ShaderId number
---@field shaderType EnumShaderType
Shader = {}

---@return Shader
function Shader.ctor() end
---@param shaderType EnumShaderType
---@param code string
---@param filename string
---@return Shader
function Shader.ctor(shaderType, code, filename) end

---@return EnumShaderType
function Shader.get_Type() end

---@param value EnumShaderType
function Shader.set_Type(value) end

---@return string
function Shader.get_PrefixCode() end

---@param value string
function Shader.set_PrefixCode(value) end

---@return string
function Shader.get_Code() end

---@param value string
function Shader.set_Code(value) end

---@return boolean
function Shader.Compile() end

function Shader.EnsureVersionSupported() end

---@return Shader
function Shader.Clone() end

---@param versionUsed string
---@param ownFilename string
function Shader.EnsureVersionSupported(versionUsed, ownFilename) end

---@return userdata
function Shader.GetType() end

---@return string
function Shader.ToString() end

---@param obj userdata
---@return boolean
function Shader.Equals(obj) end

---@return number
function Shader.GetHashCode() end


