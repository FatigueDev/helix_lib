---@meta

---@class IShaderProgram:  IDisposable
---@field PassId number A uniqe shader pass number assigned to each shader program
---@field PassName string The name it was registered with. If you want to load this shader from a file, make sure the use the filename here
---@field ClampTexturesToEdge boolean If true, it well configure the textures to clamp to the edge (CLAMP_TO_EDGE). Requires the textureid to be defined using SetTextureIds
---@field VertexShader IShader The vertex shader of this shader program
---@field FragmentShader IShader The fragment shader of this shader program
---@field GeometryShader IShader The geometry shader of this shader program
---@field Disposed boolean True if this shader has been disposed
---@field LoadError boolean
IShaderProgram = {}


---@return number
function IShaderProgram.get_PassId() end

---@return string
function IShaderProgram.get_PassName() end

---@return boolean
function IShaderProgram.get_ClampTexturesToEdge() end

---@param value boolean
function IShaderProgram.set_ClampTexturesToEdge(value) end

---@return IShader
function IShaderProgram.get_VertexShader() end

---@param value IShader
function IShaderProgram.set_VertexShader(value) end

---@return IShader
function IShaderProgram.get_FragmentShader() end

---@param value IShader
function IShaderProgram.set_FragmentShader(value) end

---@return IShader
function IShaderProgram.get_GeometryShader() end

---@param value IShader
function IShaderProgram.set_GeometryShader(value) end

function IShaderProgram.Use() end

function IShaderProgram.Stop() end

---@return boolean
function IShaderProgram.Compile() end

---@param uniformName string
---@param value number
function IShaderProgram.Uniform(uniformName, value) end

---@param uniformName string
---@param value number
function IShaderProgram.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec2f Represents a vector of 2 floats. Go bug Tyron of you need more utility methods in this class.
function IShaderProgram.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec3f Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function IShaderProgram.Uniform(uniformName, value) end

---@param uniformName string
---@param value Vec4f
function IShaderProgram.Uniform(uniformName, value) end

---@param uniformName string
---@param count number
---@param values number
function IShaderProgram.Uniforms4(uniformName, count, values) end

---@param uniformName string
---@param matrix number
function IShaderProgram.UniformMatrix(uniformName, matrix) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function IShaderProgram.BindTexture2D(samplerName, textureId, textureNumber) end

---@param samplerName string
---@param textureId number
---@param textureNumber number
function IShaderProgram.BindTextureCube(samplerName, textureId, textureNumber) end

---@param uniformName string
---@param count number
---@param matrix number
function IShaderProgram.UniformMatrices(uniformName, count, matrix) end

---@param uniformName string
---@param count number
---@param matrix number
function IShaderProgram.UniformMatrices4x3(uniformName, count, matrix) end

---@param uniformName string
---@return boolean
function IShaderProgram.HasUniform(uniformName) end

---@return boolean
function IShaderProgram.get_Disposed() end

---@return boolean
function IShaderProgram.get_LoadError() end


