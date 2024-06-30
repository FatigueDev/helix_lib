---@meta

-- API for configuring and loading GLSL Shaders
---@class IShaderAPI
IShaderAPI = {}


-- Returns an empty instance of an IShaderProgram for you to configure. Once configured, call RegisterShaderProgram
---@return IShaderProgram
function IShaderAPI.NewShaderProgram() end

-- Returns an empty instance of an IShader for you to configure as vertex, fragment or geometry shader
---@param shaderType EnumShaderType
---@return IShader
function IShaderAPI.NewShader(shaderType) end

-- Registers a configured IShaderProgram. The name must correspond to the .vsh and .fsh filenames (without ending).
-- Returns a program number to be used in UseShaderProgram()
---@param name string
---@param program IShaderProgram
---@return number
function IShaderAPI.RegisterFileShaderProgram(name, program) end

-- Registers a configured IShaderProgram. Will not load anything from the shaders folder.
-- Returns a program number to be used in UseShaderProgram()
---@param name string
---@param program IShaderProgram
---@return number
function IShaderAPI.RegisterMemoryShaderProgram(name, program) end

-- Returns the loaded shader for use in rendering
---@param renderPass number
---@return IShaderProgram
function IShaderAPI.GetProgram(renderPass) end

-- Returns the loaded shader for use in rendering
---@param name string
---@return IShaderProgram
function IShaderAPI.GetProgramByName(name) end

-- Discards all currently compiled shaders and recompiles them. Returns true if all shaders compiled without errors.
---@return boolean
function IShaderAPI.ReloadShaders() end

-- Returns true if given GLSL Version is available on this machine
---@param minVersion string
---@return boolean
function IShaderAPI.IsGLSLVersionSupported(minVersion) end


