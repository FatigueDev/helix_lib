---@meta ShaderProgramBlockhighlights
---@class ShaderProgramBlockhighlights: ShaderProgram
---@field ctor fun(): ShaderProgramBlockhighlights
---@field set_ParticleTex2D fun(value: number): nil
---@field set_FlatFogDensity fun(value: Single): nil
---@field set_FlatFogStart fun(value: Single): nil
---@field set_ViewDistance fun(value: Single): nil
---@field set_ViewDistanceLod0 fun(value: Single): nil
---@field set_ZNear fun(value: Single): nil
---@field set_ZFar fun(value: Single): nil
---@field set_LightPosition fun(value: Vec3f): nil
---@field set_ShadowIntensity fun(value: Single): nil
---@field set_ShadowMapFar2D fun(value: number): nil
---@field set_ShadowMapWidthInv fun(value: Single): nil
---@field set_ShadowMapHeightInv fun(value: Single): nil
---@field set_ShadowMapNear2D fun(value: number): nil
---@field set_WindWaveCounter fun(value: Single): nil
---@field set_GlitchStrength fun(value: Single): nil
---@field set_ProjectionMatrix fun(value: Single[]): nil
---@field set_ModelViewMatrix fun(value: Single[]): nil
---@field set_ShadowRangeFar fun(value: Single): nil
---@field set_ToShadowMapSpaceMatrixFar fun(value: Single[]): nil
---@field set_ShadowRangeNear fun(value: Single): nil
---@field set_ToShadowMapSpaceMatrixNear fun(value: Single[]): nil
---@field set_GlitchStrengthFL fun(value: Single): nil
---@field set_NightVisionStrength fun(value: Single): nil
---@field PointLightsArray fun(count: number, values: Single[]): nil
---@field PointLightColorsArray fun(count: number, values: Single[]): nil
---@field set_PointLightQuantity fun(value: number): nil
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
---@field ParticleTex2D number
---@field FlatFogDensity number
---@field FlatFogStart number
---@field ViewDistance number
---@field ViewDistanceLod0 number
---@field ZNear number
---@field ZFar number
---@field LightPosition number
---@field ShadowIntensity number
---@field ShadowMapFar2D number
---@field ShadowMapWidthInv number
---@field ShadowMapHeightInv number
---@field ShadowMapNear2D number
---@field WindWaveCounter number
---@field GlitchStrength number
---@field ProjectionMatrix number
---@field ModelViewMatrix number
---@field ShadowRangeFar number
---@field ToShadowMapSpaceMatrixFar number
---@field ShadowRangeNear number
---@field ToShadowMapSpaceMatrixNear number
---@field GlitchStrengthFL number
---@field NightVisionStrength number
---@field PointLightQuantity number
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
ShaderProgramBlockhighlights = {}
