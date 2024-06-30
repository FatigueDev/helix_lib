---@meta

---@class ClientPlatformWindows: ClientPlatformAbstract, ClientPlatformAbstract
---@field AvailableAudioDevices IList`1
---@field CurrentAudioDevice string
---@field AssetManager AssetManager
---@field Logger ILogger
---@field EllapsedMs number
---@field WindowSize Size2i
---@field ScreenSize Size2i
---@field WindowBorder EnumWindowBorder
---@field CpuCoreCount number
---@field IsFocused boolean
---@field DebugDrawCalls boolean
---@field FrameBuffers table
---@field IsServerRunning boolean
---@field IsGamePaused boolean
---@field CurrentFrameBuffer FrameBufferRef
---@field GlErrorChecking boolean
---@field GlDebugMode boolean
---@field GlScissorFlagEnabled boolean
---@field CurrentMouseCursor string
---@field MouseGrabbed boolean
---@field ShaderUniforms DefaultShaderUniforms
---@field MinimalGuiShader ShaderProgramMinimalGui
---@field DoPostProcessingEffects boolean
---@field XPlatInterface IXPlatformInterface
---@field IsShuttingDown boolean
---@field WindowResized WindowResizedDelegate
---@field gameexit GameExit
---@field SupportsThickLines boolean
---@field window GameWindowNative
---@field OnStartSinglePlayerServer function
---@field ServerExit GameExit
---@field singlePlayerServerLoaded boolean
---@field singlePlayerServerDummyNetwork DummyNetwork
---@field crashreporter CrashReporter
---@field keyEventHandlers table
---@field mouseEventHandlers table
---@field fileDropEventHandler function
---@field PixelPackBuffer GLBuffer[]
---@field sampleCount number
---@field CurrentPixelPackBufferNum number
---@field ENABLE_MIPMAPS boolean
---@field ENABLE_ANISOTROPICFILTERING boolean
---@field ENABLE_TRANSPARENCY boolean
---@field GLBuffer nil
---@field TCPNetworkConnection nil
ClientPlatformWindows = {}

---@param logger Logger
---@return ClientPlatformWindows
function ClientPlatformWindows.ctor(logger) end

function ClientPlatformWindows.StartAudio() end

function ClientPlatformWindows.AddAudioSettingsWatchers() end

function ClientPlatformWindows.StopAudio() end

---@return IList`1
function ClientPlatformWindows.get_AvailableAudioDevices() end

---@return string
function ClientPlatformWindows.get_CurrentAudioDevice() end

---@param value string
function ClientPlatformWindows.set_CurrentAudioDevice(value) end

---@param asset IAsset Represents a loaded asset from the assets folder
---@return AudioData
function ClientPlatformWindows.CreateAudioData(asset) end

---@param data AudioData
---@return boolean
function ClientPlatformWindows.IsAudioDataLoaded(data) end

---@param sound SoundParams The sound paramaters used for loading sounds on the client side
---@param data AudioData
---@return ILoadedSound # Represents a loaded game sound 
function ClientPlatformWindows.CreateAudio(sound, data) end

---@param posX number
---@param posY number
---@param posZ number
---@param orientX number
---@param orientY number
---@param orientZ number
function ClientPlatformWindows.UpdateAudioListener(posX, posY, posZ, orientX, orientY, orientZ) end

---@return AssetManager
function ClientPlatformWindows.get_AssetManager() end

---@return ILogger # Interface to the client's and server's event, debug and error logging utilty.
function ClientPlatformWindows.get_Logger() end

---@return string
function ClientPlatformWindows.GetGraphicsCardRenderer() end

function ClientPlatformWindows.LogAndTestHardwareInfosStage1() end

function ClientPlatformWindows.LogAndTestHardwareInfosStage2() end

---@return string
function ClientPlatformWindows.GetGraphicCardInfos() end

---@return string
function ClientPlatformWindows.GetFrameworkInfos() end

---@return boolean
function ClientPlatformWindows.IsExitAvailable() end

---@param width number
---@param height number
function ClientPlatformWindows.SetWindowSize(width, height) end

---@return number
function ClientPlatformWindows.get_EllapsedMs() end

---@param width number
---@param height number
---@return BitmapRef
function ClientPlatformWindows.CreateBitmap(width, height) end

---@param bmp BitmapRef
---@param pixels number
function ClientPlatformWindows.SetBitmapPixelsArgb(bmp, pixels) end

---@param asset IAsset Represents a loaded asset from the assets folder
---@return BitmapRef
function ClientPlatformWindows.CreateBitmapFromPng(asset) end

---@param data number
---@return BitmapRef
function ClientPlatformWindows.CreateBitmapFromPng(data) end

---@param data number
---@param dataLength number
---@return BitmapRef
function ClientPlatformWindows.CreateBitmapFromPng(data, dataLength) end

---@param pixels number
---@param width number
---@param height number
---@return BitmapRef
function ClientPlatformWindows.CreateBitmapFromPixels(pixels, width, height) end

---@return MonitorObject
function ClientPlatformWindows.CreateMonitor() end

---@param monitorObject MonitorObject
function ClientPlatformWindows.EnterMonitor(monitorObject) end

---@param monitorObject MonitorObject
function ClientPlatformWindows.ExitMonitor(monitorObject) end

---@param framerate number
---@param codec string
---@return IAviWriter
function ClientPlatformWindows.CreateAviWriter(framerate, codec) end

---@return AvailableCodec[]
function ClientPlatformWindows.GetAvailableCodecs() end

---@return string
function ClientPlatformWindows.GetGameVersion() end

---@param exit GameExit
function ClientPlatformWindows.SetServerExitInterface(exit) end

---@param iterations number
function ClientPlatformWindows.ThreadSpinWait(iterations) end

function ClientPlatformWindows.LoadAssets() end

---@return Size2i # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function ClientPlatformWindows.get_WindowSize() end

---@return Size2i # Represents a vector of 2 doubles. Go bug Tyron of you need more utility methods in this class.
function ClientPlatformWindows.get_ScreenSize() end

---@return EnumWindowBorder
function ClientPlatformWindows.get_WindowBorder() end

---@param value EnumWindowBorder
function ClientPlatformWindows.set_WindowBorder(value) end

function ClientPlatformWindows.Start() end

---@return number
function ClientPlatformWindows.get_CpuCoreCount() end

function ClientPlatformWindows.RebuildFrameBuffers() end

---@param enabled boolean
function ClientPlatformWindows.SetVSync(enabled) end

---@param enabled boolean
function ClientPlatformWindows.SetDirectMouseMode(enabled) end

---@param path? string
---@param filename? string
---@param withAlpha? boolean
---@param flip? boolean
---@param metaDataStr? string
---@return string
function ClientPlatformWindows.SaveScreenshot(path, filename, withAlpha, flip, metaDataStr) end

---@param withAlpha? boolean
---@param scale? boolean
---@return BitmapRef
function ClientPlatformWindows.GrabScreenshot(withAlpha, scale) end

---@param width number
---@param height number
---@param scaleScreenshot boolean
---@param flip boolean
---@param withAlpha? boolean
---@return BitmapRef
function ClientPlatformWindows.GrabScreenshot(width, height, scaleScreenshot, flip, withAlpha) end

---@param reason string
function ClientPlatformWindows.WindowExit(reason) end

---@param applicationname string
function ClientPlatformWindows.SetTitle(applicationname) end

---@return WindowState
function ClientPlatformWindows.GetWindowState() end

---@param value WindowState
function ClientPlatformWindows.SetWindowState(value) end

---@param attribute WindowAttribute
---@param value boolean
function ClientPlatformWindows.SetWindowAttribute(attribute, value) end

---@param serverargs StartServerArgs
function ClientPlatformWindows.StartSinglePlayerServer(serverargs) end

function ClientPlatformWindows.ExitSinglePlayerServer() end

---@return boolean
function ClientPlatformWindows.IsLoadedSinglePlayerServer() end

---@return DummyNetwork
function ClientPlatformWindows.GetSinglePlayerServerNetwork() end

---@return boolean
function ClientPlatformWindows.get_IsFocused() end

---@param handler function
function ClientPlatformWindows.SetFileDropHandler(handler) end

---@param handler OnFocusChanged
function ClientPlatformWindows.RegisterOnFocusChange(handler) end

---@param handler function
function ClientPlatformWindows.SetWindowClosedHandler(handler) end

---@param handler NewFrameHandler
function ClientPlatformWindows.SetFrameHandler(handler) end

---@param handler KeyEventHandler
function ClientPlatformWindows.RegisterKeyboardEvent(handler) end

---@param handler MouseEventHandler
function ClientPlatformWindows.RegisterMouseEvent(handler) end

---@param handler OnCrashHandler
function ClientPlatformWindows.AddOnCrash(handler) end

function ClientPlatformWindows.ClearOnCrash() end

---@return boolean
function ClientPlatformWindows.get_DebugDrawCalls() end

---@param value boolean
function ClientPlatformWindows.set_DebugDrawCalls(value) end

---@param modelRef MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
function ClientPlatformWindows.RenderMesh(modelRef) end

---@param modelRef MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
function ClientPlatformWindows.RenderFullscreenTriangle(modelRef) end

---@param modelRef MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
---@param indices number
---@param indicesSizes number
---@param groupCount number
function ClientPlatformWindows.RenderMesh(modelRef, indices, indicesSizes, groupCount) end

---@param modelRef MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
---@param quantity? number
function ClientPlatformWindows.RenderMeshInstanced(modelRef, quantity) end

---@return table
function ClientPlatformWindows.get_FrameBuffers() end

---@return boolean
function ClientPlatformWindows.get_IsServerRunning() end

---@param value boolean
function ClientPlatformWindows.set_IsServerRunning(value) end

---@param paused boolean
function ClientPlatformWindows.SetGamePausedState(paused) end

function ClientPlatformWindows.ResetGamePauseAndUptimeState() end

---@return boolean
function ClientPlatformWindows.get_IsGamePaused() end

---@param enable boolean
function ClientPlatformWindows.ToggleOffscreenBuffer(enable) end

---@param frameBuffer FrameBufferRef
---@param disposeTextures? boolean
function ClientPlatformWindows.DisposeFrameBuffer(frameBuffer, disposeTextures) end

---@param fbAttrs FramebufferAttrs
---@return FrameBufferRef
function ClientPlatformWindows.CreateFramebuffer(fbAttrs) end

---@return FrameBufferRef
function ClientPlatformWindows.get_CurrentFrameBuffer() end

---@param value FrameBufferRef
function ClientPlatformWindows.set_CurrentFrameBuffer(value) end

---@return table
function ClientPlatformWindows.SetupDefaultFrameBuffers() end

---@param buffers table
function ClientPlatformWindows.DisposeFrameBuffers(buffers) end

---@param framebuffer FrameBufferRef
---@param clearDepth? boolean
function ClientPlatformWindows.ClearFrameBuffer(framebuffer, clearDepth) end

---@param framebuffer FrameBufferRef
---@param clearColor number
---@param clearDepthBuffer? boolean
---@param clearColorBuffers? boolean
function ClientPlatformWindows.ClearFrameBuffer(framebuffer, clearColor, clearDepthBuffer, clearColorBuffers) end

---@param frameBuffer FrameBufferRef
---@param textureId number
function ClientPlatformWindows.LoadFrameBuffer(frameBuffer, textureId) end

---@param frameBuffer FrameBufferRef
function ClientPlatformWindows.LoadFrameBuffer(frameBuffer) end

---@param frameBuffer FrameBufferRef
function ClientPlatformWindows.UnloadFrameBuffer(frameBuffer) end

---@param framebuffer EnumFrameBuffer
function ClientPlatformWindows.ClearFrameBuffer(framebuffer) end

---@param framebuffer EnumFrameBuffer
function ClientPlatformWindows.LoadFrameBuffer(framebuffer) end

---@param framebuffer EnumFrameBuffer
function ClientPlatformWindows.UnloadFrameBuffer(framebuffer) end

function ClientPlatformWindows.MergeTransparentRenderPass() end

---@param projectMatrix number
function ClientPlatformWindows.RenderPostprocessingEffects(projectMatrix) end

function ClientPlatformWindows.RenderFinalComposition() end

function ClientPlatformWindows.BlitPrimaryToDefault() end

---@return boolean
function ClientPlatformWindows.get_GlErrorChecking() end

---@param value boolean
function ClientPlatformWindows.set_GlErrorChecking(value) end

---@return boolean
function ClientPlatformWindows.get_GlDebugMode() end

---@param value boolean
function ClientPlatformWindows.set_GlDebugMode(value) end

---@param errmsg? string
function ClientPlatformWindows.CheckGlError(errmsg) end

---@param errmsg? string
function ClientPlatformWindows.CheckGlErrorAlways(errmsg) end

---@return string
function ClientPlatformWindows.GlGetError() end

---@return string
function ClientPlatformWindows.GetGLShaderVersionString() end

---@param linear boolean
---@return number
function ClientPlatformWindows.GenSampler(linear) end

---@param toggle boolean
function ClientPlatformWindows.GLWireframes(toggle) end

---@param x number
---@param y number
---@param width number
---@param height number
function ClientPlatformWindows.GlViewport(x, y, width, height) end

---@param x number
---@param y number
---@param width number
---@param height number
function ClientPlatformWindows.GlScissor(x, y, width, height) end

---@return boolean
function ClientPlatformWindows.get_GlScissorFlagEnabled() end

---@param enable boolean
function ClientPlatformWindows.GlScissorFlag(enable) end

function ClientPlatformWindows.GlEnableDepthTest() end

function ClientPlatformWindows.GlDisableDepthTest() end

---@param texture number
function ClientPlatformWindows.BindTexture2d(texture) end

---@param texture number
function ClientPlatformWindows.BindTextureCubeMap(texture) end

function ClientPlatformWindows.UnBindTextureCubeMap() end

---@param on boolean
---@param blendMode? EnumBlendMode
function ClientPlatformWindows.GlToggleBlend(on, blendMode) end

function ClientPlatformWindows.GlDisableCullFace() end

function ClientPlatformWindows.GlEnableCullFace() end

---@param r number
---@param g number
---@param b number
---@param a number
function ClientPlatformWindows.GlClearColorRgbaf(r, g, b, a) end

---@param width number
function ClientPlatformWindows.GLLineWidth(width) end

---@param on boolean
function ClientPlatformWindows.SmoothLines(on) end

---@param flag boolean
function ClientPlatformWindows.GlDepthMask(flag) end

---@param depthFunc EnumDepthFunction
function ClientPlatformWindows.GlDepthFunc(depthFunc) end

function ClientPlatformWindows.GlCullFaceBack() end

function ClientPlatformWindows.GlGenerateTex2DMipmaps() end

---@param surface ImageSurface
---@param linearMag boolean
---@return number
function ClientPlatformWindows.LoadCairoTexture(surface, linearMag) end

---@param surface ImageSurface
---@param linearMag boolean
---@param intoTexture LoadedTexture&
function ClientPlatformWindows.LoadOrUpdateCairoTexture(surface, linearMag, intoTexture) end

---@param bmp SKBitmap
---@param linearMag? boolean
---@param clampMode? number
---@param generateMipmaps? boolean
---@return number
function ClientPlatformWindows.LoadTexture(bmp, linearMag, clampMode, generateMipmaps) end

---@param srcBmp IBitmap
---@param targetTextureId number
---@param destX number
---@param destY number
---@param generateMipmaps? boolean
function ClientPlatformWindows.LoadIntoTexture(srcBmp, targetTextureId, destX, destY, generateMipmaps) end

---@param bmp IBitmap
---@param linearMag? boolean
---@param clampMode? number
---@param generateMipmaps? boolean
---@return number
function ClientPlatformWindows.LoadTexture(bmp, linearMag, clampMode, generateMipmaps) end

---@param rgbaPixels number
---@param linearMag boolean
---@param clampMode number
---@param intoTexture LoadedTexture&
function ClientPlatformWindows.LoadOrUpdateTextureFromBgra_DeferMipMap(rgbaPixels, linearMag, clampMode, intoTexture) end

---@param rgbaPixels number
---@param linearMag boolean
---@param clampMode number
---@param intoTexture LoadedTexture&
function ClientPlatformWindows.LoadOrUpdateTextureFromBgra(rgbaPixels, linearMag, clampMode, intoTexture) end

---@param rgbaPixels number
---@param linearMag boolean
---@param clampMode number
---@param intoTexture LoadedTexture&
function ClientPlatformWindows.LoadOrUpdateTextureFromRgba(rgbaPixels, linearMag, clampMode, intoTexture) end

---@param textureId number
function ClientPlatformWindows.BuildMipMaps(textureId) end

---@param bmps BitmapRef[]
---@return number
function ClientPlatformWindows.Load3DTextureCube(bmps) end

---@param id number
function ClientPlatformWindows.GLDeleteTexture(id) end

---@return number
function ClientPlatformWindows.GlGetMaxTextureSize() end

---@param modelRef MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
---@param data MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
function ClientPlatformWindows.UpdateMesh(modelRef, data) end

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
function ClientPlatformWindows.AllocateEmptyMesh(xyzSize, normalsSize, uvSize, rgbaSize, flagsSize, indicesSize, customFloats, customShorts, customBytes, customInts, drawMode, staticDraw) end

---@param data MeshData A data structure that can be used to upload mesh information onto the graphics card Please note, all arrays are used as a buffer. They do not tightly fit the data but are always sized as a multiple of 2 from the initial size.
---@return MeshRef # A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
function ClientPlatformWindows.UploadMesh(data) end

---@param modelref MeshRef A reference to a mesh that's been uploaded onto the graphics card (i.e. that has been placed in an OpenGL VAO). This reference can be used for rendering it.
function ClientPlatformWindows.DeleteMesh(modelref) end

---@return string
function ClientPlatformWindows.get_CurrentMouseCursor() end

---@param cursorCoode string
---@param hotx number
---@param hoty number
---@param bmpRef BitmapRef
---@return boolean
function ClientPlatformWindows.LoadMouseCursor(cursorCoode, hotx, hoty, bmpRef) end

---@param cursorCode string
---@param forceUpdate? boolean
function ClientPlatformWindows.UseMouseCursor(cursorCode, forceUpdate) end

function ClientPlatformWindows.RestoreWindowCursor() end

---@return boolean
function ClientPlatformWindows.get_MouseGrabbed() end

---@param value boolean
function ClientPlatformWindows.set_MouseGrabbed(value) end

---@param button EnumMouseButton
---@return MouseEvent # This contains the data for what the mouse is currently doing.
function ClientPlatformWindows.CreateMouseEvent(button) end

---@return boolean
function ClientPlatformWindows.IsTcpAvailable() end

---@param host string
---@param port number
---@param OnConnectResult function
---@param OnDisconnected function
---@return INetworkConnection
function ClientPlatformWindows.GetTcpConnection(host, port, OnConnectResult, OnDisconnected) end

---@return DefaultShaderUniforms
function ClientPlatformWindows.get_ShaderUniforms() end

---@param value DefaultShaderUniforms
function ClientPlatformWindows.set_ShaderUniforms(value) end

---@return ShaderProgramMinimalGui
function ClientPlatformWindows.get_MinimalGuiShader() end

---@param program ShaderProgram
---@param name string
---@return number
function ClientPlatformWindows.GetUniformLocation(program, name) end

---@param shader Shader
---@return boolean
function ClientPlatformWindows.CompileShader(shader) end

---@param program ShaderProgram
---@return boolean
function ClientPlatformWindows.CreateShaderProgram(program) end

---@return boolean
function ClientPlatformWindows.get_DoPostProcessingEffects() end

---@param value boolean
function ClientPlatformWindows.set_DoPostProcessingEffects(value) end

---@return IXPlatformInterface # The platform interface for various controls.  Used by the game to handle various properties.
function ClientPlatformWindows.get_XPlatInterface() end

---@param value WindowResizedDelegate
function ClientPlatformWindows.add_WindowResized(value) end

---@param value WindowResizedDelegate
function ClientPlatformWindows.remove_WindowResized(value) end

---@param width number
---@param height number
function ClientPlatformWindows.TriggerWindowResized(width, height) end

---@return boolean
function ClientPlatformWindows.get_IsShuttingDown() end

---@param value boolean
function ClientPlatformWindows.set_IsShuttingDown(value) end

---@return userdata
function ClientPlatformWindows.GetType() end

---@return string
function ClientPlatformWindows.ToString() end

---@param obj userdata
---@return boolean
function ClientPlatformWindows.Equals(obj) end

---@return number
function ClientPlatformWindows.GetHashCode() end


