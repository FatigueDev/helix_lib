---@meta ShaderProgramShadowmapgeneric
---@class ShaderProgramShadowmapgeneric: ShaderProgram
---@field ctor fun(): ShaderProgramShadowmapgeneric
---@field set_Tex2d2D fun(value: number): nil
---@field set_Origin fun(value: Vec3f): nil
---@field set_MvpMatrix fun(value: Single[]): nil
---@field set_TimeCounter fun(value: Single): nil
---@field set_WindWaveCounter fun(value: Single): nil
---@field set_WindWaveCounterHighFreq fun(value: Single): nil
---@field set_WaterWaveCounter fun(value: Single): nil
---@field set_WindSpeed fun(value: Single): nil
---@field set_Playerpos fun(value: Vec3f): nil
---@field set_GlobalWarpIntensity fun(value: Single): nil
---@field set_GlitchWaviness fun(value: Single): nil
---@field set_WindWaveIntensity fun(value: Single): nil
---@field set_WaterWaveIntensity fun(value: Single): nil
---@field set_PerceptionEffectId fun(value: number): nil
---@field set_PerceptionEffectIntensity fun(value: Single): nil
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
---@field Origin number
---@field MvpMatrix number
---@field TimeCounter number
---@field WindWaveCounter number
---@field WindWaveCounterHighFreq number
---@field WaterWaveCounter number
---@field WindSpeed number
---@field Playerpos number
---@field GlobalWarpIntensity number
---@field GlitchWaviness number
---@field WindWaveIntensity number
---@field WaterWaveIntensity number
---@field PerceptionEffectId number
---@field PerceptionEffectIntensity number
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
ShaderProgramShadowmapgeneric = {}