---@meta

---@class ClientPlatformAbstract
---@field DoPostProcessingEffects boolean
---@field ScreenSize Size2i
---@field WindowSize Size2i
---@field MinimalGuiShader ShaderProgramMinimalGui
---@field IsFocused boolean
---@field DebugDrawCalls boolean
---@field GlDebugMode boolean
---@field GlErrorChecking boolean
---@field AssetManager AssetManager
---@field Logger ILogger
---@field XPlatInterface IXPlatformInterface
---@field CpuCoreCount number
---@field WindowBorder EnumWindowBorder
---@field EllapsedMs number
---@field MouseGrabbed boolean
---@field CurrentMouseCursor string
---@field GlScissorFlagEnabled boolean
---@field AvailableAudioDevices IList`1
---@field CurrentAudioDevice string
---@field ShaderUniforms DefaultShaderUniforms
---@field FrameBuffers table
---@field IsServerRunning boolean
---@field IsGamePaused boolean
---@field IsShuttingDown boolean
---@field WindowResized WindowResizedDelegate
---@field OnFocusChanged nil
ClientPlatformAbstract = {}


---@return boolean
function ClientPlatformAbstract.get_DoPostProcessingEffects() end

---@param value boolean
function ClientPlatformAbstract.set_DoPostProcessingEffects(value) end

---@return Size2i # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function ClientPlatformAbstract.get_ScreenSize() end

---@return Size2i # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function ClientPlatformAbstract.get_WindowSize() end

---@return ShaderProgramMinimalGui
function ClientPlatformAbstract.get_MinimalGuiShader() end

---@return boolean
function ClientPlatformAbstract.get_IsFocused() end

---@return boolean
function ClientPlatformAbstract.get_DebugDrawCalls() end

---@param value boolean
function ClientPlatformAbstract.set_DebugDrawCalls(value) end

---@param enable boolean
function ClientPlatformAbstract.ToggleOffscreenBuffer(enable) end

---@param handler OnFocusChanged
function ClientPlatformAbstract.RegisterOnFocusChange(handler) end

---@return boolean
function ClientPlatformAbstract.get_GlDebugMode() end

---@param value boolean
function ClientPlatformAbstract.set_GlDebugMode(value) end

---@return boolean
function ClientPlatformAbstract.get_GlErrorChecking() end

---@param value boolean
function ClientPlatformAbstract.set_GlErrorChecking(value) end

---@param errmsg? string
function ClientPlatformAbstract.CheckGlError(errmsg) end

---@param errmsg? string
function ClientPlatformAbstract.CheckGlErrorAlways(errmsg) end

---@return string
function ClientPlatformAbstract.GlGetError() end

---@return AssetManager
function ClientPlatformAbstract.get_AssetManager() end

---@return ILogger # Interface to the client's and server's event, debug and error logging utilty.
function ClientPlatformAbstract.get_Logger() end

---@return IXPlatformInterface # The platform interface for various controls.  Used by the game to handle various properties.
function ClientPlatformAbstract.get_XPlatInterface() end

---@return string
function ClientPlatformAbstract.GetGraphicCardInfos() end

---@return number
function ClientPlatformAbstract.get_CpuCoreCount() end

---@return string
function ClientPlatformAbstract.GetFrameworkInfos() end

---@return boolean
function ClientPlatformAbstract.IsExitAvailable() end

---@param handler function
function ClientPlatformAbstract.SetWindowClosedHandler(handler) end

---@param handler NewFrameHandler
function ClientPlatformAbstract.SetFrameHandler(handler) end

---@param handler function
function ClientPlatformAbstract.SetFileDropHandler(handler) end

---@param handler KeyEventHandler
function ClientPlatformAbstract.RegisterKeyboardEvent(handler) end

---@param handler MouseEventHandler
function ClientPlatformAbstract.RegisterMouseEvent(handler) end

---@param asset IAsset Represents a loaded asset from the assets folder
---@return BitmapRef
function ClientPlatformAbstract.CreateBitmapFromPng(asset) end

---@param pixels number
---@param width number
---@param height number
---@return BitmapRef
function ClientPlatformAbstract.CreateBitmapFromPixels(pixels, width, height) end

---@param data number
---@return BitmapRef
function ClientPlatformAbstract.CreateBitmapFromPng(data) end

---@param data number
---@param dataLength number
---@return BitmapRef
function ClientPlatformAbstract.CreateBitmapFromPng(data, dataLength) end

---@param width number
---@param height number
---@return BitmapRef
function ClientPlatformAbstract.CreateBitmap(width, height) end

---@param bmp BitmapRef
---@param pixels number
function ClientPlatformAbstract.SetBitmapPixelsArgb(bmp, pixels) end

---@return EnumWindowBorder
function ClientPlatformAbstract.get_WindowBorder() end

---@param value EnumWindowBorder
function ClientPlatformAbstract.set_WindowBorder(value) end

---@return number
function ClientPlatformAbstract.get_EllapsedMs() end

---@return MonitorObject
function ClientPlatformAbstract.CreateMonitor() end

---@param monitorObject MonitorObject
function ClientPlatformAbstract.EnterMonitor(monitorObject) end

---@param monitorObject MonitorObject
function ClientPlatformAbstract.ExitMonitor(monitorObject) end

---@param path? string
---@param filename? string
---@param withAlpha? boolean
---@param flip? boolean
---@param metaDataStr? string
---@return string
function ClientPlatformAbstract.SaveScreenshot(path, filename, withAlpha, flip, metaDataStr) end

---@param withAlpha? boolean
---@param scale? boolean
---@return BitmapRef
function ClientPlatformAbstract.GrabScreenshot(withAlpha, scale) end

---@param width number
---@param height number
---@param scaleScreenshot boolean
---@param flip boolean
---@param withAlpha? boolean
---@return BitmapRef
function ClientPlatformAbstract.GrabScreenshot(width, height, scaleScreenshot, flip, withAlpha) end

---@param framerate number
---@param codec string
---@return IAviWriter
function ClientPlatformAbstract.CreateAviWriter(framerate, codec) end

---@return AvailableCodec[]
function ClientPlatformAbstract.GetAvailableCodecs() end

---@param enabled boolean
function ClientPlatformAbstract.SetVSync(enabled) end

---@param enabled boolean
function ClientPlatformAbstract.SetDirectMouseMode(enabled) end

---@return string
function ClientPlatformAbstract.GetGameVersion() end

---@param reason string
function ClientPlatformAbstract.WindowExit(reason) end

---@param value WindowResizedDelegate
function ClientPlatformAbstract.add_WindowResized(value) end

---@param value WindowResizedDelegate
function ClientPlatformAbstract.remove_WindowResized(value) end

---@param width number
---@param height number
function ClientPlatformAbstract.TriggerWindowResized(width, height) end

---@param applicationname string
function ClientPlatformAbstract.SetTitle(applicationname) end

---@param handler OnCrashHandler
function ClientPlatformAbstract.AddOnCrash(handler) end

function ClientPlatformAbstract.ClearOnCrash() end

---@return WindowState
function ClientPlatformAbstract.GetWindowState() end

---@param value WindowState
function ClientPlatformAbstract.SetWindowState(value) end

---@param attribute WindowAttribute
---@param value boolean
function ClientPlatformAbstract.SetWindowAttribute(attribute, value) end

---@param iterations number
function ClientPlatformAbstract.ThreadSpinWait(iterations) end

---@return boolean
function ClientPlatformAbstract.get_MouseGrabbed() end

---@param value boolean
function ClientPlatformAbstract.set_MouseGrabbed(value) end

function ClientPlatformAbstract.LoadAssets() end

---@param linear boolean
---@return number
function ClientPlatformAbstract.GenSampler(linear) end

---@param cursorCode string
---@param hotx number
---@param hoty number
---@param bmp BitmapRef
---@return boolean
function ClientPlatformAbstract.LoadMouseCursor(cursorCode, hotx, hoty, bmp) end

---@param cursorCode string
---@param forceUpdate? boolean
function ClientPlatformAbstract.UseMouseCursor(cursorCode, forceUpdate) end

---@return string
function ClientPlatformAbstract.get_CurrentMouseCursor() end

---@param button EnumMouseButton
---@return MouseEvent # This contains the data for what the mouse is currently doing.
function ClientPlatformAbstract.CreateMouseEvent(button) end

function ClientPlatformAbstract.RestoreWindowCursor() end

---@param width number
---@param height number
function ClientPlatformAbstract.SetWindowSize(width, height) end

---@param asset IAsset Represents a loaded asset from the assets folder
---@return AudioData
function ClientPlatformAbstract.CreateAudioData(asset) end

---@param sound SoundParams The sound paramaters used for loading sounds on the client side
---@param data AudioData
---@return ILoadedSound # Represents a loaded game sound 
function ClientPlatformAbstract.CreateAudio(sound, data) end

---@param data AudioData
---@return boolean
function ClientPlatformAbstract.IsAudioDataLoaded(data) end

---@param posX number
---@param posY number
---@param posZ number
---@param orientX number
---@param orientY number
---@param orientZ number
function ClientPlatformAbstract.UpdateAudioListener(posX, posY, posZ, orientX, orientY, orientZ) end

function ClientPlatformAbstract.AddAudioSettingsWatchers() end

---@return boolean
function ClientPlatformAbstract.IsTcpAvailable() end

---@param ip string
---@param port number
---@param OnConnectResult function
---@param OnDisconnected function
---@return INetworkConnection
function ClientPlatformAbstract.GetTcpConnection(ip, port, OnConnectResult, OnDisconnected) end

---@return string
function ClientPlatformAbstract.GetGLShaderVersionString() end

---@param toggle boolean
function ClientPlatformAbstract.GLWireframes(toggle) end

---@param x number
---@param y number
---@param width number
---@param height number
function ClientPlatformAbstract.GlViewport(x, y, width, height) end

---@param x number
---@param y number
---@param width number
---@param height number
function ClientPlatformAbstract.GlScissor(x, y, width, height) end

---@param enable boolean
function ClientPlatformAbstract.GlScissorFlag(enable) end

---@return boolean
function ClientPlatformAbstract.get_GlScissorFlagEnabled() end

function ClientPlatformAbstract.GlDisableDepthTest() end

---@param r number
---@param g number
---@param b number
---@param a number
function ClientPlatformAbstract.GlClearColorRgbaf(r, g, b, a) end

function ClientPlatformAbstract.GlEnableDepthTest() end

function ClientPlatformAbstract.GlDisableCullFace() end

function ClientPlatformAbstract.GlEnableCullFace() end

function ClientPlatformAbstract.GlGenerateTex2DMipmaps() end

---@param width number
function ClientPlatformAbstract.GLLineWidth(width) end

---@param on boolean
function ClientPlatformAbstract.SmoothLines(on) end

---@param flag boolean
function ClientPlatformAbstract.GlDepthMask(flag) end

---@param depthFunc EnumDepthFunction
function ClientPlatformAbstract.GlDepthFunc(depthFunc) end

function ClientPlatformAbstract.GlCullFaceBack() end

---@param on boolean
---@param blendMode? EnumBlendMode
function ClientPlatformAbstract.GlToggleBlend(on, blendMode) end

---@return IList`1
function ClientPlatformAbstract.get_AvailableAudioDevices() end

---@return string
function ClientPlatformAbstract.get_CurrentAudioDevice() end

---@param value string
function ClientPlatformAbstract.set_CurrentAudioDevice(value) end

---@param meshRef MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
---@param updatedata MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function ClientPlatformAbstract.UpdateMesh(meshRef, updatedata) end

---@param data MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@return MeshRef # A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
function ClientPlatformAbstract.UploadMesh(data) end

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
function ClientPlatformAbstract.AllocateEmptyMesh(xyzSize, normalsSize, uvSize, rgbaSize, flagsSize, indicesSize, customFloats, customShorts, customBytes, customInts, drawMode, staticDraw) end

---@param vao MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
function ClientPlatformAbstract.RenderMesh(vao) end

---@param meshRef MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
---@param indicesStarts number
---@param indicesSizes number
---@param groupCount number
function ClientPlatformAbstract.RenderMesh(meshRef, indicesStarts, indicesSizes, groupCount) end

---@param vao MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
function ClientPlatformAbstract.DeleteMesh(vao) end

---@param meshRef MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
---@param quantity? number
function ClientPlatformAbstract.RenderMeshInstanced(meshRef, quantity) end

---@param id number
function ClientPlatformAbstract.GLDeleteTexture(id) end

---@return number
function ClientPlatformAbstract.GlGetMaxTextureSize() end

---@param texture number
function ClientPlatformAbstract.BindTexture2d(texture) end

---@param texture number
function ClientPlatformAbstract.BindTextureCubeMap(texture) end

function ClientPlatformAbstract.UnBindTextureCubeMap() end

---@param rgbaPixels number
---@param linearMag boolean
---@param clampMode number
---@param intoTexture LoadedTexture&
function ClientPlatformAbstract.LoadOrUpdateTextureFromBgra(rgbaPixels, linearMag, clampMode, intoTexture) end

---@param rgbaPixels number
---@param linearMag boolean
---@param clampMode number
---@param intoTexture LoadedTexture&
function ClientPlatformAbstract.LoadOrUpdateTextureFromRgba(rgbaPixels, linearMag, clampMode, intoTexture) end

---@param rgbaPixels number
---@param linearMag boolean
---@param clampMode number
---@param intoTexture LoadedTexture&
function ClientPlatformAbstract.LoadOrUpdateTextureFromBgra_DeferMipMap(rgbaPixels, linearMag, clampMode, intoTexture) end

---@param srcBmp IBitmap
---@param targetTexture number
---@param destX number
---@param destY number
---@param generateMipmaps? boolean
function ClientPlatformAbstract.LoadIntoTexture(srcBmp, targetTexture, destX, destY, generateMipmaps) end

---@param textureId number
function ClientPlatformAbstract.BuildMipMaps(textureId) end

---@param skBitmap SKBitmap
---@param linearMag? boolean
---@param clampMode? number
---@param generateMipmaps? boolean
---@return number
function ClientPlatformAbstract.LoadTexture(skBitmap, linearMag, clampMode, generateMipmaps) end

---@param bmp IBitmap
---@param linearMag? boolean
---@param clampMode? number
---@param generateMipmaps? boolean
---@return number
function ClientPlatformAbstract.LoadTexture(bmp, linearMag, clampMode, generateMipmaps) end

---@param bmps BitmapRef[]
---@return number
function ClientPlatformAbstract.Load3DTextureCube(bmps) end

---@param surface ImageSurface
---@param linearMag boolean
---@return number
function ClientPlatformAbstract.LoadCairoTexture(surface, linearMag) end

---@param surface ImageSurface
---@param linearMag boolean
---@param intoTexture LoadedTexture&
function ClientPlatformAbstract.LoadOrUpdateCairoTexture(surface, linearMag, intoTexture) end

---@return DefaultShaderUniforms
function ClientPlatformAbstract.get_ShaderUniforms() end

---@param value DefaultShaderUniforms
function ClientPlatformAbstract.set_ShaderUniforms(value) end

---@param program ShaderProgram
---@param name string
---@return number
function ClientPlatformAbstract.GetUniformLocation(program, name) end

---@param shader Shader
---@return boolean
function ClientPlatformAbstract.CompileShader(shader) end

---@param shaderprogram ShaderProgram
---@return boolean
function ClientPlatformAbstract.CreateShaderProgram(shaderprogram) end

---@param framebuffer EnumFrameBuffer
function ClientPlatformAbstract.ClearFrameBuffer(framebuffer) end

---@param framebuffer FrameBufferRef
---@param clearColor number
---@param clearDepthBuffer? boolean
---@param clearColorBuffers? boolean
function ClientPlatformAbstract.ClearFrameBuffer(framebuffer, clearColor, clearDepthBuffer, clearColorBuffers) end

---@param framebuffer EnumFrameBuffer
function ClientPlatformAbstract.LoadFrameBuffer(framebuffer) end

---@param framebuffer EnumFrameBuffer
function ClientPlatformAbstract.UnloadFrameBuffer(framebuffer) end

function ClientPlatformAbstract.RebuildFrameBuffers() end

---@param framebuffer FramebufferAttrs
---@return FrameBufferRef
function ClientPlatformAbstract.CreateFramebuffer(framebuffer) end

---@param frameBuffer FrameBufferRef
---@param disposeTextures? boolean
function ClientPlatformAbstract.DisposeFrameBuffer(frameBuffer, disposeTextures) end

---@param frameBuffer FrameBufferRef
---@param clearDepth? boolean
function ClientPlatformAbstract.ClearFrameBuffer(frameBuffer, clearDepth) end

---@param frameBuffer FrameBufferRef
function ClientPlatformAbstract.LoadFrameBuffer(frameBuffer) end

---@param frameBuffer FrameBufferRef
---@param textureId number
function ClientPlatformAbstract.LoadFrameBuffer(frameBuffer, textureId) end

---@param frameBuffer FrameBufferRef
function ClientPlatformAbstract.UnloadFrameBuffer(frameBuffer) end

function ClientPlatformAbstract.MergeTransparentRenderPass() end

---@param projectMatrix number
function ClientPlatformAbstract.RenderPostprocessingEffects(projectMatrix) end

function ClientPlatformAbstract.RenderFinalComposition() end

function ClientPlatformAbstract.BlitPrimaryToDefault() end

---@return table
function ClientPlatformAbstract.get_FrameBuffers() end

---@param serverargs StartServerArgs
function ClientPlatformAbstract.StartSinglePlayerServer(serverargs) end

function ClientPlatformAbstract.ExitSinglePlayerServer() end

---@return boolean
function ClientPlatformAbstract.IsLoadedSinglePlayerServer() end

---@return boolean
function ClientPlatformAbstract.get_IsServerRunning() end

---@param value boolean
function ClientPlatformAbstract.set_IsServerRunning(value) end

---@param paused boolean
function ClientPlatformAbstract.SetGamePausedState(paused) end

function ClientPlatformAbstract.ResetGamePauseAndUptimeState() end

---@return boolean
function ClientPlatformAbstract.get_IsGamePaused() end

---@return boolean
function ClientPlatformAbstract.get_IsShuttingDown() end

---@param value boolean
function ClientPlatformAbstract.set_IsShuttingDown(value) end

---@return DummyNetwork
function ClientPlatformAbstract.GetSinglePlayerServerNetwork() end

---@return userdata
function ClientPlatformAbstract.GetType() end

---@return string
function ClientPlatformAbstract.ToString() end

---@param obj userdata
---@return boolean
function ClientPlatformAbstract.Equals(obj) end

---@return number
function ClientPlatformAbstract.GetHashCode() end


