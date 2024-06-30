---@meta

---@class IShader
---@field Type EnumShaderType
---@field PrefixCode string If set, the shader registry will attach this bit of code to the beginning of the fragment shader file. Useful for setting stuff at runtime when using file shaders, e.g. via #define
---@field Code string Source code of the shader
IShader = {}


---@return EnumShaderType
function IShader.get_Type() end

---@return string
function IShader.get_PrefixCode() end

---@param value string
function IShader.set_PrefixCode(value) end

---@return string
function IShader.get_Code() end

---@param value string
function IShader.set_Code(value) end


