---@meta

---@class RenderAPIGame: RenderAPIBase, RenderAPIBase, IRenderAPI
---@field ShaderUniforms DefaultShaderUniforms
---@field Api ICoreClientAPI
---@field TextureSize number
---@field PerceptionEffects PerceptionEffects
---@field CameraOffset ModelTransform
---@field CameraMatrixOrigin number
---@field CameraMatrixOriginf number
---@field AmbientColor Vec3f
---@field FogColor Vec4f
---@field FogMin number
---@field FogDensity number
---@field CameraType EnumCameraMode
---@field MvMatrix StackMatrix4
---@field PMatrix StackMatrix4
---@field PerspectiveViewMat number
---@field PerspectiveProjectionMat number
---@field CurrentModelviewMatrix number
---@field CurrentProjectionMatrix number
---@field CurrentRenderStage EnumRenderStage
---@field CurrentShadowProjectionMatrix number
---@field DefaultFrustumCuller FrustumCulling
---@field DecorativeFontName string
---@field StandardFontName string
---@field FrameWidth number
---@field FrameHeight number
---@field LineWidth number
---@field StandardShader IStandardShaderProgram
---@field CurrentActiveShader IShaderProgram
---@field ScissorStack Stack`1
---@field FrameBuffers table
RenderAPIGame = {}

---@param capi ICoreClientAPI The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
---@param game ClientMain
---@return RenderAPIGame
function RenderAPIGame.ctor(capi, game) end

---@return DefaultShaderUniforms
function RenderAPIGame.get_ShaderUniforms() end

---@return ICoreClientAPI # The core api implemented by the client. The main interface for accessing the client. Contains all sub components and some miscellaneous methods.
function RenderAPIGame.get_Api() end

---@return number
function RenderAPIGame.get_TextureSize() end

---@return PerceptionEffects
function RenderAPIGame.get_PerceptionEffects() end

---@return ModelTransform # Used for transformations applied to a block or item model
function RenderAPIGame.get_CameraOffset() end

---@return number
function RenderAPIGame.get_CameraMatrixOrigin() end

---@return number
function RenderAPIGame.get_CameraMatrixOriginf() end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function RenderAPIGame.get_AmbientColor() end

---@return Vec4f
function RenderAPIGame.get_FogColor() end

---@return number
function RenderAPIGame.get_FogMin() end

---@return number
function RenderAPIGame.get_FogDensity() end

---@return EnumCameraMode
function RenderAPIGame.get_CameraType() end

---@return StackMatrix4
function RenderAPIGame.get_MvMatrix() end

---@return StackMatrix4
function RenderAPIGame.get_PMatrix() end

---@return number
function RenderAPIGame.get_PerspectiveViewMat() end

---@return number
function RenderAPIGame.get_PerspectiveProjectionMat() end

---@param matrix number
function RenderAPIGame.GlLoadMatrix(matrix) end

function RenderAPIGame.GlMatrixModeModelView() end

function RenderAPIGame.GlPopMatrix() end

function RenderAPIGame.GlPushMatrix() end

---@param angle number
---@param x number
---@param y number
---@param z number
function RenderAPIGame.GlRotate(angle, x, y, z) end

---@param x number
---@param y number
---@param z number
function RenderAPIGame.GlScale(x, y, z) end

---@param x number
---@param y number
---@param z number
function RenderAPIGame.GlTranslate(x, y, z) end

---@param x number
---@param y number
---@param z number
function RenderAPIGame.GlTranslate(x, y, z) end

---@return number
function RenderAPIGame.get_CurrentModelviewMatrix() end

---@return number
function RenderAPIGame.get_CurrentProjectionMatrix() end

---@param name AssetLocation Defines a complete path to an assets, including it's domain
---@param intoTexture LoadedTexture&
function RenderAPIGame.GetOrLoadTexture(name, intoTexture) end

---@param name AssetLocation Defines a complete path to an assets, including it's domain
---@return number
function RenderAPIGame.GetOrLoadTexture(name) end

---@param name AssetLocation Defines a complete path to an assets, including it's domain
---@param bmp BitmapRef
---@param intoTexture LoadedTexture&
function RenderAPIGame.GetOrLoadTexture(name, bmp, intoTexture) end

---@param name AssetLocation Defines a complete path to an assets, including it's domain
---@return boolean
function RenderAPIGame.RemoveTexture(name) end

---@param textureid number
---@param x1 number
---@param y1 number
---@param width number
---@param height number
---@param z? number
function RenderAPIGame.Render2DTexture(textureid, x1, y1, width, height, z) end

---@param stack ItemStack
---@param target EnumItemRenderTarget The render taget for an item stack
---@param dt number
---@return ItemRenderInfo # Holds information on how a collectible should be rendered in hands, on the ground or in gui. In collectible.OnBeforeRender() the values are prefilled with the default ones.
function RenderAPIGame.GetItemStackRenderInfo(stack, target, dt) end

---@param itemstack ItemStack
---@return TextureAtlasPosition # The position of a texture inside an atlas
function RenderAPIGame.GetTextureAtlasPosition(itemstack) end

---@param inSlot ItemSlot The default item slot to item stacks
---@param target EnumItemRenderTarget The render taget for an item stack
---@param dt number
---@return ItemRenderInfo # Holds information on how a collectible should be rendered in hands, on the ground or in gui. In collectible.OnBeforeRender() the values are prefilled with the default ones.
function RenderAPIGame.GetItemStackRenderInfo(inSlot, target, dt) end

---@return EnumRenderStage
function RenderAPIGame.get_CurrentRenderStage() end

---@return number
function RenderAPIGame.get_CurrentShadowProjectionMatrix() end

---@return FrustumCulling
function RenderAPIGame.get_DefaultFrustumCuller() end

---@param posX number
---@param posY number
---@param posZ number
---@param colorMul? Vec4f
---@return IStandardShaderProgram
function RenderAPIGame.PreparedStandardShader(posX, posY, posZ, colorMul) end

---@param fromTexture LoadedTexture A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
---@param sourceX number
---@param sourceY number
---@param sourceWidth number
---@param sourceHeight number
---@param intoTexture LoadedTexture A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
---@param targetX number
---@param targetY number
---@param alphaTest? number
function RenderAPIGame.RenderTextureIntoTexture(fromTexture, sourceX, sourceY, sourceWidth, sourceHeight, intoTexture, targetX, targetY, alphaTest) end

---@param x number
---@param y number
---@param z number
---@return Vec4f
function RenderAPIGame.GetLightRGBs(x, y, z) end

---@param stack ItemStack
---@param atlas ITextureAtlasAPI Entity texture Atlas.
---@param size number
---@param onComplete function
---@param color? number
---@param sepiaLevel? number
---@param scale? number
---@return boolean
function RenderAPIGame.RenderItemStackToAtlas(stack, atlas, size, onComplete, color, sepiaLevel, scale) end

---@param itemstack ItemStack
---@param posX number
---@param posY number
---@param posZ number
---@param size number
---@param color number
---@param shading? boolean
---@param rotate? boolean
---@param showStacksize? boolean
function RenderAPIGame.RenderItemstackToGui(itemstack, posX, posY, posZ, size, color, shading, rotate, showStacksize) end

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
function RenderAPIGame.RenderItemstackToGui(inSlot, posX, posY, posZ, size, color, dt, shading, rotate, showStackSize) end

---@param inSlot ItemSlot The default item slot to item stacks
---@param posX number
---@param posY number
---@param posZ number
---@param size number
---@param color number
---@param shading? boolean
---@param rotate? boolean
---@param showStacksize? boolean
function RenderAPIGame.RenderItemstackToGui(inSlot, posX, posY, posZ, size, color, shading, rotate, showStacksize) end

---@param dt number
---@param entity Entity The basic class for all entities in the game
---@param posX number
---@param posY number
---@param posZ number
---@param yawDelta number
---@param size number
---@param color number
function RenderAPIGame.RenderEntityToGui(dt, entity, posX, posY, posZ, yawDelta, size, color) end

---@param textureid number
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param z? number
---@param color? Vec4f
function RenderAPIGame.Render2DTexture(textureid, bounds, z, color) end

---@param quadModel MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
---@param textureid number
---@param x1 number
---@param y1 number
---@param width number
---@param height number
---@param z? number
function RenderAPIGame.Render2DTexture(quadModel, textureid, x1, y1, width, height, z) end

---@param textureid number
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param z? number
---@param color? Vec4f
function RenderAPIGame.Render2DTexturePremultipliedAlpha(textureid, bounds, z, color) end

---@param textureid number
---@param x1 number
---@param y1 number
---@param width number
---@param height number
---@param z? number
---@param color? Vec4f
function RenderAPIGame.Render2DTexturePremultipliedAlpha(textureid, x1, y1, width, height, z, color) end

---@param textureid number
---@param posX number
---@param posY number
---@param width number
---@param height number
---@param z? number
---@param color? Vec4f
function RenderAPIGame.Render2DTexturePremultipliedAlpha(textureid, posX, posY, width, height, z, color) end

---@param textureid number
---@param x1 number
---@param y1 number
---@param width number
---@param height number
---@param z? number
---@param color? Vec4f
function RenderAPIGame.Render2DTexture(textureid, x1, y1, width, height, z, color) end

---@param textureid number
---@param posX number
---@param posY number
---@param width number
---@param height number
---@param z? number
---@param color? Vec4f
function RenderAPIGame.RenderTexture(textureid, posX, posY, width, height, z, color) end

---@param posX number
---@param posY number
---@param posZ number
---@param width number
---@param height number
---@param color number
function RenderAPIGame.RenderRectangle(posX, posY, posZ, width, height, color) end

---@param origin BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param posX1 number
---@param posY1 number
---@param posZ1 number
---@param posX2 number
---@param posY2 number
---@param posZ2 number
---@param color number
function RenderAPIGame.RenderLine(origin, posX1, posY1, posZ1, posX2, posY2, posZ2, color) end

---@param textTexture LoadedTexture A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
---@param posX number
---@param posY number
---@param z? number
function RenderAPIGame.Render2DLoadedTexture(textTexture, posX, posY, z) end

---@param pointlight IPointLight
function RenderAPIGame.AddPointLight(pointlight) end

---@param pointlight IPointLight
function RenderAPIGame.RemovePointLight(pointlight) end

function RenderAPIGame.Reset3DProjection() end

---@param zfar number
---@param fov number
function RenderAPIGame.Set3DProjection(zfar, fov) end

---@param pngdata number
---@return BitmapExternal
function RenderAPIGame.BitmapCreateFromPng(pngdata) end

---@return string
function RenderAPIGame.get_DecorativeFontName() end

---@return string
function RenderAPIGame.get_StandardFontName() end

---@return number
function RenderAPIGame.get_FrameWidth() end

---@return number
function RenderAPIGame.get_FrameHeight() end

---@param value number
function RenderAPIGame.set_LineWidth(value) end

---@param message? string
function RenderAPIGame.CheckGlError(message) end

---@return string
function RenderAPIGame.GlGetError() end

---@param textureid number
function RenderAPIGame.BindTexture2d(textureid) end

---@param data MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@return MeshRef # A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
function RenderAPIGame.UploadMesh(data) end

---@param data MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@return MultiTextureMeshRef
function RenderAPIGame.UploadMultiTextureMesh(data) end

---@param meshref MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
function RenderAPIGame.DeleteMesh(meshref) end

---@param meshRef MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
---@param quantity? number
function RenderAPIGame.RenderMeshInstanced(meshRef, quantity) end

---@param meshRef MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
function RenderAPIGame.RenderMesh(meshRef) end

---@param mmr MultiTextureMeshRef
---@param textureSampleName string
---@param textureNumber? number
function RenderAPIGame.RenderMultiTextureMesh(mmr, textureSampleName, textureNumber) end

---@param mmr MultiTextureMeshRef
function RenderAPIGame.RenderMultiTextureMesh(mmr) end

---@param meshRef MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
---@param indicesStarts number
---@param indicesSizes number
---@param groupCount number
function RenderAPIGame.RenderMesh(meshRef, indicesStarts, indicesSizes, groupCount) end

---@param unscaledFontSize number
---@param fontName string
---@param color number
---@param strokeColor? number
---@return CairoFont # Represent a font with sizing and styling for use in rendering text
function RenderAPIGame.GetFont(unscaledFontSize, fontName, color, strokeColor) end

---@param shaderProgramNumber number
---@param name string
---@return number
function RenderAPIGame.GetUniformLocation(shaderProgramNumber, name) end

---@param textureId number
function RenderAPIGame.GLDeleteTexture(textureId) end

function RenderAPIGame.GlDisableCullFace() end

function RenderAPIGame.GlGenerateTex2DMipmaps() end

---@param blend boolean
---@param blendMode? EnumBlendMode
function RenderAPIGame.GlToggleBlend(blend, blendMode) end

---@param meshRef MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
---@param updatedata MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function RenderAPIGame.UpdateMesh(meshRef, updatedata) end

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
function RenderAPIGame.AllocateEmptyMesh(xyzSize, normalsSize, uvSize, rgbaSize, flagsSize, indicesSize, customFloats, customShorts, customBytes, customInts, drawMode, staticDraw) end

function RenderAPIGame.GlEnableCullFace() end

function RenderAPIGame.GLDisableDepthTest() end

function RenderAPIGame.GLEnableDepthTest() end

---@param program EnumShaderProgram
---@return IShaderProgram
function RenderAPIGame.GetEngineShader(program) end

---@param shaderProgramNumber number
---@return IShaderProgram
function RenderAPIGame.GetShader(shaderProgramNumber) end

---@return IStandardShaderProgram
function RenderAPIGame.get_StandardShader() end

---@return IShaderProgram
function RenderAPIGame.get_CurrentActiveShader() end

---@return Stack`1
function RenderAPIGame.get_ScissorStack() end

---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param stacking? boolean
function RenderAPIGame.PushScissor(bounds, stacking) end

function RenderAPIGame.PopScissor() end

---@param x number
---@param y number
---@param width number
---@param height number
function RenderAPIGame.GlScissor(x, y, width, height) end

---@param enable boolean
function RenderAPIGame.GlScissorFlag(enable) end

---@return number
function RenderAPIGame.GlGetMaxTextureSize() end

---@param surface ImageSurface
---@param linearMag boolean
---@return number
function RenderAPIGame.LoadCairoTexture(surface, linearMag) end

---@param bgraPixels number
---@param width number
---@param height number
---@param linearMag boolean
---@param clampMode number
---@return number
function RenderAPIGame.LoadTextureFromBgra(bgraPixels, width, height, linearMag, clampMode) end

---@param rgbaPixels number
---@param width number
---@param height number
---@param linearMag boolean
---@param clampMode number
---@return number
function RenderAPIGame.LoadTextureFromRgba(rgbaPixels, width, height, linearMag, clampMode) end

---@param bgraPixels number
---@param linearMag boolean
---@param clampMode number
---@param intoTexture LoadedTexture&
function RenderAPIGame.LoadOrUpdateTextureFromBgra(bgraPixels, linearMag, clampMode, intoTexture) end

---@param rgbaPixels number
---@param linearMag boolean
---@param clampMode number
---@param intoTexture LoadedTexture&
function RenderAPIGame.LoadOrUpdateTextureFromRgba(rgbaPixels, linearMag, clampMode, intoTexture) end

---@return table
function RenderAPIGame.get_FrameBuffers() end

---@param on boolean
function RenderAPIGame.GLDepthMask(on) end

---@param x number
---@param y number
---@param width number
---@param height number
function RenderAPIGame.GlViewport(x, y, width, height) end

---@param bmp IBitmap
---@param intoTexture LoadedTexture&
---@param linearMag? boolean
---@param clampMode? number
---@param generateMipmaps? boolean
function RenderAPIGame.LoadTexture(bmp, intoTexture, linearMag, clampMode, generateMipmaps) end

---@return userdata
function RenderAPIGame.GetType() end

---@return string
function RenderAPIGame.ToString() end

---@param obj userdata
---@return boolean
function RenderAPIGame.Equals(obj) end

---@return number
function RenderAPIGame.GetHashCode() end


