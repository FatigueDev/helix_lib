---@meta ShaderProgramTexture2texture
---@class ShaderProgramTexture2texture: ShaderProgram
---@field ctor fun(): ShaderProgramTexture2texture
---@field set_Tex2d2D fun(value: number): nil
---@field set_Texu fun(value: Single): nil
---@field set_Texv fun(value: Single): nil
---@field set_Texw fun(value: Single): nil
---@field set_Texh fun(value: Single): nil
---@field set_AlphaTest fun(value: Single): nil
---@field set_Xs fun(value: Single): nil
---@field set_Ys fun(value: Single): nil
---@field set_Width fun(value: Single): nil
---@field set_Height fun(value: Single): nil
---@field Compile fun(): boolean
---@field get_Disposed fun(): boolean
---@field get_ClampTexturesToEdge fun(): boolean
---@field set_ClampTexturesToEdge fun(value: boolean): nil
---@field get_LoadError fun(): boolean
---@field set_LoadError fun(value: boolean): nil
---@field SetCustomSampler fun(uniformName: string, isLinear: boolean): nil
---@field Uniform fun(uniformName: string, value: Single): nil
---@overload fun(uniformName: string, value: number): nil
---@overload fun(uniformName: string, value: Vec2f): nil
---@overload fun(uniformName: string, value: Vec3f): nil
---@overload fun(uniformName: string, value: Vec3i): nil
---@field Uniforms2 fun(uniformName: string, count: number, values: Single[]): nil
---@field Uniforms3 fun(uniformName: string, count: number, values: Single[]): nil
---@field Uniform fun(uniformName: string, value: Vec4f): nil
---@field Uniforms4 fun(uniformName: string, count: number, values: Single[]): nil
---@field UniformMatrix fun(uniformName: string, matrix: Single[]): nil
---@overload fun(uniformName: string, matrix: Matrix4&): nil
---@field HasUniform fun(uniformName: string): boolean
---@field BindTexture2D fun(samplerName: string, textureId: number, textureNumber: number): nil
---@overload fun(samplerName: string, textureId: number): nil
---@field BindTextureCube fun(samplerName: string, textureId: number, textureNumber: number): nil
---@field UniformMatrices4x3 fun(uniformName: string, count: number, matrix: Single[]): nil
---@field UniformMatrices fun(uniformName: string, count: number, matrix: Single[]): nil
---@field Use fun(): nil
---@field Stop fun(): nil
---@field Dispose fun(): nil
---@field GetType fun(): any
---@field ToString fun(): string
---@field Equals fun(obj: table): boolean
---@field GetHashCode fun(): number
---@field Tex2d2D number
---@field Texu number
---@field Texv number
---@field Texw number
---@field Texh number
---@field AlphaTest number
---@field Xs number
---@field Ys number
---@field Width number
---@field Height number
---@field Disposed number
---@field ClampTexturesToEdge number
---@field LoadError number
---@field attributes number
---@field LoadFromFile number
---@field AssetDomain number
---@field PassId number
---@field ProgramId number
---@field PassName number
---@field VertexShader number
---@field GeometryShader number
---@field FragmentShader number
---@field uniformLocations number
---@field textureLocations number
---@field clampTToEdge number
---@field includes number
---@field customSamplers number
ShaderProgramTexture2texture = {}