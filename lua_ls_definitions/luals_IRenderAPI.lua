---@meta IRenderAPI
---@class IRenderAPI
---@field get_PerceptionEffects fun(): PerceptionEffects
---@field get_ScissorStack fun(): Stack`1
---@field get_TextureSize fun(): number
---@field get_DefaultFrustumCuller fun(): FrustumCulling
---@field get_FrameBuffers fun(): any[]
---@field get_ShaderUniforms fun(): DefaultShaderUniforms
---@field get_CameraOffset fun(): ModelTransform
---@field get_CurrentRenderStage fun(): EnumRenderStage
---@field get_PerspectiveViewMat fun(): Double[]
---@field get_PerspectiveProjectionMat fun(): Double[]
---@field get_DecorativeFontName fun(): string
---@field get_StandardFontName fun(): string
---@field get_FrameWidth fun(): number
---@field get_FrameHeight fun(): number
---@field get_CameraType fun(): EnumCameraMode
---@field get_MvMatrix fun(): StackMatrix4
---@field get_PMatrix fun(): StackMatrix4
---@field GetItemStackRenderInfo fun(inSlot: ItemSlot, ground: EnumItemRenderTarget, dt: Single): ItemRenderInfo
---@field Reset3DProjection fun(): nil
---@field Set3DProjection fun(zfar: Single, fov: Single): nil
---@field GlGetError fun(): string
---@field CheckGlError fun(message: string): nil
---@field GlMatrixModeModelView fun(): nil
---@field GlPushMatrix fun(): nil
---@field GlPopMatrix fun(): nil
---@field GlLoadMatrix fun(matrix: Double[]): nil
---@field GlTranslate fun(x: Single, y: Single, z: Single): nil
---@overload fun(x: Double, y: Double, z: Double): nil
---@field GlScale fun(x: Single, y: Single, z: Single): nil
---@field GlRotate fun(angle: Single, x: Single, y: Single, z: Single): nil
---@field GlEnableCullFace fun(): nil
---@field GlDisableCullFace fun(): nil
---@field GLEnableDepthTest fun(): nil
---@field GLDisableDepthTest fun(): nil
---@field GlViewport fun(x: number, y: number, width: number, height: number): nil
---@field set_LineWidth fun(value: Single): nil
---@field GLDepthMask fun(on: boolean): nil
---@field GlGenerateTex2DMipmaps fun(): nil
---@field GlToggleBlend fun(blend: boolean, blendMode: EnumBlendMode): nil
---@field get_CurrentModelviewMatrix fun(): Single[]
---@field get_CameraMatrixOrigin fun(): Double[]
---@field get_CameraMatrixOriginf fun(): Single[]
---@field get_CurrentProjectionMatrix fun(): Single[]
---@field get_CurrentShadowProjectionMatrix fun(): Single[]
---@field PushScissor fun(bounds: ElementBounds, stacking: boolean): nil
---@field PopScissor fun(): nil
---@field GlScissor fun(x: number, y: number, width: number, height: number): nil
---@field GlScissorFlag fun(enable: boolean): nil
---@field BitmapCreateFromPng fun(pngdata: number[]): BitmapExternal
---@field LoadTextureFromBgra fun(bgraPixels: number[], width: number, height: number, linearMag: boolean, clampMode: number): number
---@field LoadTextureFromRgba fun(rgbaPixels: number[], width: number, height: number, linearMag: boolean, clampMode: number): number
---@field LoadOrUpdateTextureFromBgra fun(bgraPixels: number[], linearMag: boolean, clampMode: number, intoTexture: LoadedTexture&): nil
---@field LoadOrUpdateTextureFromRgba fun(rgbaPixels: number[], linearMag: boolean, clampMode: number, intoTexture: LoadedTexture&): nil
---@field LoadTexture fun(bmp: IBitmap, intoTexture: LoadedTexture&, linearMag: boolean, clampMode: number, generateMipmaps: boolean): nil
---@field GLDeleteTexture fun(textureId: number): nil
---@field GlGetMaxTextureSize fun(): number
---@field BindTexture2d fun(textureid: number): nil
---@field GetOrLoadTexture fun(name: AssetLocation): number
---@overload fun(name: AssetLocation, intoTexture: LoadedTexture&): nil
---@overload fun(name: AssetLocation, bmp: BitmapRef, intoTexture: LoadedTexture&): nil
---@field RemoveTexture fun(name: AssetLocation): boolean
---@field GetUniformLocation fun(shaderProgramNumber: number, name: string): number
---@field GetEngineShader fun(program: EnumShaderProgram): IShaderProgram
---@field GetShader fun(shaderProgramNumber: number): IShaderProgram
---@field get_StandardShader fun(): IStandardShaderProgram
---@field PreparedStandardShader fun(posX: number, posY: number, posZ: number, colorMul: Vec4f): IStandardShaderProgram
---@field get_CurrentActiveShader fun(): IShaderProgram
---@field AllocateEmptyMesh fun(xyzSize: number, normalSize: number, uvSize: number, rgbaSize: number, flagsSize: number, indicesSize: number, customFloats: CustomMeshDataPartFloat, customShorts: CustomMeshDataPartShort, customBytes: CustomMeshDataPartnumber, customInts: CustomMeshDataPartInt, drawMode: EnumDrawMode, staticDraw: boolean): MeshRef
---@field UploadMesh fun(data: MeshData): MeshRef
---@field UploadMultiTextureMesh fun(data: MeshData): MultiTextureMeshRef
---@field UpdateMesh fun(meshRef: MeshRef, updatedata: MeshData): nil
---@field DeleteMesh fun(vao: MeshRef): nil
---@field RenderMesh fun(meshRef: MeshRef): nil
---@field RenderMultiTextureMesh fun(mmr: MultiTextureMeshRef, textureSampleName: string, textureNumber: number): nil
---@overload fun(mmr: MultiTextureMeshRef): nil
---@field RenderMeshInstanced fun(meshRef: MeshRef, quantity: number): nil
---@field RenderMesh fun(meshRef: MeshRef, indicesStarts: number[], indicesSizes: number[], groupCount: number): nil
---@field RenderTextureIntoTexture fun(fromTexture: LoadedTexture, sourceX: Single, sourceY: Single, sourceWidth: Single, sourceHeight: Single, intoTexture: LoadedTexture, targetX: Single, targetY: Single, alphaTest: Single): nil
---@field RenderItemstackToGui fun(itemstack: ItemStack, posX: Double, posY: Double, posZ: Double, size: Single, color: number, shading: boolean, rotate: boolean, showStackSize: boolean): nil
---@overload fun(inSlot: ItemSlot, posX: Double, posY: Double, posZ: Double, size: Single, color: number, shading: boolean, rotate: boolean, showStackSize: boolean): nil
---@overload fun(inSlot: ItemSlot, posX: Double, posY: Double, posZ: Double, size: Single, color: number, dt: Single, shading: boolean, rotate: boolean, showStackSize: boolean): nil
---@field RenderItemStackToAtlas fun(stack: ItemStack, atlas: ITextureAtlasAPI, size: number, onComplete: any`1, color: number, sepiaLevel: Single, scale: Single): boolean
---@field GetTextureAtlasPosition fun(itemstack: ItemStack): TextureAtlasPosition
---@field RenderEntityToGui fun(dt: Single, entity: Entity, posX: Double, posY: Double, posZ: Double, yawDelta: Single, size: Single, color: number): nil
---@field Render2DTexturePremultipliedAlpha fun(textureid: number, posX: Single, posY: Single, width: Single, height: Single, z: Single, color: Vec4f): nil
---@overload fun(textureid: number, posX: Double, posY: Double, width: Double, height: Double, z: Single, color: Vec4f): nil
---@overload fun(textureid: number, bounds: ElementBounds, z: Single, color: Vec4f): nil
---@field RenderTexture fun(textureid: number, posX: Double, posY: Double, width: Double, height: Double, z: Single, color: Vec4f): nil
---@field Render2DTexture fun(textureid: number, posX: Single, posY: Single, width: Single, height: Single, z: Single, color: Vec4f): nil
---@overload fun(quadModel: MeshRef, textureid: number, posX: Single, posY: Single, width: Single, height: Single, z: Single): nil
---@overload fun(textureid: number, bounds: ElementBounds, z: Single, color: Vec4f): nil
---@field Render2DLoadedTexture fun(textTexture: LoadedTexture, posX: Single, posY: Single, z: Single): nil
---@field RenderRectangle fun(posX: Single, posY: Single, posZ: Single, width: Single, height: Single, color: number): nil
---@field RenderLine fun(origin: BlockPos, posX1: Single, posY1: Single, posZ1: Single, posX2: Single, posY2: Single, posZ2: Single, color: number): nil
---@field get_AmbientColor fun(): Vec3f
---@field get_FogColor fun(): Vec4f
---@field get_FogMin fun(): Single
---@field get_FogDensity fun(): Single
---@field AddPointLight fun(pointlight: IPointLight): nil
---@field RemovePointLight fun(pointlight: IPointLight): nil
---@field PerceptionEffects PerceptionEffects
---@field ScissorStack PerceptionEffects
---@field TextureSize PerceptionEffects
---@field DefaultFrustumCuller PerceptionEffects
---@field FrameBuffers PerceptionEffects
---@field ShaderUniforms PerceptionEffects
---@field CameraOffset PerceptionEffects
---@field CurrentRenderStage PerceptionEffects
---@field PerspectiveViewMat PerceptionEffects
---@field PerspectiveProjectionMat PerceptionEffects
---@field DecorativeFontName PerceptionEffects
---@field StandardFontName PerceptionEffects
---@field FrameWidth PerceptionEffects
---@field FrameHeight PerceptionEffects
---@field CameraType PerceptionEffects
---@field MvMatrix PerceptionEffects
---@field PMatrix PerceptionEffects
---@field LineWidth PerceptionEffects
---@field CurrentModelviewMatrix PerceptionEffects
---@field CameraMatrixOrigin PerceptionEffects
---@field CameraMatrixOriginf PerceptionEffects
---@field CurrentProjectionMatrix PerceptionEffects
---@field CurrentShadowProjectionMatrix PerceptionEffects
---@field StandardShader PerceptionEffects
---@field CurrentActiveShader PerceptionEffects
---@field AmbientColor PerceptionEffects
---@field FogColor PerceptionEffects
---@field FogMin PerceptionEffects
---@field FogDensity PerceptionEffects
IRenderAPI = {}
