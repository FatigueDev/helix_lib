---@meta

-- The main api component to assist you in rendering pretty stuff onto the screen
---@class IRenderAPI
---@field PerceptionEffects PerceptionEffects
---@field ScissorStack Stack`1
---@field TextureSize number
---@field DefaultFrustumCuller FrustumCulling
---@field FrameBuffers table List of all loaded frame buffers. To get the god rays frame buffer for exampple, do Framebuffers[(int)EnumFrameBuffer.GodRays]
---@field ShaderUniforms DefaultShaderUniforms A number of default shader uniforms
---@field CameraOffset ModelTransform Can be used to offset the position of the player camera
---@field CurrentRenderStage EnumRenderStage The render stage the engine is currently at
---@field PerspectiveViewMat number The default view matrix used during perspective rendering. Is refreshed before EnumRenderStage.Opaque. Useful for doing projections in the Ortho stage via MatrixToolsd.Project()
---@field PerspectiveProjectionMat number The default projection matrix used during perspective rendering. Is refreshed before EnumRenderStage.Opaque. Useful for doing projections in the Ortho stage via MatrixToolsd.Project()
---@field DecorativeFontName string The name of the font used during this render (if it exists).
---@field StandardFontName string The standard font used during this render (if it exists).
---@field FrameWidth number Width of the primary render framebuffer
---@field FrameHeight number Height of the primary render framebuffer
---@field CameraType EnumCameraMode The camera type.
---@field MvMatrix StackMatrix4 The current modelview matrix stack
---@field PMatrix StackMatrix4 The current projection matrix stack
---@field LineWidth number
---@field CurrentModelviewMatrix number The current top most matrix in the model view matrix stack. 
---@field CameraMatrixOrigin number Player camera matrix with player positioned at 0,0,0. You can use this matrix instead of CurrentModelviewMatrix for high precision rendering.
---@field CameraMatrixOriginf number Player camera matrix with player positioned at 0,0,0. You can use this matrix instead of CurrentModelviewMatrix for high precision rendering.
---@field CurrentProjectionMatrix number The current top most matrix in the projection matrix stack
---@field CurrentShadowProjectionMatrix number The current projection matrix for shadow rendering (renders the scene from the viewpoint of the sun)
---@field StandardShader IStandardShaderProgram Gives you a reference to the "standard" shader, a general purpose shader for normal shading work
---@field CurrentActiveShader IShaderProgram Gives you a reference to the currently active shader, or null if none is active right now
---@field AmbientColor Vec3f The current ambient color (e.g. will return a blue tint when player is under water)
---@field FogColor Vec4f The current fog color (e.g. will return a blue tint when player is under water)
---@field FogMin number Current minimum fog value 
---@field FogDensity number Density of the current fog. Fog is calculated as followed in the shaders: clamp(fogMin + 1 - 1 / exp(gl_FragDepth * fogDensity), 0, 1)
IRenderAPI = {}


---@return PerceptionEffects
function IRenderAPI.get_PerceptionEffects() end

---@return Stack`1
function IRenderAPI.get_ScissorStack() end

---@return number
function IRenderAPI.get_TextureSize() end

---@return FrustumCulling
function IRenderAPI.get_DefaultFrustumCuller() end

---@return table
function IRenderAPI.get_FrameBuffers() end

---@return DefaultShaderUniforms
function IRenderAPI.get_ShaderUniforms() end

---@return ModelTransform # Used for transformations applied to a block or item model
function IRenderAPI.get_CameraOffset() end

---@return EnumRenderStage
function IRenderAPI.get_CurrentRenderStage() end

---@return number
function IRenderAPI.get_PerspectiveViewMat() end

---@return number
function IRenderAPI.get_PerspectiveProjectionMat() end

---@return string
function IRenderAPI.get_DecorativeFontName() end

---@return string
function IRenderAPI.get_StandardFontName() end

---@return number
function IRenderAPI.get_FrameWidth() end

---@return number
function IRenderAPI.get_FrameHeight() end

---@return EnumCameraMode
function IRenderAPI.get_CameraType() end

---@return StackMatrix4
function IRenderAPI.get_MvMatrix() end

---@return StackMatrix4
function IRenderAPI.get_PMatrix() end

-- Returns you a render info object of given item stack. Can be used to render held items onto a creature.
---@param inSlot ItemSlot The default item slot to item stacks
---@param ground EnumItemRenderTarget The render taget for an item stack
---@param dt number
---@return ItemRenderInfo # Holds information on how a collectible should be rendered in hands, on the ground or in gui. In collectible.OnBeforeRender() the values are prefilled with the default ones.
function IRenderAPI.GetItemStackRenderInfo(inSlot, ground, dt) end

function IRenderAPI.Reset3DProjection() end

---@param zfar number
---@param fov number
function IRenderAPI.Set3DProjection(zfar, fov) end

-- Returns null if no OpenGL Error happened, otherwise one of the official opengl error codes
---@return string
function IRenderAPI.GlGetError() end

-- If opengl debug mode is enabled and an opengl error is found this method will throw an exception. 
-- It is recommended to use this methods in a few spots during render code to track down rendering issues in time.
---@param message? string
function IRenderAPI.CheckGlError(message) end

-- The current model view.
function IRenderAPI.GlMatrixModeModelView() end

-- Pushes a copy of the current matrix onto the games matrix stack
function IRenderAPI.GlPushMatrix() end

-- Pops the top most matrix from the games matrix stack
function IRenderAPI.GlPopMatrix() end

-- Replaces the top most matrix with given one
---@param matrix number
function IRenderAPI.GlLoadMatrix(matrix) end

-- Translates top most matrix in the games matrix stack
---@param x number
---@param y number
---@param z number
function IRenderAPI.GlTranslate(x, y, z) end

-- Translates top most matrix in the games matrix stack
---@param x number
---@param y number
---@param z number
function IRenderAPI.GlTranslate(x, y, z) end

-- Scales top most matrix in the games matrix stack
---@param x number
---@param y number
---@param z number
function IRenderAPI.GlScale(x, y, z) end

-- Rotates top most matrix in the games matrix stack
---@param angle number
---@param x number
---@param y number
---@param z number
function IRenderAPI.GlRotate(angle, x, y, z) end

-- Enables the Culling faces.
function IRenderAPI.GlEnableCullFace() end

-- Disables the culling faces.
function IRenderAPI.GlDisableCullFace() end

-- Enables the Depth Test.
function IRenderAPI.GLEnableDepthTest() end

-- Disables the Depth Test.
function IRenderAPI.GLDisableDepthTest() end

---@param x number
---@param y number
---@param width number
---@param height number
function IRenderAPI.GlViewport(x, y, width, height) end

---@param value number
function IRenderAPI.set_LineWidth(value) end

-- Toggle writing to the depth buffer
---@param on boolean
function IRenderAPI.GLDepthMask(on) end

-- Regenerates the mip maps for the currently bound texture
function IRenderAPI.GlGenerateTex2DMipmaps() end

-- To enable/disable various blending modes
---@param blend boolean
---@param blendMode? EnumBlendMode
function IRenderAPI.GlToggleBlend(blend, blendMode) end

---@return number
function IRenderAPI.get_CurrentModelviewMatrix() end

---@return number
function IRenderAPI.get_CameraMatrixOrigin() end

---@return number
function IRenderAPI.get_CameraMatrixOriginf() end

---@return number
function IRenderAPI.get_CurrentProjectionMatrix() end

---@return number
function IRenderAPI.get_CurrentShadowProjectionMatrix() end

-- Convenience method for GlScissor(). Tells the graphics card to not render anything outside supplied bounds. Can be turned of again with PopScissor(). Any previously applied scissor will be restored after calling PopScissor().
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param stacking? boolean
function IRenderAPI.PushScissor(bounds, stacking) end

-- End scissor mode. Disable any previously set render constraints
function IRenderAPI.PopScissor() end

-- Tells the graphics card to not render anything outside supplied bounds. Only sets the boundaries. Can be turned on/off with GlScissorFlag(true/false)
---@param x number
---@param y number
---@param width number
---@param height number
function IRenderAPI.GlScissor(x, y, width, height) end

-- Whether scissor mode should be active or not
---@param enable boolean
function IRenderAPI.GlScissorFlag(enable) end

-- Creates a bitmap from a given PNG.
---@param pngdata number
---@return BitmapExternal
function IRenderAPI.BitmapCreateFromPng(pngdata) end

-- Loads texture from Pixels in BGRA format.
---@param bgraPixels number
---@param width number
---@param height number
---@param linearMag boolean
---@param clampMode number
---@return number
function IRenderAPI.LoadTextureFromBgra(bgraPixels, width, height, linearMag, clampMode) end

-- Loads texture from Pixels in RGBA format.
---@param rgbaPixels number
---@param width number
---@param height number
---@param linearMag boolean
---@param clampMode number
---@return number
function IRenderAPI.LoadTextureFromRgba(rgbaPixels, width, height, linearMag, clampMode) end

---@param bgraPixels number
---@param linearMag boolean
---@param clampMode number
---@param intoTexture LoadedTexture&
function IRenderAPI.LoadOrUpdateTextureFromBgra(bgraPixels, linearMag, clampMode, intoTexture) end

---@param rgbaPixels number
---@param linearMag boolean
---@param clampMode number
---@param intoTexture LoadedTexture&
function IRenderAPI.LoadOrUpdateTextureFromRgba(rgbaPixels, linearMag, clampMode, intoTexture) end

---@param bmp IBitmap
---@param intoTexture LoadedTexture&
---@param linearMag? boolean
---@param clampMode? number
---@param generateMipmaps? boolean
function IRenderAPI.LoadTexture(bmp, intoTexture, linearMag, clampMode, generateMipmaps) end

-- Deletes given texture
---@param textureId number
function IRenderAPI.GLDeleteTexture(textureId) end

-- Max size a texture can have on the current graphics card
---@return number
function IRenderAPI.GlGetMaxTextureSize() end

-- Binds given texture. For use with shaders - you should assign the texture directly though shader uniforms.
---@param textureid number
function IRenderAPI.BindTexture2d(textureid) end

-- Loads given texture through the assets managers and loads it onto the graphics card. Will return a cached version on every subsequent call to this method. 
---@param name AssetLocation Defines a complete path to an assets, including it's domain
---@return number
function IRenderAPI.GetOrLoadTexture(name) end

---@param name AssetLocation Defines a complete path to an assets, including it's domain
---@param intoTexture LoadedTexture&
function IRenderAPI.GetOrLoadTexture(name, intoTexture) end

---@param name AssetLocation Defines a complete path to an assets, including it's domain
---@param bmp BitmapRef
---@param intoTexture LoadedTexture&
function IRenderAPI.GetOrLoadTexture(name, bmp, intoTexture) end

-- Removes given texture from the cache and from graphics card memory
---@param name AssetLocation Defines a complete path to an assets, including it's domain
---@return boolean
function IRenderAPI.RemoveTexture(name) end

-- Gets you the uniform location of given uniform for given shader
---@param shaderProgramNumber number
---@param name string
---@return number
function IRenderAPI.GetUniformLocation(shaderProgramNumber, name) end

-- Gives you access to all of the vanilla shaders
---@param program EnumShaderProgram
---@return IShaderProgram
function IRenderAPI.GetEngineShader(program) end

-- Gives you access to all currently registered shaders identified by their number
---@param shaderProgramNumber number
---@return IShaderProgram
function IRenderAPI.GetShader(shaderProgramNumber) end

---@return IStandardShaderProgram
function IRenderAPI.get_StandardShader() end

-- Populates the uniforms and light values for given positions and calls shader.Use().
---@param posX number
---@param posY number
---@param posZ number
---@param colorMul? Vec4f
---@return IStandardShaderProgram
function IRenderAPI.PreparedStandardShader(posX, posY, posZ, colorMul) end

---@return IShaderProgram
function IRenderAPI.get_CurrentActiveShader() end

-- Allocates memory on the graphics card. Can use UpdateMesh() to populate it with data. The custom mesh data parts may be null. Sizes are in bytes.
---@param xyzSize number
---@param normalSize number
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
function IRenderAPI.AllocateEmptyMesh(xyzSize, normalSize, uvSize, rgbaSize, flagsSize, indicesSize, customFloats, customShorts, customBytes, customInts, drawMode, staticDraw) end

-- Uploads your mesh onto the graphics card for rendering (= load into a VAO).
-- If you use a custom shader, these are the VBO locations:
-- xyz=0, uv=1, rgba=2, rgba2=3, flags=4, customFloats=5, customInts=6, customBytes=7  (indices do not get their own data location)
-- If any of them are null, the vbo location is not consumed and all used location numbers shift by -1
---@param data MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@return MeshRef # A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
function IRenderAPI.UploadMesh(data) end

-- Same as  but splits it into multiple MeshRefs, one for each texture
---@param data MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@return MultiTextureMeshRef
function IRenderAPI.UploadMultiTextureMesh(data) end

-- Updates the existing mesh. Updates any non null data from updatedata
---@param meshRef MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
---@param updatedata MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function IRenderAPI.UpdateMesh(meshRef, updatedata) end

-- Frees up the memory on the graphics card. Should always be called at the end of a meshes lifetime to prevent memory leaks. Equivalent to calling Dispose on the meshref itself
---@param vao MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
function IRenderAPI.DeleteMesh(vao) end

-- Renders given mesh onto the screen
---@param meshRef MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
function IRenderAPI.RenderMesh(meshRef) end

-- Renders given mesh onto the screen, with the mesh requiring multiple render calls for each texture, asigns the associated texture each call
---@param mmr MultiTextureMeshRef
---@param textureSampleName string
---@param textureNumber? number
function IRenderAPI.RenderMultiTextureMesh(mmr, textureSampleName, textureNumber) end

-- Renders given mesh onto the screen, with the mesh requiring multiple render calls for each texture, does not asign any texture
---@param mmr MultiTextureMeshRef
function IRenderAPI.RenderMultiTextureMesh(mmr) end

-- Uses the graphics instanced rendering methods to efficiently render the same mesh multiple times. Use the custom mesh data parts with instanced flag on to supply custom data to each mesh.
---@param meshRef MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
---@param quantity? number
function IRenderAPI.RenderMeshInstanced(meshRef, quantity) end

-- Draws only a part of the mesh
---@param meshRef MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
---@param indicesStarts number
---@param indicesSizes number
---@param groupCount number
function IRenderAPI.RenderMesh(meshRef, indicesStarts, indicesSizes, groupCount) end

-- Renders given texture into another texture. If you use the resulting texture for in-world rendering, remember to recreate the mipmaps via 
---@param fromTexture LoadedTexture A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
---@param sourceX number
---@param sourceY number
---@param sourceWidth number
---@param sourceHeight number
---@param intoTexture LoadedTexture A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
---@param targetX number
---@param targetY number
---@param alphaTest? number
function IRenderAPI.RenderTextureIntoTexture(fromTexture, sourceX, sourceY, sourceWidth, sourceHeight, intoTexture, targetX, targetY, alphaTest) end

-- Renders given itemstack at given position (gui/orthographic mode)
---@param itemstack ItemStack
---@param posX number
---@param posY number
---@param posZ number
---@param size number
---@param color number
---@param shading? boolean
---@param rotate? boolean
---@param showStackSize? boolean
function IRenderAPI.RenderItemstackToGui(itemstack, posX, posY, posZ, size, color, shading, rotate, showStackSize) end

-- Renders given itemstack in slot at given position (gui/orthographic mode)
---@param inSlot ItemSlot The default item slot to item stacks
---@param posX number
---@param posY number
---@param posZ number
---@param size number
---@param color number
---@param shading? boolean
---@param rotate? boolean
---@param showStackSize? boolean
function IRenderAPI.RenderItemstackToGui(inSlot, posX, posY, posZ, size, color, shading, rotate, showStackSize) end

-- Renders given itemstack in slot at given position (gui/orthographic mode)
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
function IRenderAPI.RenderItemstackToGui(inSlot, posX, posY, posZ, size, color, dt, shading, rotate, showStackSize) end

-- Renders given itemstack into supplied texture atlas. This is a rather costly operation. Also be sure to cache the results, as each call to this method consumes more space in your texture atlas. If you call this method outside the ortho render stage, it will enqueue a render task for next frame. Rather exceptionally, this method is also thread safe. If called from another thread, the render task always gets enqueued. The call back will always be run on the main thread.
---@param stack ItemStack
---@param atlas ITextureAtlasAPI Entity texture Atlas.
---@param size number
---@param onComplete function
---@param color? number
---@param sepiaLevel? number
---@param scale? number
---@return boolean
function IRenderAPI.RenderItemStackToAtlas(stack, atlas, size, onComplete, color, sepiaLevel, scale) end

-- Returns the first TextureAtlasPosition it can find for given block or item texture in itemstack. 
---@param itemstack ItemStack
---@return TextureAtlasPosition # The position of a texture inside an atlas
function IRenderAPI.GetTextureAtlasPosition(itemstack) end

-- Renders given entity at given position (gui/orthographic mode)
---@param dt number
---@param entity Entity The basic class for all entities in the game
---@param posX number
---@param posY number
---@param posZ number
---@param yawDelta number
---@param size number
---@param color number
function IRenderAPI.RenderEntityToGui(dt, entity, posX, posY, posZ, yawDelta, size, color) end

-- Renders given texture onto the screen, uses a simple quad for rendering (gui mode). Assumes the texture to use a premultiplied alpha channel
---@param textureid number
---@param posX number
---@param posY number
---@param width number
---@param height number
---@param z? number
---@param color? Vec4f
function IRenderAPI.Render2DTexturePremultipliedAlpha(textureid, posX, posY, width, height, z, color) end

-- Renders given texture onto the screen, uses a simple quad for rendering (gui mode). Assumes the texture to use a premultiplied alpha channel
---@param textureid number
---@param posX number
---@param posY number
---@param width number
---@param height number
---@param z? number
---@param color? Vec4f
function IRenderAPI.Render2DTexturePremultipliedAlpha(textureid, posX, posY, width, height, z, color) end

-- Renders given texture onto the screen, uses a simple quad for rendering (gui mode). Assumes the texture to use a premultiplied alpha channel
---@param textureid number
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param z? number
---@param color? Vec4f
function IRenderAPI.Render2DTexturePremultipliedAlpha(textureid, bounds, z, color) end

-- Renders given texture onto the screen, uses a simple quad for rendering (gui mode)
---@param textureid number
---@param posX number
---@param posY number
---@param width number
---@param height number
---@param z? number
---@param color? Vec4f
function IRenderAPI.RenderTexture(textureid, posX, posY, width, height, z, color) end

-- Renders given texture onto the screen, uses a simple quad for rendering (gui mode)
---@param textureid number
---@param posX number
---@param posY number
---@param width number
---@param height number
---@param z? number
---@param color? Vec4f
function IRenderAPI.Render2DTexture(textureid, posX, posY, width, height, z, color) end

-- Renders given texture onto the screen, uses supplied quad for rendering (gui mode)
---@param quadModel MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
---@param textureid number
---@param posX number
---@param posY number
---@param width number
---@param height number
---@param z? number
function IRenderAPI.Render2DTexture(quadModel, textureid, posX, posY, width, height, z) end

-- Renders given texture onto the screen, uses a simple quad for rendering (gui mode)
---@param textureid number
---@param bounds ElementBounds Box sizing model comparable to the box sizing model of cascading style sheets using "position:relative;" Each element has a position, size, padding and margin Padding is counted towards the size of the box, whereas margin is not
---@param z? number
---@param color? Vec4f
function IRenderAPI.Render2DTexture(textureid, bounds, z, color) end

-- Renders given texture onto the screen, uses a simple quad for rendering (gui mode)
---@param textTexture LoadedTexture A reference to a texture that has been uploaded onto the graphics cards, if TextureId is not zero
---@param posX number
---@param posY number
---@param z? number
function IRenderAPI.Render2DLoadedTexture(textTexture, posX, posY, z) end

-- Renders a rectangle outline at given position
---@param posX number
---@param posY number
---@param posZ number
---@param width number
---@param height number
---@param color number
function IRenderAPI.RenderRectangle(posX, posY, posZ, width, height, color) end

-- Inefficiently renders a line between 2 points 
---@param origin BlockPos A useful data structure when operating with block postions. Valuable Hint: Make use of Copy() or the XXXCopy() variants where needed. A common pitfall is writing code like: BlockPos abovePos = pos.Up(); - with this code abovePos and pos will reference to the same object!
---@param posX1 number
---@param posY1 number
---@param posZ1 number
---@param posX2 number
---@param posY2 number
---@param posZ2 number
---@param color number
function IRenderAPI.RenderLine(origin, posX1, posY1, posZ1, posX2, posY2, posZ2, color) end

---@return Vec3f # Represents a vector of 3 floats. Go bug Tyron of you need more utility methods in this class.
function IRenderAPI.get_AmbientColor() end

---@return Vec4f
function IRenderAPI.get_FogColor() end

---@return number
function IRenderAPI.get_FogMin() end

---@return number
function IRenderAPI.get_FogDensity() end

-- Adds a dynamic light source to the scene. Will not be rendered if the current point light count exceeds max dynamic lights in the graphics settings
---@param pointlight IPointLight
function IRenderAPI.AddPointLight(pointlight) end

-- Removes a dynamic light source from the scene
---@param pointlight IPointLight
function IRenderAPI.RemovePointLight(pointlight) end


