---@meta

---@class MainMenuRenderAPI: RenderAPIBase, RenderAPIBase, IRenderAPI
---@field Api ICoreClientAPI
---@field DecorativeFontName string
---@field StandardFontName string
---@field FrameWidth number
---@field FrameHeight number
---@field LineWidth number
---@field StandardShader IStandardShaderProgram
---@field CurrentActiveShader IShaderProgram
---@field ScissorStack Stack`1
---@field CurrentRenderStage EnumRenderStage
---@field PerspectiveViewMat number
---@field PerspectiveProjectionMat number
---@field CameraType EnumCameraMode
---@field MvMatrix StackMatrix4
---@field PMatrix StackMatrix4
---@field CurrentModelviewMatrix number
---@field CameraMatrixOrigin number
---@field CameraMatrixOriginf number
---@field CurrentProjectionMatrix number
---@field CurrentShadowProjectionMatrix number
---@field AmbientColor Vec3f
---@field FogColor Vec4f
---@field FogMin number
---@field FogDensity number
---@field CameraOffset ModelTransform
---@field ShaderUniforms DefaultShaderUniforms
---@field FrameBuffers table
---@field TextureSize number
---@field DefaultFrustumCuller FrustumCulling
---@field PerceptionEffects PerceptionEffects
---@field pMatrix number
MainMenuRenderAPI = {}

---@param screenManager ScreenManager
---@return MainMenuRenderAPI
function MainMenuRenderAPI.ctor(screenManager) end

---@param x number
---@param y number
---@param z number
function MainMenuRenderAPI.GlTranslate(x, y, z) end

---@param x number
---@param y number
---@param z number
function MainMenuRenderAPI.GlTranslate(x, y, z) end

---@return ICoreClientAPI # The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
function MainMenuRenderAPI.get_Api() end

---@param textureid number
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param z? number
---@param color? Vec4f
function MainMenuRenderAPI.Render2DTexture(textureid, bounds, z, color) end

---@param textureid number
---@param posX number
---@param posY number
---@param width number
---@param height number
---@param z? number
---@param color? Vec4f
function MainMenuRenderAPI.Render2DTexturePremultipliedAlpha(textureid, posX, posY, width, height, z, color) end

---@param textureid number
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param z? number
---@param color? Vec4f
function MainMenuRenderAPI.Render2DTexturePremultipliedAlpha(textureid, bounds, z, color) end

---@param textureid number
---@param posX number
---@param posY number
---@param width number
---@param height number
---@param z? number
---@param color? Vec4f
function MainMenuRenderAPI.RenderTexture(textureid, posX, posY, width, height, z, color) end

---@param textureid number
---@param posX number
---@param posY number
---@param width number
---@param height number
---@param z? number
---@param color? Vec4f
function MainMenuRenderAPI.Render2DTexturePremultipliedAlpha(textureid, posX, posY, width, height, z, color) end

---@param textureid number
---@param x1 number
---@param y1 number
---@param width number
---@param height number
---@param z? number
function MainMenuRenderAPI.Render2DTexture(textureid, x1, y1, width, height, z) end

---@param textureid number
---@param posX number
---@param posY number
---@param width number
---@param height number
---@param z? number
---@param color? Vec4f
function MainMenuRenderAPI.Render2DTexture(textureid, posX, posY, width, height, z, color) end

---@param posX number
---@param posY number
---@param width number
---@param height number
---@param z? number
function MainMenuRenderAPI.Draw2DShadedEdges(posX, posY, width, height, z) end

---@param textTexture LoadedTexture A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
---@param posX number
---@param posY number
---@param z? number
function MainMenuRenderAPI.Render2DLoadedTexture(textTexture, posX, posY, z) end

---@param posX number
---@param posY number
---@param posZ number
---@param width number
---@param height number
---@param color number
function MainMenuRenderAPI.RenderRectangle(posX, posY, posZ, width, height, color) end

---@param pngdata number
---@return BitmapExternal
function MainMenuRenderAPI.BitmapCreateFromPng(pngdata) end

---@return string
function MainMenuRenderAPI.get_DecorativeFontName() end

---@return string
function MainMenuRenderAPI.get_StandardFontName() end

---@return number
function MainMenuRenderAPI.get_FrameWidth() end

---@return number
function MainMenuRenderAPI.get_FrameHeight() end

---@param value number
function MainMenuRenderAPI.set_LineWidth(value) end

---@param message? string
function MainMenuRenderAPI.CheckGlError(message) end

---@return string
function MainMenuRenderAPI.GlGetError() end

---@param textureid number
function MainMenuRenderAPI.BindTexture2d(textureid) end

---@param data MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@return MeshRef # A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
function MainMenuRenderAPI.UploadMesh(data) end

---@param data MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@return MultiTextureMeshRef
function MainMenuRenderAPI.UploadMultiTextureMesh(data) end

---@param meshref MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
function MainMenuRenderAPI.DeleteMesh(meshref) end

---@param meshRef MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
---@param quantity? number
function MainMenuRenderAPI.RenderMeshInstanced(meshRef, quantity) end

---@param meshRef MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
function MainMenuRenderAPI.RenderMesh(meshRef) end

---@param mmr MultiTextureMeshRef
---@param textureSampleName string
---@param textureNumber? number
function MainMenuRenderAPI.RenderMultiTextureMesh(mmr, textureSampleName, textureNumber) end

---@param mmr MultiTextureMeshRef
function MainMenuRenderAPI.RenderMultiTextureMesh(mmr) end

---@param meshRef MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
---@param indicesStarts number
---@param indicesSizes number
---@param groupCount number
function MainMenuRenderAPI.RenderMesh(meshRef, indicesStarts, indicesSizes, groupCount) end

---@param unscaledFontSize number
---@param fontName string
---@param color number
---@param strokeColor? number
---@return CairoFont # Represent a font with sizing and styling for use in rendering text
function MainMenuRenderAPI.GetFont(unscaledFontSize, fontName, color, strokeColor) end

---@param shaderProgramNumber number
---@param name string
---@return number
function MainMenuRenderAPI.GetUniformLocation(shaderProgramNumber, name) end

---@param textureId number
function MainMenuRenderAPI.GLDeleteTexture(textureId) end

function MainMenuRenderAPI.GlDisableCullFace() end

function MainMenuRenderAPI.GlGenerateTex2DMipmaps() end

---@param blend boolean
---@param blendMode? EnumBlendMode
function MainMenuRenderAPI.GlToggleBlend(blend, blendMode) end

---@param meshRef MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
---@param updatedata MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function MainMenuRenderAPI.UpdateMesh(meshRef, updatedata) end

---@param xyzSize number
---@param normalsSize number
---@param uvSize number
---@param rgbaSize number
---@param flagsSize number
---@param indicesSize number
---@param customFloats CustomMeshDataPartFloat Holds arbitrary float data for meshes to be used in the shader
---@param customShorts CustomMeshDataPartShort Holds arbitrary short data for meshes to be used in the shader
---@param customBytes CustomMeshDataPartByte Holds arbitrary byte data for meshes to be used in the shader
---@param customInts CustomMeshDataPartInt Holds arbitrary int data for meshes to be used in the shader
---@param drawMode? EnumDrawMode
---@param staticDraw? boolean
---@return MeshRef # A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
function MainMenuRenderAPI.AllocateEmptyMesh(xyzSize, normalsSize, uvSize, rgbaSize, flagsSize, indicesSize, customFloats, customShorts, customBytes, customInts, drawMode, staticDraw) end

function MainMenuRenderAPI.GlEnableCullFace() end

function MainMenuRenderAPI.GLDisableDepthTest() end

function MainMenuRenderAPI.GLEnableDepthTest() end

---@param program EnumShaderProgram
---@return IShaderProgram
function MainMenuRenderAPI.GetEngineShader(program) end

---@param shaderProgramNumber number
---@return IShaderProgram
function MainMenuRenderAPI.GetShader(shaderProgramNumber) end

---@return IStandardShaderProgram
function MainMenuRenderAPI.get_StandardShader() end

---@return IShaderProgram
function MainMenuRenderAPI.get_CurrentActiveShader() end

---@return Stack`1
function MainMenuRenderAPI.get_ScissorStack() end

---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param stacking? boolean
function MainMenuRenderAPI.PushScissor(bounds, stacking) end

function MainMenuRenderAPI.PopScissor() end

---@param x number
---@param y number
---@param width number
---@param height number
function MainMenuRenderAPI.GlScissor(x, y, width, height) end

---@param enable boolean
function MainMenuRenderAPI.GlScissorFlag(enable) end

---@return number
function MainMenuRenderAPI.GlGetMaxTextureSize() end

---@param surface ImageSurface
---@param linearMag boolean
---@return number
function MainMenuRenderAPI.LoadCairoTexture(surface, linearMag) end

---@param bgraPixels number
---@param width number
---@param height number
---@param linearMag boolean
---@param clampMode number
---@return number
function MainMenuRenderAPI.LoadTextureFromBgra(bgraPixels, width, height, linearMag, clampMode) end

---@param rgbaPixels number
---@param width number
---@param height number
---@param linearMag boolean
---@param clampMode number
---@return number
function MainMenuRenderAPI.LoadTextureFromRgba(rgbaPixels, width, height, linearMag, clampMode) end

---@param bgraPixels number
---@param linearMag boolean
---@param clampMode number
---@param intoTexture LoadedTexture&
function MainMenuRenderAPI.LoadOrUpdateTextureFromBgra(bgraPixels, linearMag, clampMode, intoTexture) end

---@param rgbaPixels number
---@param linearMag boolean
---@param clampMode number
---@param intoTexture LoadedTexture&
function MainMenuRenderAPI.LoadOrUpdateTextureFromRgba(rgbaPixels, linearMag, clampMode, intoTexture) end

---@return EnumRenderStage
function MainMenuRenderAPI.get_CurrentRenderStage() end

---@return number
function MainMenuRenderAPI.get_PerspectiveViewMat() end

---@return number
function MainMenuRenderAPI.get_PerspectiveProjectionMat() end

---@return EnumCameraMode
function MainMenuRenderAPI.get_CameraType() end

---@return StackMatrix4
function MainMenuRenderAPI.get_MvMatrix() end

---@return StackMatrix4
function MainMenuRenderAPI.get_PMatrix() end

---@return number
function MainMenuRenderAPI.get_CurrentModelviewMatrix() end

---@return number
function MainMenuRenderAPI.get_CameraMatrixOrigin() end

---@return number
function MainMenuRenderAPI.get_CameraMatrixOriginf() end

---@return number
function MainMenuRenderAPI.get_CurrentProjectionMatrix() end

---@return number
function MainMenuRenderAPI.get_CurrentShadowProjectionMatrix() end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function MainMenuRenderAPI.get_AmbientColor() end

---@return Vec4f
function MainMenuRenderAPI.get_FogColor() end

---@return number
function MainMenuRenderAPI.get_FogMin() end

---@return number
function MainMenuRenderAPI.get_FogDensity() end

---@return ModelTransform # Used for transformations applied to a block or item model
function MainMenuRenderAPI.get_CameraOffset() end

---@return DefaultShaderUniforms
function MainMenuRenderAPI.get_ShaderUniforms() end

---@return table
function MainMenuRenderAPI.get_FrameBuffers() end

---@return number
function MainMenuRenderAPI.get_TextureSize() end

---@return FrustumCulling
function MainMenuRenderAPI.get_DefaultFrustumCuller() end

---@return PerceptionEffects
function MainMenuRenderAPI.get_PerceptionEffects() end

---@param itemstack ItemStack
---@param ground EnumItemRenderTarget The render taget for an item stack
---@param dt number
---@return ItemRenderInfo # Holds information on how a collectible should be rendered in hands, on the ground or in gui. In collectible.OnBeforeRender() the values are prefilled with the default ones.
function MainMenuRenderAPI.GetItemStackRenderInfo(itemstack, ground, dt) end

---@param inSlot ItemSlot The default item slot to item stacks
---@param ground EnumItemRenderTarget The render taget for an item stack
---@param dt number
---@return ItemRenderInfo # Holds information on how a collectible should be rendered in hands, on the ground or in gui. In collectible.OnBeforeRender() the values are prefilled with the default ones.
function MainMenuRenderAPI.GetItemStackRenderInfo(inSlot, ground, dt) end

function MainMenuRenderAPI.GlMatrixModeModelView() end

function MainMenuRenderAPI.GlPushMatrix() end

function MainMenuRenderAPI.GlPopMatrix() end

---@param matrix number
function MainMenuRenderAPI.GlLoadMatrix(matrix) end

---@param x number
---@param y number
---@param z number
function MainMenuRenderAPI.GlScale(x, y, z) end

---@param angle number
---@param x number
---@param y number
---@param z number
function MainMenuRenderAPI.GlRotate(angle, x, y, z) end

---@param x number
---@param y number
---@param z number
---@return Vec4f
function MainMenuRenderAPI.GetLightRGBs(x, y, z) end

---@param name AssetLocation Defines a complete path to an assets, including it's domain
---@return boolean
function MainMenuRenderAPI.RemoveTexture(name) end

---@param posX number
---@param posY number
---@param posZ number
---@param colorMul? Vec4f
---@return IStandardShaderProgram
function MainMenuRenderAPI.PreparedStandardShader(posX, posY, posZ, colorMul) end

---@param fromTexture LoadedTexture A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
---@param sourceX number
---@param sourceY number
---@param sourceWidth number
---@param sourceHeight number
---@param intoTexture LoadedTexture A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
---@param targetX number
---@param targetY number
---@param alphaTest? number
function MainMenuRenderAPI.RenderTextureIntoTexture(fromTexture, sourceX, sourceY, sourceWidth, sourceHeight, intoTexture, targetX, targetY, alphaTest) end

---@param itemstack ItemStack
---@param posX number
---@param posY number
---@param posZ number
---@param size number
---@param color number
---@param shading? boolean
---@param rotate? boolean
---@param showStackSize? boolean
function MainMenuRenderAPI.RenderItemstackToGui(itemstack, posX, posY, posZ, size, color, shading, rotate, showStackSize) end

---@param inSlot ItemSlot The default item slot to item stacks
---@param posX number
---@param posY number
---@param posZ number
---@param size number
---@param color number
---@param shading? boolean
---@param rotate? boolean
---@param showStackSize? boolean
function MainMenuRenderAPI.RenderItemstackToGui(inSlot, posX, posY, posZ, size, color, shading, rotate, showStackSize) end

---@param inSlot ItemSlot The default item slot to item stacks
---@param posX number
---@param posY number
---@param posZ number
---@param size number
---@param color number
---@param dt number
---@param shading? boolean
---@param rotate? boolean
---@param showStackSize? boolean
function MainMenuRenderAPI.RenderItemstackToGui(inSlot, posX, posY, posZ, size, color, dt, shading, rotate, showStackSize) end

---@param quadModel MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
---@param textureid number
---@param x1 number
---@param y1 number
---@param width number
---@param height number
---@param z? number
function MainMenuRenderAPI.Render2DTexture(quadModel, textureid, x1, y1, width, height, z) end

---@param dt number
---@param entity Entity The basic class for all entities in the game
---@param posX number
---@param posY number
---@param posZ number
---@param yawDelta number
---@param size number
---@param color number
function MainMenuRenderAPI.RenderEntityToGui(dt, entity, posX, posY, posZ, yawDelta, size, color) end

---@param on boolean
function MainMenuRenderAPI.GLDepthMask(on) end

---@param name AssetLocation Defines a complete path to an assets, including it's domain
---@param intoTexture LoadedTexture&
function MainMenuRenderAPI.GetOrLoadTexture(name, intoTexture) end

---@param name AssetLocation Defines a complete path to an assets, including it's domain
---@param bmp BitmapRef
---@param intoTexture LoadedTexture&
function MainMenuRenderAPI.GetOrLoadTexture(name, bmp, intoTexture) end

---@param name AssetLocation Defines a complete path to an assets, including it's domain
---@return number
function MainMenuRenderAPI.GetOrLoadTexture(name) end

---@param itemstack ItemStack
---@return TextureAtlasPosition # The position of a texture inside an atlas
function MainMenuRenderAPI.GetTextureAtlasPosition(itemstack) end

---@param origin BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param posX1 number
---@param posY1 number
---@param posZ1 number
---@param posX2 number
---@param posY2 number
---@param posZ2 number
---@param color number
function MainMenuRenderAPI.RenderLine(origin, posX1, posY1, posZ1, posX2, posY2, posZ2, color) end

---@param stack ItemStack
---@param atlas ITextureAtlasAPI Entity texture Atlas.
---@param size number
---@param onComplete function
---@param color? number
---@param sepiaLevel? number
---@param scale? number
---@return boolean
function MainMenuRenderAPI.RenderItemStackToAtlas(stack, atlas, size, onComplete, color, sepiaLevel, scale) end

---@param pointlight IPointLight
function MainMenuRenderAPI.AddPointLight(pointlight) end

---@param pointlight IPointLight
function MainMenuRenderAPI.RemovePointLight(pointlight) end

---@param x number
---@param y number
---@param width number
---@param height number
function MainMenuRenderAPI.GlViewport(x, y, width, height) end

---@param bmp IBitmap
---@param intoTexture LoadedTexture&
---@param linearMag? boolean
---@param clampMode? number
---@param generateMipmaps? boolean
function MainMenuRenderAPI.LoadTexture(bmp, intoTexture, linearMag, clampMode, generateMipmaps) end

function MainMenuRenderAPI.Reset3DProjection() end

---@param zfar number
---@param fov number
function MainMenuRenderAPI.Set3DProjection(zfar, fov) end

---@return userdata
function MainMenuRenderAPI.GetType() end

---@return string
function MainMenuRenderAPI.ToString() end

---@param obj userdata
---@return boolean
function MainMenuRenderAPI.Equals(obj) end

---@return number
function MainMenuRenderAPI.GetHashCode() end


