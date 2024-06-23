---@meta ShaderProgramAutocamera
---@class ShaderProgramAutocamera: ShaderProgram
---@field ctor fun(): ShaderProgramAutocamera
---@field set_ProjectionMatrix fun(value: Single[]): nil
---@field set_ModelViewMatrix fun(value: Single[]): nil
---@field set_ShadowRangeFar fun(value: Single): nil
---@field set_ToShadowMapSpaceMatrixFar fun(value: Single[]): nil
---@field set_ShadowRangeNear fun(value: Single): nil
---@field set_ToShadowMapSpaceMatrixNear fun(value: Single[]): nil
---@field set_FlatFogDensity fun(value: Single): nil
---@field set_FlatFogStart fun(value: Single): nil
---@field set_ViewDistance fun(value: Single): nil
---@field set_ViewDistanceLod0 fun(value: Single): nil
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
---@field ProjectionMatrix Single[]
---@field ModelViewMatrix Single[]
---@field ShadowRangeFar Single[]
---@field ToShadowMapSpaceMatrixFar Single[]
---@field ShadowRangeNear Single[]
---@field ToShadowMapSpaceMatrixNear Single[]
---@field FlatFogDensity Single[]
---@field FlatFogStart Single[]
---@field ViewDistance Single[]
---@field ViewDistanceLod0 Single[]
---@field GlitchStrengthFL Single[]
---@field NightVisionStrength Single[]
---@field PointLightQuantity Single[]
---@field Disposed Single[]
---@field ClampTexturesToEdge Single[]
---@field LoadError Single[]
---@field attributes Single[]
---@field LoadFromFile Single[]
---@field AssetDomain Single[]
---@field PassId Single[]
---@field ProgramId Single[]
---@field PassName Single[]
---@field VertexShader Single[]
---@field GeometryShader Single[]
---@field FragmentShader Single[]
---@field uniformLocations Single[]
---@field textureLocations Single[]
---@field clampTToEdge Single[]
---@field includes Single[]
---@field customSamplers Single[]
ShaderProgramAutocamera = {}
